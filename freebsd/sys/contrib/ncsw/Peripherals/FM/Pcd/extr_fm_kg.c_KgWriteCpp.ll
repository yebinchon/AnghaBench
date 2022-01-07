; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgWriteCpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgWriteCpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.fman_kg_regs* }
%struct.fman_kg_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @KgWriteCpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KgWriteCpp(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fman_kg_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %15, align 8
  store %struct.fman_kg_regs* %16, %struct.fman_kg_regs** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @FmHcKgWriteCpp(i64 %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @KgHwLock(%struct.TYPE_7__* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @fman_kg_write_cpp(%struct.fman_kg_regs* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @FmPcdKgBuildWritePortClsPlanBindActionReg(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @WriteKgarWait(%struct.TYPE_6__* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @KgHwUnlock(%struct.TYPE_7__* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %29, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @FmHcKgWriteCpp(i64, i32, i32) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_7__*) #1

declare dso_local i32 @fman_kg_write_cpp(%struct.fman_kg_regs*, i32) #1

declare dso_local i32 @FmPcdKgBuildWritePortClsPlanBindActionReg(i32) #1

declare dso_local i32 @WriteKgarWait(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
