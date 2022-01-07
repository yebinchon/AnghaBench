; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefreshPromptpart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_RefreshPromptpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LITERAL = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @RefreshPromptpart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RefreshPromptpart(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %69

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  store i32* %10, i32** %3, align 8
  br label %11

11:                                               ; preds = %68, %9
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LITERAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %29, %21
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LITERAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %3, align 8
  br label %23

32:                                               ; preds = %23
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CHAR, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @NLSWidth(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32*, i32** %5, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @MakeLiteral(i32* %42, i32 %50, i32 0)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @Vdraw(i32 %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %3, align 8
  br label %57

56:                                               ; preds = %32
  br label %69

57:                                               ; preds = %36
  br label %68

58:                                               ; preds = %15
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Draw(i32* %59, i32 %63, i32 1)
  %65 = load i32*, i32** %3, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %3, align 8
  br label %68

68:                                               ; preds = %58, %57
  br label %11

69:                                               ; preds = %8, %56, %11
  ret void
}

declare dso_local i32 @NLSWidth(i32) #1

declare dso_local i32 @Vdraw(i32, i32) #1

declare dso_local i32 @MakeLiteral(i32*, i32, i32) #1

declare dso_local i32 @Draw(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
