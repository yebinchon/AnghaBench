; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp2a.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp2a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"exp2a p1\00", align 1
@STRcaret = common dso_local global i32 0, align 4
@compat_expr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"exp2a p2\00", align 1
@TEXP_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32***, i32)* @exp2a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exp2a(i32*** %0, i32 %1) #0 {
  %3 = alloca i32***, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32*** %0, i32**** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32***, i32**** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @exp2b(i32*** %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32***, i32**** %3, align 8
  %12 = call i32 @etraci(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10, i32*** %11)
  br label %13

13:                                               ; preds = %64, %2
  %14 = load i32***, i32**** %3, align 8
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32***, i32**** %3, align 8
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @STRcaret, align 4
  %23 = call i64 @eq(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i1 [ false, %13 ], [ %24, %18 ]
  br i1 %26, label %27, label %65

27:                                               ; preds = %25
  %28 = load i32***, i32**** %3, align 8
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i32 1
  store i32** %30, i32*** %28, align 8
  %31 = load i64, i64* @compat_expr, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32***, i32**** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @exp2a(i32*** %34, i32 %35)
  br label %41

37:                                               ; preds = %27
  %38 = load i32***, i32**** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @exp2b(i32*** %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %36, %33 ], [ %40, %37 ]
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32***, i32**** %3, align 8
  %45 = call i32 @etraci(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32*** %44)
  %46 = load i64, i64* @compat_expr, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TEXP_IGNORE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48, %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %54, %55
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32***, i32**** %3, align 8
  %60 = call i32 @etraci(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58, i32*** %59)
  %61 = load i64, i64* @compat_expr, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %65

64:                                               ; preds = %57
  br label %13

65:                                               ; preds = %63, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @exp2b(i32***, i32) #1

declare dso_local i32 @etraci(i8*, i32, i32***) #1

declare dso_local i64 @eq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
