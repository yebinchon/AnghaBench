; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_free_service_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_free_service_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%d: fsi - (%d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: fsi - (%d) in state %s\00", align 1
@srvstate_names = common dso_local global i32* null, align 8
@VCHIQ_SRVSTATE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vchiq_free_service_internal(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @vchiq_core_log_level, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vchiq_log_info(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %19 [
    i32 128, label %18
    i32 132, label %18
    i32 130, label %18
    i32 129, label %18
    i32 131, label %18
  ]

18:                                               ; preds = %1, %1, %1, %1, %1
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @vchiq_core_log_level, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** @srvstate_names, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vchiq_log_error(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %33)
  br label %44

35:                                               ; preds = %18
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i32, i32* @VCHIQ_SRVSTATE_FREE, align 4
  %38 = call i32 @vchiq_set_service_state(%struct.TYPE_7__* %36, i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = call i32 @up(i32* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = call i32 @unlock_service(%struct.TYPE_7__* %42)
  br label %44

44:                                               ; preds = %35, %19
  ret void
}

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vchiq_set_service_state(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @unlock_service(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
