; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_dprompt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dprompt_free_mask = common dso_local global i32 0, align 4
@FM_DONE = common dso_local global i32 0, align 4
@done = common dso_local global i32* null, align 8
@FM_FAIL = common dso_local global i32 0, align 4
@fail = common dso_local global i32* null, align 8
@FM_PEND = common dso_local global i32 0, align 4
@pend = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dprompt_free() #0 {
  %1 = load i32, i32* @dprompt_free_mask, align 4
  %2 = load i32, i32* @FM_DONE, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @FM_DONE, align 4
  %7 = load i32, i32* @dprompt_free_mask, align 4
  %8 = xor i32 %7, %6
  store i32 %8, i32* @dprompt_free_mask, align 4
  %9 = load i32*, i32** @done, align 8
  %10 = call i32 @free(i32* %9)
  store i32* null, i32** @done, align 8
  br label %11

11:                                               ; preds = %5, %0
  %12 = load i32, i32* @dprompt_free_mask, align 4
  %13 = load i32, i32* @FM_FAIL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @FM_FAIL, align 4
  %18 = load i32, i32* @dprompt_free_mask, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* @dprompt_free_mask, align 4
  %20 = load i32*, i32** @fail, align 8
  %21 = call i32 @free(i32* %20)
  store i32* null, i32** @fail, align 8
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i32, i32* @dprompt_free_mask, align 4
  %24 = load i32, i32* @FM_PEND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @FM_PEND, align 4
  %29 = load i32, i32* @dprompt_free_mask, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* @dprompt_free_mask, align 4
  %31 = load i32*, i32** @pend, align 8
  %32 = call i32 @free(i32* %31)
  store i32* null, i32** @pend, align 8
  br label %33

33:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
