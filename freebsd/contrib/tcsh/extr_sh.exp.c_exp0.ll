; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"exp0 p1\00", align 1
@STRor2 = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@TEXP_IGNORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exp0(i32*** %0, i32 %1) #0 {
  %3 = alloca i32***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32*** %0, i32**** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32***, i32**** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @exp1(i32*** %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32***, i32**** %3, align 8
  %12 = call i32 @etraci(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32*** %11)
  br label %13

13:                                               ; preds = %84, %2
  %14 = load i32***, i32**** %3, align 8
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32***, i32**** %3, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @STRor2, align 4
  %23 = call i64 @eq(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i1 [ false, %13 ], [ %24, %18 ]
  br i1 %26, label %27, label %85

27:                                               ; preds = %25
  %28 = load i32***, i32**** %3, align 8
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i32 1
  store i32** %30, i32*** %28, align 8
  %31 = load i64, i64* @compat_expr, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i32***, i32**** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TEXP_IGNORE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ true, %33 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @exp0(i32*** %34, i32 %44)
  br label %59

46:                                               ; preds = %27
  %47 = load i32***, i32**** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TEXP_IGNORE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i1 [ true, %46 ], [ %54, %52 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @exp1(i32*** %47, i32 %57)
  br label %59

59:                                               ; preds = %55, %42
  %60 = phi i32 [ %45, %42 ], [ %58, %55 ]
  store i32 %60, i32* %6, align 4
  %61 = load i64, i64* @compat_expr, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @TEXP_IGNORE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %63
  %78 = load i32, i32* %5, align 4
  %79 = load i32***, i32**** %3, align 8
  %80 = call i32 @etraci(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %78, i32*** %79)
  %81 = load i64, i64* @compat_expr, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %85

84:                                               ; preds = %77
  br label %13

85:                                               ; preds = %83, %25
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @exp1(i32***, i32) #1

declare dso_local i32 @etraci(i8*, i32, i32***) #1

declare dso_local i64 @eq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
