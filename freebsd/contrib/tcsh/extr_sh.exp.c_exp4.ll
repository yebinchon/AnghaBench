; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"exp4 p1\00", align 1
@ADDOP = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"exp4 p2\00", align 1
@TEXP_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32***, i32)* @exp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @exp4(i32*** %0, i32 %1) #0 {
  %3 = alloca i32***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32*** %0, i32**** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %7, align 8
  %9 = load i32***, i32**** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @exp5(i32*** %9, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32***, i32**** %3, align 8
  %14 = call i32 @etracc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12, i32*** %13)
  br label %15

15:                                               ; preds = %80, %2
  %16 = load i32***, i32**** %3, align 8
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @ADDOP, align 4
  %20 = call i64 @isa(i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %15
  %23 = load i32***, i32**** %3, align 8
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i32 1
  store i32** %25, i32*** %23, align 8
  %26 = load i32*, i32** %24, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @xfree, align 4
  %29 = call i32 @cleanup_push(i32* %27, i32 %28)
  %30 = load i64, i64* @compat_expr, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32***, i32**** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32* @exp4(i32*** %33, i32 %34)
  br label %40

36:                                               ; preds = %22
  %37 = load i32***, i32**** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32* @exp5(i32*** %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32* [ %35, %32 ], [ %39, %36 ]
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @xfree, align 4
  %44 = call i32 @cleanup_push(i32* %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32***, i32**** %3, align 8
  %47 = call i32 @etracc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %45, i32*** %46)
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TEXP_IGNORE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %40
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %68 [
    i32 43, label %56
    i32 45, label %62
  ]

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @egetn(i32* %57)
  %59 = load i32*, i32** %6, align 8
  %60 = call i64 @egetn(i32* %59)
  %61 = add nsw i64 %58, %60
  store i64 %61, i64* %7, align 8
  br label %68

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @egetn(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @egetn(i32* %65)
  %67 = sub nsw i64 %64, %66
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %52, %62, %56
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @cleanup_until(i32* %70)
  %72 = load i64, i64* %7, align 8
  %73 = call i32* @putn(i64 %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32***, i32**** %3, align 8
  %76 = call i32 @etracc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %74, i32*** %75)
  %77 = load i64, i64* @compat_expr, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %81

80:                                               ; preds = %69
  br label %15

81:                                               ; preds = %79, %15
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

declare dso_local i32* @exp5(i32***, i32) #1

declare dso_local i32 @etracc(i8*, i32*, i32***) #1

declare dso_local i64 @isa(i32*, i32) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i64 @egetn(i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i32* @putn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
