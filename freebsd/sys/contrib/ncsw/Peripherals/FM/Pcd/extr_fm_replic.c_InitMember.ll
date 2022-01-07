; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_InitMember.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_replic.c_InitMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@MAJOR = common dso_local global i32 0, align 4
@E_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Available member\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_12__*, %struct.TYPE_13__*, i32)* @InitMember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @InitMember(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = call i32 @ASSERT_COND(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = call %struct.TYPE_11__* @GetAvailableMember(%struct.TYPE_12__* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @MAJOR, align 4
  %17 = load i32, i32* @E_NOT_FOUND, align 4
  %18 = call i32 @REPORT_ERROR(i32 %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %27 = call i32 @IOMemSet32(i32* %25, i32 0, i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = call i32 @INIT_LIST(i32* %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NextStepAd(i64 %33, i32* null, %struct.TYPE_13__* %34, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %19
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %43, %19
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @FillReplicAdOfTypeResult(i64 %52, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %4, align 8
  br label %56

56:                                               ; preds = %49, %15
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %57
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @GetAvailableMember(%struct.TYPE_12__*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @IOMemSet32(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST(i32*) #1

declare dso_local i32 @NextStepAd(i64, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @FillReplicAdOfTypeResult(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
