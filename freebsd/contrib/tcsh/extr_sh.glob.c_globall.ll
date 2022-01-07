; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globall.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.glob.c_globall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRnoglob = common dso_local global i32 0, align 4
@G_CSH = common dso_local global i32 0, align 4
@G_GLOB = common dso_local global i32 0, align 4
@blk_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @globall(i32** %0, i32 %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32**, i32*** %4, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %2
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32** @saveblk(i32** %17)
  store i32** %18, i32*** %3, align 8
  br label %63

19:                                               ; preds = %11
  %20 = load i32, i32* @STRnoglob, align 4
  %21 = call i64 @adrof(i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @G_CSH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32** @globexpand(i32** %29, i32 %30)
  store i32** %31, i32*** %7, align 8
  store i32** %31, i32*** %6, align 8
  br label %35

32:                                               ; preds = %19
  %33 = load i32**, i32*** %4, align 8
  %34 = call i32** @saveblk(i32** %33)
  store i32** %34, i32*** %7, align 8
  store i32** %34, i32*** %6, align 8
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @G_GLOB, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32**, i32*** %7, align 8
  %45 = load i32, i32* @blk_cleanup, align 4
  %46 = call i32 @cleanup_push(i32** %44, i32 %45)
  %47 = load i32**, i32*** %7, align 8
  %48 = call i32** @libglob(i32** %47)
  store i32** %48, i32*** %6, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = icmp eq i32** %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32**, i32*** %7, align 8
  %54 = call i32 @cleanup_ignore(i32** %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32**, i32*** %7, align 8
  %57 = call i32 @cleanup_until(i32** %56)
  br label %61

58:                                               ; preds = %38, %35
  %59 = load i32**, i32*** %6, align 8
  %60 = call i32 @trim(i32** %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32**, i32*** %6, align 8
  store i32** %62, i32*** %3, align 8
  br label %63

63:                                               ; preds = %61, %16
  %64 = load i32**, i32*** %3, align 8
  ret i32** %64
}

declare dso_local i32** @saveblk(i32**) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32** @globexpand(i32**, i32) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32** @libglob(i32**) #1

declare dso_local i32 @cleanup_ignore(i32**) #1

declare dso_local i32 @cleanup_until(i32**) #1

declare dso_local i32 @trim(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
