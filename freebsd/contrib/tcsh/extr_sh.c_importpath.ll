; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_importpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.c_importpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATHSEP = common dso_local global i32 0, align 4
@STRdot = common dso_local global i32* null, align 8
@blk_cleanup = common dso_local global i32 0, align 4
@STRpath = common dso_local global i32 0, align 4
@shvhed = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @importpath(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load i32*, i32** %2, align 8
  store i32* %7, i32** %4, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PATHSEP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %4, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 2
  %27 = call i32** @xcalloc(i64 %26, i32 8)
  store i32** %27, i32*** %5, align 8
  %28 = load i32*, i32** %2, align 8
  store i32* %28, i32** %4, align 8
  store i64 0, i64* %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @PATHSEP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38, %33
  %42 = load i32*, i32** %4, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  br label %50

48:                                               ; preds = %41
  %49 = load i32*, i32** @STRdot, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32* [ %47, %46 ], [ %49, %48 ]
  %52 = call i32* @Strsave(i32* %51)
  %53 = load i32**, i32*** %5, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  %56 = getelementptr inbounds i32*, i32** %53, i64 %54
  store i32* %52, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32* %61, i32** %2, align 8
  %62 = load i32, i32* @PATHSEP, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  br label %65

64:                                               ; preds = %50
  br label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %4, align 8
  br label %33

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32**, i32*** %5, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds i32*, i32** %71, i64 %72
  store i32* null, i32** %73, align 8
  %74 = load i32**, i32*** %5, align 8
  %75 = load i32, i32* @blk_cleanup, align 4
  %76 = call i32 @cleanup_push(i32** %74, i32 %75)
  %77 = load i32, i32* @STRpath, align 4
  %78 = load i32**, i32*** %5, align 8
  %79 = load i32, i32* @VAR_READWRITE, align 4
  %80 = call i32 @setq(i32 %77, i32** %78, i32* @shvhed, i32 %79)
  %81 = load i32**, i32*** %5, align 8
  %82 = call i32 @cleanup_ignore(i32** %81)
  %83 = load i32**, i32*** %5, align 8
  %84 = call i32 @cleanup_until(i32** %83)
  ret void
}

declare dso_local i32** @xcalloc(i64, i32) #1

declare dso_local i32* @Strsave(i32*) #1

declare dso_local i32 @cleanup_push(i32**, i32) #1

declare dso_local i32 @setq(i32, i32**, i32*, i32) #1

declare dso_local i32 @cleanup_ignore(i32**) #1

declare dso_local i32 @cleanup_until(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
