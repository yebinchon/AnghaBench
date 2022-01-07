; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_man_strlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_man_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @man_strlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @man_strlen(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %49, %1
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcspn(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i64, i64* %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 %13
  store i8* %15, i8** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %7
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  %36 = call i32 @mandoc_escape(i8** %3, i32* null, i32* null)
  switch i32 %36, label %48 [
    i32 134, label %37
    i32 128, label %39
    i32 133, label %39
    i32 130, label %39
    i32 129, label %39
    i32 132, label %39
    i32 131, label %47
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %33, %33, %33, %33, %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %46

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %42
  br label %49

47:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %49

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %47, %46
  br label %7

50:                                               ; preds = %32
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %37
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @mandoc_escape(i8**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
