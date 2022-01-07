; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_getdirentries.c__getdirentries.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/sys/extr_getdirentries.c__getdirentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INO64_FIRST = common dso_local global i64 0, align 8
@DIRBLKSIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SYS_freebsd11_getdirentries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getdirentries(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = call i64 (...) @__getosreldate()
  %14 = load i64, i64* @INO64_FIRST, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @__sys_getdirentries(i32 %17, i8* %18, i64 %19, i32* %20)
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = udiv i64 %23, 4
  %25 = load i32, i32* @DIRBLKSIZ, align 4
  %26 = call i64 @roundup(i64 %24, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i8* @malloc(i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %59

33:                                               ; preds = %22
  %34 = load i32, i32* @SYS_freebsd11_getdirentries, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @syscall(i32 %34, i32 %35, i8* %36, i64 %37, i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %59

46:                                               ; preds = %33
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @__cvt_dirents_from11(i8* %50, i32 %51, i8* %52, i64 %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %42, %31, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @__getosreldate(...) #1

declare dso_local i32 @__sys_getdirentries(i32, i8*, i64, i32*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @syscall(i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @__cvt_dirents_from11(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
