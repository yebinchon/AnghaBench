; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_unwind_tab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_unwind.c_unwind_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64*, i32*, i32, i32, i64, i32 }

@PC = common dso_local global i64 0, align 8
@ENTRY_MASK = common dso_local global i32 0, align 4
@ENTRY_ARM_SU16 = common dso_local global i32 0, align 4
@ENTRY_ARM_LU16 = common dso_local global i32 0, align 4
@LR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*)* @unwind_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_tab(%struct.unwind_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unwind_state*, align 8
  %4 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %3, align 8
  %5 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %6 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @PC, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %11 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ENTRY_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ENTRY_ARM_SU16, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %21 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %20, i32 0, i32 2
  store i32 2, i32* %21, align 8
  %22 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %22, i32 0, i32 3
  store i32 1, i32* %23, align 4
  br label %42

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENTRY_ARM_LU16, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %30 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  %31 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %32 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, 1
  %38 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %39 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %41

40:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %94

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %19
  br label %43

43:                                               ; preds = %53, %42
  %44 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %45 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %50 = call i64 @unwind_exec_insn(%struct.unwind_state* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %94

53:                                               ; preds = %48
  br label %43

54:                                               ; preds = %43
  %55 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %56 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @PC, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %54
  %63 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %64 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @LR, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %70 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @PC, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %68, i64* %73, align 8
  %74 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %75 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %78 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @PC, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %76, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %62
  %85 = load i64, i64* @PC, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = load %struct.unwind_state*, %struct.unwind_state** %3, align 8
  %89 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %84, %62
  br label %93

93:                                               ; preds = %92, %54
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %52, %40
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @unwind_exec_insn(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
