; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp2c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_exp2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xfree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"exp2c p1\00", align 1
@EQOP = common dso_local global i32 0, align 4
@TEXP_NOGLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"exp2c p2\00", align 1
@TEXP_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32***, i32)* @exp2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exp2c(i32*** %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32*** %0, i32**** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32***, i32**** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @exp3(i32*** %9, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @xfree, align 4
  %14 = call i32 @cleanup_push(i32* %12, i32 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32***, i32**** %4, align 8
  %17 = call i32 @etracc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %15, i32*** %16)
  %18 = load i32***, i32**** %4, align 8
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @EQOP, align 4
  %22 = call i64 @isa(i32* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %2
  %25 = load i32***, i32**** %4, align 8
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i32 1
  store i32** %27, i32*** %25, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 130
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @TEXP_NOGLOB, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32***, i32**** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @exp3(i32*** %38, i32 %39)
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @xfree, align 4
  %43 = call i32 @cleanup_push(i32* %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32***, i32**** %4, align 8
  %46 = call i32 @etracc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32*** %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TEXP_IGNORE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %37
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  switch i32 %53, label %78 [
    i32 131, label %54
    i32 129, label %58
    i32 130, label %66
    i32 128, label %70
  ]

54:                                               ; preds = %51
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i64 @eq(i32* %55, i32* %56)
  store i64 %57, i64* %8, align 8
  br label %78

58:                                               ; preds = %51
  %59 = load i32*, i32** %6, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @eq(i32* %59, i32* %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  br label %78

66:                                               ; preds = %51
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @Gmatch(i32* %67, i32* %68)
  store i64 %69, i64* %8, align 8
  br label %78

70:                                               ; preds = %51
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @Gmatch(i32* %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %51, %70, %66, %58, %54
  br label %79

79:                                               ; preds = %78, %37
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @cleanup_until(i32* %80)
  %82 = load i64, i64* %8, align 8
  store i64 %82, i64* %3, align 8
  br label %89

83:                                               ; preds = %2
  %84 = load i32*, i32** %6, align 8
  %85 = call i64 @egetn(i32* %84)
  store i64 %85, i64* %8, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @cleanup_until(i32* %86)
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32* @exp3(i32***, i32) #1

declare dso_local i32 @cleanup_push(i32*, i32) #1

declare dso_local i32 @etracc(i8*, i32*, i32***) #1

declare dso_local i64 @isa(i32*, i32) #1

declare dso_local i64 @eq(i32*, i32*) #1

declare dso_local i64 @Gmatch(i32*, i32*) #1

declare dso_local i32 @cleanup_until(i32*) #1

declare dso_local i64 @egetn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
