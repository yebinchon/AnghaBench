; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_skip_to_semi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_skip_to_semi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBRACE = common dso_local global i32 0, align 4
@LBRACE = common dso_local global i32 0, align 4
@SEMI = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_to_semi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %54, %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @peek_token(i8** %5, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @RBRACE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @next_token(i8** %5, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %58

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %12
  br label %58

24:                                               ; preds = %22
  br label %51

25:                                               ; preds = %6
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @LBRACE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %50

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SEMI, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @next_token(i8** %5, i32* %40)
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %36, %32
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @next_token(i8** %5, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %58

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @next_token(i8** %5, i32* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @EOF, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %6, label %58

58:                                               ; preds = %21, %23, %39, %45, %54
  ret void
}

declare dso_local i32 @peek_token(i8**, i32*) #1

declare dso_local i32 @next_token(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
