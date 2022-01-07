; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_stats_rpcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_stats_rpcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32, i32, i32, i32, i32 }
%struct.pcap_stat = type { i8*, i32, i32, i8*, i8*, i8* }
%struct.rpcap_header = type { i32 }
%struct.rpcap_stats = type { i32, i32, i32, i32 }

@PCAP_STATS_STANDARD = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid stats mode %d\00", align 1
@RPCAP_MSG_STATS_REQ = common dso_local global i32 0, align 4
@PCAP_STATS_EX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcap_stat* (%struct.TYPE_3__*, %struct.pcap_stat*, i32)* @rpcap_stats_rpcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcap_stat* @rpcap_stats_rpcap(%struct.TYPE_3__* %0, %struct.pcap_stat* %1, i32 %2) #0 {
  %4 = alloca %struct.pcap_stat*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.pcap_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pcap_rpcap*, align 8
  %9 = alloca %struct.rpcap_header, align 4
  %10 = alloca %struct.rpcap_stats, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %13, align 8
  store %struct.pcap_rpcap* %14, %struct.pcap_rpcap** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PCAP_STATS_STANDARD, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pcap_snprintf(i32* %21, i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  store %struct.pcap_stat* null, %struct.pcap_stat** %4, align 8
  br label %116

25:                                               ; preds = %3
  %26 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %27 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %32 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %31, i32 0, i32 5
  store i8* null, i8** %32, align 8
  %33 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %34 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %33, i32 0, i32 4
  store i8* null, i8** %34, align 8
  %35 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %36 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %35, i32 0, i32 3
  store i8* null, i8** %36, align 8
  %37 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  store %struct.pcap_stat* %37, %struct.pcap_stat** %4, align 8
  br label %116

38:                                               ; preds = %25
  %39 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %40 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RPCAP_MSG_STATS_REQ, align 4
  %43 = call i32 @rpcap_createhdr(%struct.rpcap_header* %9, i32 %41, i32 %42, i32 0, i32 0)
  %44 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %45 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %struct.rpcap_header* %9 to i8*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %52 = call i64 @sock_send(i32 %46, i8* %47, i32 4, i32* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store %struct.pcap_stat* null, %struct.pcap_stat** %4, align 8
  br label %116

55:                                               ; preds = %38
  %56 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %57 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %60 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RPCAP_MSG_STATS_REQ, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @rpcap_process_msg_header(i32 %58, i32 %61, i32 %62, %struct.rpcap_header* %9, i32* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store %struct.pcap_stat* null, %struct.pcap_stat** %4, align 8
  br label %116

69:                                               ; preds = %55
  %70 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %73 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = bitcast %struct.rpcap_stats* %10 to i8*
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @rpcap_recv(i32 %74, i8* %75, i32 16, i32* %11, i32* %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %110

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.rpcap_stats, %struct.rpcap_stats* %10, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @ntohl(i32 %84)
  %86 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %87 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = getelementptr inbounds %struct.rpcap_stats, %struct.rpcap_stats* %10, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ntohl(i32 %89)
  %91 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %92 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = getelementptr inbounds %struct.rpcap_stats, %struct.rpcap_stats* %10, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @ntohl(i32 %94)
  %96 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  %97 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %99 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @rpcap_discard(i32 %100, i32 %101, i32* %104)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %82
  br label %110

108:                                              ; preds = %82
  %109 = load %struct.pcap_stat*, %struct.pcap_stat** %6, align 8
  store %struct.pcap_stat* %109, %struct.pcap_stat** %4, align 8
  br label %116

110:                                              ; preds = %107, %81
  %111 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %8, align 8
  %112 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @rpcap_discard(i32 %113, i32 %114, i32* null)
  store %struct.pcap_stat* null, %struct.pcap_stat** %4, align 8
  br label %116

116:                                              ; preds = %110, %108, %68, %54, %30, %18
  %117 = load %struct.pcap_stat*, %struct.pcap_stat** %4, align 8
  ret %struct.pcap_stat* %117
}

declare dso_local i32 @pcap_snprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #1

declare dso_local i64 @sock_send(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @rpcap_process_msg_header(i32, i32, i32, %struct.rpcap_header*, i32*) #1

declare dso_local i32 @rpcap_recv(i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @rpcap_discard(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
