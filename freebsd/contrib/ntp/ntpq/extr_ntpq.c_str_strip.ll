; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_str_strip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_str_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str_strip.empty = internal constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64)* @str_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_strip(i8** %0, i64 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %57

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load i8**, i8*** %3, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %30, %13
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 32
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i1 [ false, %19 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  br label %19

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 32
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 -1
  store i8* %48, i8** %6, align 8
  br label %34

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8**, i8*** %3, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  store i64 %56, i64* %4, align 8
  br label %59

57:                                               ; preds = %10, %2
  %58 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str_strip.empty, i64 0, i64 0), i8** %58, align 8
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
