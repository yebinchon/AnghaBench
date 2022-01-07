; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_to_bsd_waitopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_to_bsd_waitopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINUX_WNOHANG = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@LINUX_WUNTRACED = common dso_local global i32 0, align 4
@WUNTRACED = common dso_local global i32 0, align 4
@LINUX_WEXITED = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@LINUX_WCONTINUED = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4
@LINUX_WNOWAIT = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@__WCLONE = common dso_local global i32 0, align 4
@WLINUXCLONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_to_bsd_waitopts(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @LINUX_WNOHANG, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @WNOHANG, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LINUX_WUNTRACED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @WUNTRACED, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @LINUX_WEXITED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @WEXITED, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @LINUX_WCONTINUED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @WCONTINUED, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @LINUX_WNOWAIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @WNOWAIT, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @__WCLONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @WLINUXCLONE, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
