; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_stats_dos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_pcap_stats_dos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.pcap_dos*, i32, i32 }
%struct.pcap_dos = type { %struct.pcap_stat }
%struct.pcap_stat = type { i64, i32, i32 }
%struct.net_device_stats = type { i64, i64, i64, i32 }
%struct.device = type { %struct.net_device_stats* (%struct.device*)* }

@.str = private unnamed_addr constant [20 x i8] c"illegal pcap handle\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"device statistics not available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.pcap_stat*)* @pcap_stats_dos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_stats_dos(%struct.TYPE_3__* %0, %struct.pcap_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.pcap_stat*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.pcap_dos*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.pcap_stat* %1, %struct.pcap_stat** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @get_device(i32 %14)
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi %struct.device* [ %15, %11 ], [ null, %16 ]
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %83

26:                                               ; preds = %17
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load %struct.net_device_stats* (%struct.device*)*, %struct.net_device_stats* (%struct.device*)** %28, align 8
  %30 = icmp ne %struct.net_device_stats* (%struct.device*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.net_device_stats* (%struct.device*)*, %struct.net_device_stats* (%struct.device*)** %33, align 8
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call %struct.net_device_stats* %34(%struct.device* %35)
  store %struct.net_device_stats* %36, %struct.net_device_stats** %6, align 8
  %37 = icmp eq %struct.net_device_stats* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %83

43:                                               ; preds = %31
  %44 = call i32 (...) @FLUSHK()
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.pcap_dos*, %struct.pcap_dos** %46, align 8
  store %struct.pcap_dos* %47, %struct.pcap_dos** %7, align 8
  %48 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %49 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pcap_dos*, %struct.pcap_dos** %7, align 8
  %52 = getelementptr inbounds %struct.pcap_dos, %struct.pcap_dos* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pcap_dos*, %struct.pcap_dos** %7, align 8
  %58 = getelementptr inbounds %struct.pcap_dos, %struct.pcap_dos* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.pcap_dos*, %struct.pcap_dos** %7, align 8
  %72 = getelementptr inbounds %struct.pcap_dos, %struct.pcap_dos* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.pcap_stat, %struct.pcap_stat* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %75 = icmp ne %struct.pcap_stat* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %43
  %77 = load %struct.pcap_stat*, %struct.pcap_stat** %5, align 8
  %78 = load %struct.pcap_dos*, %struct.pcap_dos** %7, align 8
  %79 = getelementptr inbounds %struct.pcap_dos, %struct.pcap_dos* %78, i32 0, i32 0
  %80 = bitcast %struct.pcap_stat* %77 to i8*
  %81 = bitcast %struct.pcap_stat* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  br label %82

82:                                               ; preds = %76, %43
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %38, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.device* @get_device(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @FLUSHK(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
