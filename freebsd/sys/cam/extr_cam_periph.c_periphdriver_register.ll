; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_periphdriver_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_periph.c_periphdriver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.periph_driver = type { i32, i32 (...)* }

@nperiph_drivers = common dso_local global i32 0, align 4
@M_CAMPERIPH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@periph_drivers = common dso_local global %struct.periph_driver** null, align 8
@CAM_PERIPH_DRV_EARLY = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @periphdriver_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.periph_driver*, align 8
  %4 = alloca %struct.periph_driver**, align 8
  %5 = alloca %struct.periph_driver**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.periph_driver*
  store %struct.periph_driver* %8, %struct.periph_driver** %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* @nperiph_drivers, align 4
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_CAMPERIPH, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.periph_driver** @malloc(i32 %15, i32 %16, i32 %17)
  store %struct.periph_driver** %18, %struct.periph_driver*** %4, align 8
  %19 = call i32 (...) @xpt_lock_buses()
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @nperiph_drivers, align 4
  %22 = add nsw i32 %21, 2
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %9
  %25 = call i32 (...) @xpt_unlock_buses()
  %26 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %27 = load i32, i32* @M_CAMPERIPH, align 4
  %28 = call i32 @free(%struct.periph_driver** %26, i32 %27)
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %31 = icmp ne %struct.periph_driver** %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  %34 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %35 = load i32, i32* @nperiph_drivers, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i32 @bcopy(%struct.periph_driver** %33, %struct.periph_driver** %34, i32 %38)
  br label %40

40:                                               ; preds = %32, %29
  %41 = load %struct.periph_driver*, %struct.periph_driver** %3, align 8
  %42 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %43 = load i32, i32* @nperiph_drivers, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %42, i64 %44
  store %struct.periph_driver* %41, %struct.periph_driver** %45, align 8
  %46 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  %47 = load i32, i32* @nperiph_drivers, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.periph_driver*, %struct.periph_driver** %46, i64 %49
  store %struct.periph_driver* null, %struct.periph_driver** %50, align 8
  %51 = load %struct.periph_driver**, %struct.periph_driver*** @periph_drivers, align 8
  store %struct.periph_driver** %51, %struct.periph_driver*** %5, align 8
  %52 = load %struct.periph_driver**, %struct.periph_driver*** %4, align 8
  store %struct.periph_driver** %52, %struct.periph_driver*** @periph_drivers, align 8
  %53 = load i32, i32* @nperiph_drivers, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @nperiph_drivers, align 4
  %55 = call i32 (...) @xpt_unlock_buses()
  %56 = load %struct.periph_driver**, %struct.periph_driver*** %5, align 8
  %57 = icmp ne %struct.periph_driver** %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %40
  %59 = load %struct.periph_driver**, %struct.periph_driver*** %5, align 8
  %60 = load i32, i32* @M_CAMPERIPH, align 4
  %61 = call i32 @free(%struct.periph_driver** %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %40
  %63 = load %struct.periph_driver*, %struct.periph_driver** %3, align 8
  %64 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CAM_PERIPH_DRV_EARLY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @initialized, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* @initialized, align 4
  %74 = icmp sgt i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %69
  %76 = load %struct.periph_driver*, %struct.periph_driver** %3, align 8
  %77 = getelementptr inbounds %struct.periph_driver, %struct.periph_driver* %76, i32 0, i32 1
  %78 = load i32 (...)*, i32 (...)** %77, align 8
  %79 = call i32 (...) %78()
  br label %80

80:                                               ; preds = %75, %72
  ret void
}

declare dso_local %struct.periph_driver** @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_lock_buses(...) #1

declare dso_local i32 @xpt_unlock_buses(...) #1

declare dso_local i32 @free(%struct.periph_driver**, i32) #1

declare dso_local i32 @bcopy(%struct.periph_driver**, %struct.periph_driver**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
