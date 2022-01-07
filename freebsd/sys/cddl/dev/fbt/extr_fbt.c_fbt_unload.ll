; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/fbt/extr_fbt.c_fbt_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fbt_invop = common dso_local global i32 0, align 4
@dtrace_doubletrap_func = common dso_local global i32* null, align 8
@fbt_id = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i32* null, align 8
@M_FBT = common dso_local global i32 0, align 4
@fbt_probetab_mask = common dso_local global i64 0, align 8
@fbt_cdev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fbt_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbt_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @fbt_invop, align 4
  %4 = call i32 @dtrace_invop_remove(i32 %3)
  store i32* null, i32** @dtrace_doubletrap_func, align 8
  %5 = load i32, i32* @fbt_id, align 4
  %6 = call i32 @dtrace_unregister(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %17

10:                                               ; preds = %0
  %11 = load i32*, i32** @fbt_probetab, align 8
  %12 = load i32, i32* @M_FBT, align 4
  %13 = call i32 @free(i32* %11, i32 %12)
  store i32* null, i32** @fbt_probetab, align 8
  store i64 0, i64* @fbt_probetab_mask, align 8
  %14 = load i32, i32* @fbt_cdev, align 4
  %15 = call i32 @destroy_dev(i32 %14)
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %10, %8
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @dtrace_invop_remove(i32) #1

declare dso_local i32 @dtrace_unregister(i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @destroy_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
