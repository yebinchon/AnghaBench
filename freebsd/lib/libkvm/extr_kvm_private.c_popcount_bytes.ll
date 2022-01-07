; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c_popcount_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_private.c_popcount_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @popcount_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @popcount_bytes(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @BITS_IN(i32 %15)
  %17 = srem i64 %13, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @BITS_IN(i32 %23)
  %25 = call i64 @roundup2(i64 %21, i64 %24)
  %26 = call i64 @MIN(i64 %20, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @bitmask_range(i32 %28, i64 %29, i64 %30)
  %32 = call i64 @__bitcount64(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %19, %3
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i64, i64* %7, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @BITS_IN(i32 %51)
  %53 = call i64 @MIN(i64 %49, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @bitmask_range(i32 %55, i64 0, i64 %56)
  %58 = call i64 @__bitcount64(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %4, align 8
  br label %45

68:                                               ; preds = %45
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @BITS_IN(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i64 @__bitcount64(i32) #1

declare dso_local i32 @bitmask_range(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
