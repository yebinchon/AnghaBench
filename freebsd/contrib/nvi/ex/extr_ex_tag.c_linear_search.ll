; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_linear_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_linear_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i64)* @linear_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linear_search(i8* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %9, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  br label %32

30:                                               ; preds = %18, %15
  %31 = load i8*, i8** %8, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i8* [ %29, %26 ], [ %31, %30 ]
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @compare(i8* %34, i8* %35, i8* %36)
  switch i32 %37, label %42 [
    i32 130, label %38
    i32 128, label %40
    i32 129, label %41
  ]

38:                                               ; preds = %32
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %5, align 8
  br label %47

40:                                               ; preds = %32
  store i8* null, i8** %5, align 8
  br label %47

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %32, %41
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @SKIP_PAST_NEWLINE(i8* %43, i8* %44)
  br label %11

46:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  br label %47

47:                                               ; preds = %46, %40, %38
  %48 = load i8*, i8** %5, align 8
  ret i8* %48
}

declare dso_local i32 @compare(i8*, i8*, i8*) #1

declare dso_local i32 @SKIP_PAST_NEWLINE(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
