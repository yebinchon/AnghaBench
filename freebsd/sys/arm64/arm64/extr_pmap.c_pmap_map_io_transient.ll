; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_map_io_transient.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_map_io_transient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vmem_alloc failed: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"pmap_map_io_transient: TODO: Map out of DMAP data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_map_io_transient(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %60, %4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @VM_PAGE_TO_PHYS(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @PHYS_IN_DMAP(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @__predict_false(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %19
  %34 = load i32, i32* @kernel_arena, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* @M_BESTFIT, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @vmem_alloc(i32 %34, i32 %35, i32 %38, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %46, i8* %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %11, align 4
  br label %59

52:                                               ; preds = %19
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @PHYS_TO_DMAP(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %33
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %96

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i32 (...) @sched_pin()
  br label %73

73:                                               ; preds = %71, %68
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @VM_PAGE_TO_PHYS(i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @PHYS_IN_DMAP(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  %89 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %74

94:                                               ; preds = %74
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %66
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @PHYS_IN_DMAP(i32) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
