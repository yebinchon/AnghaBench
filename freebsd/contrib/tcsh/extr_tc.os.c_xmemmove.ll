; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.os.c_xmemmove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.os.c_xmemmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmemmove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ugt i8* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %7, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8, i8* %27, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %9, align 8
  store i8 %29, i8* %30, align 1
  br label %22

32:                                               ; preds = %22
  br label %51

33:                                               ; preds = %17
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 %37
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %44, %33
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %7, align 8
  %43 = icmp ne i64 %41, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %9, align 8
  store i8 %47, i8* %49, align 1
  br label %40

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i8*, i8** %5, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %51, %15
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
