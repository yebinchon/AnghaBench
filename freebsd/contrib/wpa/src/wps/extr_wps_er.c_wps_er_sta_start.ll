; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_sta_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_sta = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wps_config = type { i32, %struct.TYPE_12__*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WSC_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_sta*, %struct.wpabuf*)* @wps_er_sta_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_sta_start(%struct.wps_er_sta* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_sta*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_config, align 8
  store %struct.wps_er_sta* %0, %struct.wps_er_sta** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %7 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %12 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = call i32 @wps_deinit(%struct.TYPE_11__* %13)
  br label %15

15:                                               ; preds = %10, %2
  %16 = call i32 @os_memset(%struct.wps_config* %5, i32 0, i32 24)
  %17 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %18 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %17, i32 0, i32 3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %27 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %26, i32 0, i32 2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.wps_config, %struct.wps_config* %5, i32 0, i32 1
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %29, align 8
  %30 = call %struct.TYPE_11__* @wps_init(%struct.wps_config* %5)
  %31 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %32 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %31, i32 0, i32 1
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %32, align 8
  %33 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %34 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = icmp eq %struct.TYPE_11__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %107

38:                                               ; preds = %15
  %39 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %40 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %44 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %49 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %51, align 8
  %52 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %53 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %52, i32 0, i32 3
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %102

58:                                               ; preds = %38
  %59 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %60 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i32 @os_free(%struct.TYPE_12__* %61)
  %63 = call %struct.TYPE_12__* @os_malloc(i32 16)
  %64 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %65 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %64, i32 0, i32 0
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %65, align 8
  %66 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %67 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = icmp ne %struct.TYPE_12__* %68, null
  br i1 %69, label %70, label %101

70:                                               ; preds = %58
  %71 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %72 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %75 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %74, i32 0, i32 3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = call i32 @os_memcpy(%struct.TYPE_12__* %73, %struct.TYPE_12__* %78, i32 16)
  %80 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %81 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %85 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %90 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %89, i32 0, i32 2
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load i32, i32* @ETH_ALEN, align 4
  %93 = call i32 @os_memcpy(%struct.TYPE_12__* %88, %struct.TYPE_12__* %91, i32 %92)
  %94 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %95 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %98 = getelementptr inbounds %struct.wps_er_sta, %struct.wps_er_sta* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %100, align 8
  br label %101

101:                                              ; preds = %70, %58
  br label %102

102:                                              ; preds = %101, %38
  %103 = load %struct.wps_er_sta*, %struct.wps_er_sta** %3, align 8
  %104 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %105 = load i32, i32* @WSC_MSG, align 4
  %106 = call i32 @wps_er_sta_process(%struct.wps_er_sta* %103, %struct.wpabuf* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %37
  ret void
}

declare dso_local i32 @wps_deinit(%struct.TYPE_11__*) #1

declare dso_local i32 @os_memset(%struct.wps_config*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @wps_init(%struct.wps_config*) #1

declare dso_local i32 @os_free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @wps_er_sta_process(%struct.wps_er_sta*, %struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
