; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_separate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_string.c_isc_string_separate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @isc_string_separate(i8** %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %47, %16
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %9, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %43, %23
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 0, i8* %37, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i8**, i8*** %4, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %3, align 8
  br label %53

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %25

46:                                               ; preds = %25
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  br label %18

50:                                               ; preds = %18
  %51 = load i8**, i8*** %4, align 8
  store i8* null, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %50, %36, %15
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
