; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit_bsp1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit_bsp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_xsave = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_X87 = common dso_local global i32 0, align 4
@XFEATURE_ENABLED_SSE = common dso_local global i32 0, align 4
@xsave_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"CPU0 does not support X87 or SSE: %x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hw.xsave_mask\00", align 1
@XFEATURE_AVX512 = common dso_local global i32 0, align 4
@XFEATURE_MPX = common dso_local global i32 0, align 4
@CPUID_EXTSTATE_XSAVEOPT = common dso_local global i32 0, align 4
@ctx_switch_xsave = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpuinit_bsp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpuinit_bsp1() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @use_xsave, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %77

7:                                                ; preds = %0
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %9 = call i32 @cpuid_count(i32 13, i32 0, i32* %8)
  %10 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %11 = load i32, i32* @XFEATURE_ENABLED_SSE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* @xsave_mask, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = load i32, i32* @xsave_mask, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @xsave_mask, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %7
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 32
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = or i32 %26, %28
  store i32 %29, i32* @xsave_mask, align 4
  %30 = load i32, i32* @xsave_mask, align 4
  store i32 %30, i32* %2, align 4
  %31 = call i32 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  %32 = load i32, i32* @XFEATURE_ENABLED_X87, align 4
  %33 = load i32, i32* @XFEATURE_ENABLED_SSE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %2, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @xsave_mask, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* @xsave_mask, align 4
  %40 = load i32, i32* @xsave_mask, align 4
  %41 = load i32, i32* @XFEATURE_AVX512, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @XFEATURE_AVX512, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %23
  %46 = load i32, i32* @XFEATURE_AVX512, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* @xsave_mask, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* @xsave_mask, align 4
  br label %50

50:                                               ; preds = %45, %23
  %51 = load i32, i32* @xsave_mask, align 4
  %52 = load i32, i32* @XFEATURE_MPX, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @XFEATURE_MPX, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @XFEATURE_MPX, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* @xsave_mask, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* @xsave_mask, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %63 = call i32 @cpuid_count(i32 13, i32 1, i32* %62)
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = load i32, i32* @CPUID_EXTSTATE_XSAVEOPT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = call i32 (...) @disable_wp()
  store i32 %70, i32* %3, align 4
  %71 = load i32*, i32** @ctx_switch_xsave, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, 16
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @restore_wp(i32 %75)
  br label %77

77:                                               ; preds = %6, %69, %61
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @TUNABLE_ULONG_FETCH(i8*, i32*) #1

declare dso_local i32 @disable_wp(...) #1

declare dso_local i32 @restore_wp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
