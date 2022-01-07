; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_dump_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_pflogd.c_dump_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.pcap_sf_pkthdr = type { i32, i32, %struct.TYPE_2__ }

@cur_snaplen = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"invalid size %u (%u/%u), packet dropped\00", align 1
@snaplen = common dso_local global i32 0, align 4
@packets_dropped = common dso_local global i32 0, align 4
@bufleft = common dso_local global i64 0, align 8
@suspended = common dso_local global i64 0, align 8
@bufpos = common dso_local global i64 0, align 8
@bufpkt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_packet(%struct.pcap_sf_pkthdr* %0, %struct.pcap_pkthdr* %1, %struct.pcap_sf_pkthdr* %2) #0 {
  %4 = alloca %struct.pcap_sf_pkthdr*, align 8
  %5 = alloca %struct.pcap_pkthdr*, align 8
  %6 = alloca %struct.pcap_sf_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.pcap_sf_pkthdr* %0, %struct.pcap_sf_pkthdr** %4, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %5, align 8
  store %struct.pcap_sf_pkthdr* %2, %struct.pcap_sf_pkthdr** %6, align 8
  %9 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %4, align 8
  %10 = bitcast %struct.pcap_sf_pkthdr* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 24, %14
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %16, 24
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %20 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @cur_snaplen, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @LOG_NOTICE, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @cur_snaplen, align 8
  %29 = load i32, i32* @snaplen, align 4
  %30 = call i32 @logmsg(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28, i32 %29)
  %31 = load i32, i32* @packets_dropped, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @packets_dropped, align 4
  br label %82

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @bufleft, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %62

38:                                               ; preds = %33
  %39 = load i64, i64* @suspended, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @packets_dropped, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @packets_dropped, align 4
  br label %82

44:                                               ; preds = %38
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @flush_buffer(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @packets_dropped, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @packets_dropped, align 4
  br label %82

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @bufleft, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %4, align 8
  %57 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %58 = bitcast %struct.pcap_pkthdr* %57 to %struct.pcap_sf_pkthdr*
  %59 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %6, align 8
  %60 = call i32 @dump_packet_nobuf(%struct.pcap_sf_pkthdr* %56, %struct.pcap_sf_pkthdr* %58, %struct.pcap_sf_pkthdr* %59)
  br label %82

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i64, i64* @bufpos, align 8
  %64 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %65 = bitcast %struct.pcap_pkthdr* %64 to %struct.pcap_sf_pkthdr*
  %66 = call i32 @memcpy(i64 %63, %struct.pcap_sf_pkthdr* %65, i32 24)
  %67 = load i64, i64* @bufpos, align 8
  %68 = add i64 %67, 24
  %69 = load %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr** %6, align 8
  %70 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %5, align 8
  %71 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(i64 %68, %struct.pcap_sf_pkthdr* %69, i32 %72)
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @bufpos, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* @bufpos, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @bufleft, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* @bufleft, align 8
  %80 = load i32, i32* @bufpkt, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @bufpkt, align 4
  br label %82

82:                                               ; preds = %62, %55, %48, %41, %25
  ret void
}

declare dso_local i32 @logmsg(i32, i8*, i64, i64, i32) #1

declare dso_local i64 @flush_buffer(i32*) #1

declare dso_local i32 @dump_packet_nobuf(%struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr*, %struct.pcap_sf_pkthdr*) #1

declare dso_local i32 @memcpy(i64, %struct.pcap_sf_pkthdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
