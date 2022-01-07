; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_xsbprintf.c_xvsbprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_xsbprintf.c_xvsbprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xvsbprintf(i8** %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i8* [ %16, %14 ], [ null, %17 ]
  store i8* %19, i8** %9, align 8
  store i32 -1, i32* %10, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @vsnprintf(i8* %35, i64 %36, i8* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %11, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %48, %29
  %54 = load i8*, i8** %9, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  br label %59

57:                                               ; preds = %22, %18
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* @errno, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @vsnprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
