; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_periphdriver_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_periphdriver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i32, i32 (...)*, i8* }

@CAM_PERIPH_DRV_EARLY = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"CAM periph driver '%s' doesn't have deinit.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@nperiph_drivers = common dso_local global i32 0, align 4
@periph_drivers = common dso_local global %struct.periph_driver** null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Periph driver '%s' was not registered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @periphdriver_unregister(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.periph_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.periph_driver*
  store %struct.periph_driver* %8, %struct.periph_driver** %4, align 8
  %9 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %10 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CAM_PERIPH_DRV_EARLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @initialized, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* @initialized, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %42

21:                                               ; preds = %18, %15
  %22 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %23 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %22, i32 0, i32 1
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = icmp eq i32 (...)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %28 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %2, align 4
  br label %99

32:                                               ; preds = %21
  %33 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %34 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %33, i32 0, i32 1
  %35 = load i32 (...)*, i32 (...)** %34, align 8
  %36 = call i32 (...) %35()
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %99

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %18
  %43 = call i32 (...) @xpt_lock_buses()
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %59, %42
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @nperiph_drivers, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %49, i64 %51
  %53 = load %struct.periph_driver*, %struct.periph_driver** %52, align 8
  %54 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %55 = icmp ne %struct.periph_driver* %53, %54
  br label %56

56:                                               ; preds = %48, %44
  %57 = phi i1 [ false, %44 ], [ %55, %48 ]
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %44

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @nperiph_drivers, align 4
  %65 = icmp slt i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.periph_driver*, %struct.periph_driver** %4, align 8
  %68 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @KASSERT(i32 %66, i8* %69)
  br label %71

71:                                               ; preds = %87, %62
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* @nperiph_drivers, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %77, i64 %80
  %82 = load %struct.periph_driver*, %struct.periph_driver** %81, align 8
  %83 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %83, i64 %85
  store %struct.periph_driver* %82, %struct.periph_driver** %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %91, i64 %94
  store %struct.periph_driver* null, %struct.periph_driver** %95, align 8
  %96 = load i32, i32* @nperiph_drivers, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* @nperiph_drivers, align 4
  %98 = call i32 (...) @xpt_unlock_buses()
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %90, %39, %26
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
