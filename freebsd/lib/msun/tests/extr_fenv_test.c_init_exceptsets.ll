; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_init_exceptsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/tests/extr_fenv_test.c_init_exceptsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXCEPTS = common dso_local global i32 0, align 4
@std_excepts = common dso_local global i32* null, align 8
@std_except_sets = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_exceptsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_exceptsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %37, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NEXCEPTS, align 4
  %7 = shl i32 1, %6
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = load i32, i32* %1, align 4
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %31, %9
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i32*, i32** @std_excepts, align 8
  %16 = load i32, i32* %2, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %21, 1
  %23 = sub i32 %22, 1
  %24 = and i32 %19, %23
  %25 = load i32*, i32** @std_except_sets, align 8
  %26 = load i32, i32* %1, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = lshr i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %11

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %1, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %4

40:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
