; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_peer_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_peer_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i16 }

@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_get_peer_version(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i16* %1, i16** %4, align 8
  %7 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.TYPE_5__* @find_service_by_handle(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = call i64 @vchiq_check_service(%struct.TYPE_5__* %13)
  %15 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i16*, i16** %4, align 8
  %19 = icmp ne i16* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %12, %2
  br label %27

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i16, i16* %23, align 2
  %25 = load i16*, i16** %4, align 8
  store i16 %24, i16* %25, align 2
  %26 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %21, %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = call i32 @unlock_service(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local %struct.TYPE_5__* @find_service_by_handle(i32) #1

declare dso_local i64 @vchiq_check_service(%struct.TYPE_5__*) #1

declare dso_local i32 @unlock_service(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
