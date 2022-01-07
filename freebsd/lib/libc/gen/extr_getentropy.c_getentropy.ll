; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getentropy.c_getentropy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getentropy.c_getentropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GETRANDOM_FIRST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getentropy(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, 256
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  store i32 %11, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %57

12:                                               ; preds = %2
  %13 = call i64 (...) @__getosreldate()
  %14 = load i64, i64* @GETRANDOM_FIRST, align 8
  %15 = icmp sge i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %32, %31, %12
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @getrandom(i8* %24, i64 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  switch i32 %30, label %34 [
    i32 130, label %31
    i32 128, label %32
    i32 129, label %33
  ]

31:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %17

32:                                               ; preds = %29
  br label %17

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %57

34:                                               ; preds = %29
  %35 = call i32 (...) @_getentropy_fail()
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %23
  br label %42

38:                                               ; preds = %20
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @getentropy_fallback(i8* %39, i64 %40)
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @_getentropy_fail()
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %5, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %17

56:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %38, %33, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @__getosreldate(...) #1

declare dso_local i32 @getrandom(i8*, i64, i32) #1

declare dso_local i32 @_getentropy_fail(...) #1

declare dso_local i32 @getentropy_fallback(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
