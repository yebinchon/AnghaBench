; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgWriteSp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgWriteSp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.fman_kg_regs* }
%struct.fman_kg_regs = type { i32 }

@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32, i32, i32)* @KgWriteSp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @KgWriteSp(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fman_kg_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @E_OK, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @FmHcKgWriteSp(i64 %22, i32 %23, i32 %24, i32 %25)
  store i64 %26, i64* %5, align 8
  br label %70

27:                                               ; preds = %4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %31, align 8
  store %struct.fman_kg_regs* %32, %struct.fman_kg_regs** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FmPcdKgBuildReadPortSchemeBindActionReg(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @KgHwLock(%struct.TYPE_7__* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @WriteKgarWait(%struct.TYPE_6__* %39, i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %27
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @KgHwUnlock(%struct.TYPE_7__* %47, i32 %48)
  %50 = load i32, i32* @MINOR, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* @NO_MSG, align 4
  %53 = call i32 @RETURN_ERROR(i32 %50, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %44, %27
  %55 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @fman_kg_write_sp(%struct.fman_kg_regs* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @FmPcdKgBuildWritePortSchemeBindActionReg(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i64 @WriteKgarWait(%struct.TYPE_6__* %61, i32 %62)
  store i64 %63, i64* %13, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @KgHwUnlock(%struct.TYPE_7__* %66, i32 %67)
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %54, %19
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @FmHcKgWriteSp(i64, i32, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildReadPortSchemeBindActionReg(i32) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_7__*) #1

declare dso_local i64 @WriteKgarWait(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i32 @fman_kg_write_sp(%struct.fman_kg_regs*, i32, i32) #1

declare dso_local i32 @FmPcdKgBuildWritePortSchemeBindActionReg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
