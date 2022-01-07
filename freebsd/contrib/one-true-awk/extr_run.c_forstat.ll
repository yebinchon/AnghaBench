; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_forstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_forstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @forstat(i32** %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32**, i32*** %4, align 8
  %8 = getelementptr inbounds i32*, i32** %7, i64 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32* @execute(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @tempfree(i32* %11)
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i32**, i32*** %4, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i32**, i32*** %4, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @execute(i32* %21)
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @istrue(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %3, align 8
  br label %65

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @tempfree(i32* %29)
  br label %31

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32**, i32*** %4, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32* @execute(i32* %35)
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @isbreak(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32*, i32** @True, align 8
  store i32* %41, i32** %3, align 8
  br label %65

42:                                               ; preds = %32
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @isnext(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @isexit(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @isret(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46, %42
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %3, align 8
  br label %65

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @tempfree(i32* %57)
  %59 = load i32**, i32*** %4, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32* @execute(i32* %61)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @tempfree(i32* %63)
  br label %13

65:                                               ; preds = %54, %40, %26
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32* @execute(i32*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32 @istrue(i32*) #1

declare dso_local i64 @isbreak(i32*) #1

declare dso_local i64 @isnext(i32*) #1

declare dso_local i64 @isexit(i32*) #1

declare dso_local i64 @isret(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
