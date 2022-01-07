; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_core.c_vchiq_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i8* }

@VCHIQ_MAX_MSG_SIZE = common dso_local global i8* null, align 8
@VCHIQ_NUM_SERVICE_BULKS = common dso_local global i32 0, align 4
@VCHIQ_MAX_SERVICES = common dso_local global i32 0, align 4
@VCHIQ_VERSION = common dso_local global i32 0, align 4
@VCHIQ_VERSION_MIN = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchiq_get_config(i32 %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** @VCHIQ_MAX_MSG_SIZE, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** @VCHIQ_MAX_MSG_SIZE, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @VCHIQ_NUM_SERVICE_BULKS, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @VCHIQ_MAX_SERVICES, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @VCHIQ_VERSION, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @VCHIQ_VERSION_MIN, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 32
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @min(i32 %29, i32 32)
  %31 = call i32 @memcpy(%struct.TYPE_5__* %28, %struct.TYPE_5__* %8, i32 %30)
  %32 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
