; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_pwgets.c_pwgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_pwgets.c_pwgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwgets(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %58, %3
  %11 = call i32 (...) @getchar()
  %12 = and i32 %11, 127
  store i32 %12, i32* %7, align 4
  switch i32 %12, label %34 [
    i32 10, label %13
    i32 13, label %13
    i32 8, label %16
    i32 127, label %16
    i32 21, label %31
    i32 23, label %31
  ]

13:                                               ; preds = %10, %10
  %14 = load i8*, i8** %8, align 8
  store i8 0, i8* %14, align 1
  %15 = call i32 @putchar(i8 signext 10)
  ret void

16:                                               ; preds = %10, %10
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @putchar(i8 signext 8)
  %27 = call i32 @putchar(i8 signext 32)
  %28 = call i32 @putchar(i8 signext 8)
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29, %16
  br label %58

31:                                               ; preds = %10, %10
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %8, align 8
  %33 = call i32 @putchar(i8 signext 10)
  br label %58

34:                                               ; preds = %10
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %7, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @putchar(i8 signext 42)
  br label %56

56:                                               ; preds = %54, %47
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %31, %30
  br label %10
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
