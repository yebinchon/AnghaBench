; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"exp1 p1\00", align 1
@STRand2 = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@TEXP_IGNORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"exp1 p2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32)* @exp1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp1(i32*** %0, i32 %1) #0 {
  %3 = alloca i32***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32*** %0, i32**** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32***, i32**** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @exp2x(i32*** %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32***, i32**** %3, align 8
  %12 = call i32 @etraci(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32*** %11)
  br label %13

13:                                               ; preds = %89, %2
  %14 = load i32***, i32**** %3, align 8
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32***, i32**** %3, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @STRand2, align 4
  %23 = call i64 @eq(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i1 [ false, %13 ], [ %24, %18 ]
  br i1 %26, label %27, label %90

27:                                               ; preds = %25
  %28 = load i32***, i32**** %3, align 8
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i32 1
  store i32** %30, i32*** %28, align 8
  %31 = load i64, i64* @compat_expr, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32***, i32**** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @TEXP_IGNORE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i1 [ true, %33 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @exp1(i32*** %34, i32 %45)
  br label %61

47:                                               ; preds = %27
  %48 = load i32***, i32**** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TEXP_IGNORE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ true, %47 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @exp2x(i32*** %48, i32 %59)
  br label %61

61:                                               ; preds = %57, %43
  %62 = phi i32 [ %46, %43 ], [ %60, %57 ]
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32***, i32**** %3, align 8
  %65 = call i32 @etraci(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32*** %64)
  %66 = load i64, i64* @compat_expr, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TEXP_IGNORE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68, %61
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ false, %73 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %68
  %83 = load i32, i32* %5, align 4
  %84 = load i32***, i32**** %3, align 8
  %85 = call i32 @etraci(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %83, i32*** %84)
  %86 = load i64, i64* @compat_expr, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %82
  br label %13

90:                                               ; preds = %88, %25
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @exp2x(i32***, i32) #1

declare dso_local i32 @etraci(i8*, i32, i32***) #1

declare dso_local i64 @eq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
