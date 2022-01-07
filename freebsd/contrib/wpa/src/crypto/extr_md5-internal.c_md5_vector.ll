; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_md5-internal.c_md5_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_md5-internal.c_md5_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_vector(i64 %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i64 (...) @TEST_FAIL()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %37

15:                                               ; preds = %4
  %16 = call i32 @MD5Init(i32* %10)
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %31, %15
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32**, i32*** %7, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @MD5Update(i32* %10, i32* %25, i64 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %11, align 8
  br label %17

34:                                               ; preds = %17
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @MD5Final(i32* %35, i32* %10)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i32*, i64) #1

declare dso_local i32 @MD5Final(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
