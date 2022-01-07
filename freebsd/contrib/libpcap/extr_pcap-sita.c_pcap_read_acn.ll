; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_pcap_read_acn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_pcap_read_acn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i64, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32 (i8*, %struct.pcap_pkthdr*, i8*)*, i8*)* @pcap_read_acn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_acn(%struct.TYPE_8__* %0, i32 %1, i32 (i8*, %struct.pcap_pkthdr*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, %struct.pcap_pkthdr*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.pcap_pkthdr, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, %struct.pcap_pkthdr*, i8*)* %2, i32 (i8*, %struct.pcap_pkthdr*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @acn_start_monitor(i32 %14, i32 %17, i32 %21, i32 %25, i32 %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = call i32 @acn_read_n_bytes_with_timeout(%struct.TYPE_8__* %33, i32 16)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

37:                                               ; preds = %4
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 16
  %41 = call i8* @ntohl(i32 %40)
  %42 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 4
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @ntohl(i32 %46)
  %48 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ntohl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 12
  %57 = bitcast i8* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ntohl(i32 %58)
  %60 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @acn_read_n_bytes_with_timeout(%struct.TYPE_8__* %72, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %85

78:                                               ; preds = %37
  %79 = load i32 (i8*, %struct.pcap_pkthdr*, i8*)*, i32 (i8*, %struct.pcap_pkthdr*, i8*)** %8, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 %79(i8* %80, %struct.pcap_pkthdr* %11, i8* %83)
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %78, %77, %36
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @acn_start_monitor(i32, i32, i32, i32, i32) #1

declare dso_local i32 @acn_read_n_bytes_with_timeout(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
