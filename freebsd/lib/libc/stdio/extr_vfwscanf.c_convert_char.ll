; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@SUPPRESS_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @convert_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_char(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @initial_mbs, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %42, %4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @__fgetwc(i32* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @WEOF, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ false, %15 ], [ %24, %19 ]
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** @SUPPRESS_PTR, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i64 @wcrtomb(i8* %32, i32 %33, i32* %10)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %51

38:                                               ; preds = %31
  %39 = load i64, i64* %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %15

45:                                               ; preds = %25
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %48, %37
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @__fgetwc(i32*, i32) #1

declare dso_local i64 @wcrtomb(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
