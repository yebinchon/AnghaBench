; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcStats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-tc.c_TcStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32, i32*)*, i64 (i32, i32, i64*)*, i32 (i64)* }
%struct.TYPE_4__ = type { i32, %struct.pcap_tc* }
%struct.pcap_tc = type { i32, i32 }
%struct.pcap_stat = type { i32, i32, i32, i32 }

@g_TcFunctions = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TC_SUCCESS = common dso_local global i64 0, align 8
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"TurboCap error in TcInstanceQueryStatistics: %s (%08x)\00", align 1
@TC_COUNTER_INSTANCE_TOTAL_RX_PACKETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"TurboCap error in TcStatisticsQueryValue: %s (%08x)\00", align 1
@TC_COUNTER_INSTANCE_RX_DROPPED_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.pcap_stat*)* @TcStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TcStats(%struct.TYPE_4__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.pcap_tc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcap_stat, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.pcap_tc*, %struct.pcap_tc** %12, align 8
  store %struct.pcap_tc* %13, %struct.pcap_tc** %6, align 8
  %14 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 0), align 8
  %15 = load %struct.pcap_tc*, %struct.pcap_tc** %6, align 8
  %16 = getelementptr inbounds %struct.pcap_tc, %struct.pcap_tc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 %14(i32 %17, i32* %7)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @TC_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %27 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 2), align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 %27(i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @pcap_snprintf(i32 %25, i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30)
  store i32 -1, i32* %3, align 4
  br label %98

32:                                               ; preds = %2
  %33 = call i32 @memset(%struct.pcap_stat* %10, i32 0, i32 16)
  %34 = load i64 (i32, i32, i64*)*, i64 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 1), align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TC_COUNTER_INSTANCE_TOTAL_RX_PACKETS, align 4
  %37 = call i64 %34(i32 %35, i32 %36, i64* %9)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @TC_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %46 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 2), align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 %46(i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @pcap_snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %48, i64 %49)
  store i32 -1, i32* %3, align 4
  br label %98

51:                                               ; preds = %32
  %52 = load i64, i64* %9, align 8
  %53 = icmp sle i64 %52, 4294967295
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  br label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 0
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i64 (i32, i32, i64*)*, i64 (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 1), align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TC_COUNTER_INSTANCE_RX_DROPPED_PACKETS, align 4
  %65 = call i64 %62(i32 %63, i32 %64, i64* %9)
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @TC_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %74 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_TcFunctions, i32 0, i32 2), align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 %74(i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @pcap_snprintf(i32 %72, i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %76, i64 %77)
  store i32 -1, i32* %3, align 4
  br label %98

79:                                               ; preds = %61
  %80 = load i64, i64* %9, align 8
  %81 = icmp sle i64 %80, 4294967295
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = ptrtoint i8* %84 to i32
  %86 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* %9, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 1
  store i32 -1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %10, i32 0, i32 2
  store i32 -1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %96 = bitcast %struct.pcap_stat* %95 to i8*
  %97 = bitcast %struct.pcap_stat* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %69, %41, %22
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32, i64) #1

declare dso_local i32 @memset(%struct.pcap_stat*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
