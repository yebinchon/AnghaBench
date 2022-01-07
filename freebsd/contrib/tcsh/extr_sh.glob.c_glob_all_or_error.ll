; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_glob_all_or_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_glob_all_or_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_NOMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @glob_all_or_error(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = call i32 @tglob(i32** %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32**, i32*** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32** @globall(i32** %9, i32 %10)
  store i32** %11, i32*** %2, align 8
  %12 = load i32**, i32*** %2, align 8
  %13 = icmp eq i32** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i32, i32* @ERR_NAME, align 4
  %16 = load i32, i32* @ERR_NOMATCH, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @stderror(i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  br label %25

20:                                               ; preds = %1
  %21 = load i32**, i32*** %2, align 8
  %22 = call i32** @saveblk(i32** %21)
  store i32** %22, i32*** %2, align 8
  %23 = load i32**, i32*** %2, align 8
  %24 = call i32 @trim(i32** %23)
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32**, i32*** %2, align 8
  ret i32** %26
}

declare dso_local i32 @tglob(i32**) #1

declare dso_local i32** @globall(i32**, i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32** @saveblk(i32**) #1

declare dso_local i32 @trim(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
