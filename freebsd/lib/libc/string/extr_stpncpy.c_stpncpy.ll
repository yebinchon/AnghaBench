; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_stpncpy.c_stpncpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_stpncpy.c_stpncpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stpncpy(i8* noalias %0, i8* noalias %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %7, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = load i8*, i8** %5, align 8
  store i8 %15, i8* %16, align 1
  %17 = icmp ne i8 %15, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %8, align 8
  br label %20

20:                                               ; preds = %24, %18
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %7, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  store i8 0, i8* %26, align 1
  br label %20

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %4, align 8
  br label %37

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
