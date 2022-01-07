; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_operate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.set.c_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_EXPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32*)* @operate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @operate(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [5 x i32*], align 16
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = getelementptr inbounds [5 x i32*], [5 x i32*]* %8, i64 0, i64 0
  store i32** %12, i32*** %9, align 8
  %13 = load i32**, i32*** %9, align 8
  store i32** %13, i32*** %10, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 61
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32**, i32*** %9, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i32 1
  store i32** %23, i32*** %9, align 8
  store i32* %21, i32** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %4, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %29 = load i32**, i32*** %9, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i32 1
  store i32** %30, i32*** %9, align 8
  store i32* %28, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 60
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 62
  br i1 %35, label %36, label %40

36:                                               ; preds = %33, %24
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %38 = load i32**, i32*** %9, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %9, align 8
  store i32* %37, i32** %38, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32*, i32** %6, align 8
  %43 = load i32**, i32*** %9, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %9, align 8
  store i32* %42, i32** %43, align 8
  %45 = load i32**, i32*** %9, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i32 1
  store i32** %46, i32*** %9, align 8
  store i32* null, i32** %45, align 8
  %47 = call i32 @expr(i32*** %10)
  store i32 %47, i32* %11, align 4
  %48 = load i32**, i32*** %10, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @ERR_NAME, align 4
  %53 = load i32, i32* @ERR_EXPRESSION, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @stderror(i32 %54)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load i32, i32* %11, align 4
  %58 = call i32* @putn(i32 %57)
  ret i32* %58
}

declare dso_local i32 @expr(i32***) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32* @putn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
