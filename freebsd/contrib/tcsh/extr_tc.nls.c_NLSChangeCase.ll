; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.nls.c_NLSChangeCase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.nls.c_NLSChangeCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NLSChangeCase(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %9, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @Islower(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @Toupper(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @Isupper(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @Tolower(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %28, %25
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %4, align 8
  br label %11

40:                                               ; preds = %32, %22, %11
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32* null, i32** %3, align 8
  br label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @Strsave(i32* %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32 %48, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %45, %44
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i64 @Islower(i32) #1

declare dso_local i32 @Toupper(i32) #1

declare dso_local i64 @Isupper(i32) #1

declare dso_local i32 @Tolower(i32) #1

declare dso_local i32* @Strsave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
