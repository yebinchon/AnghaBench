; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_fd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PKG_MAX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_send(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %57

18:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %51, %18
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i64, i64* @PKG_MAX_SIZE, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = sub i64 %26, %28
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @PKG_MAX_SIZE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @fd_package_send(i32 %41, i32* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %19

55:                                               ; preds = %50, %19
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @fd_package_send(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
