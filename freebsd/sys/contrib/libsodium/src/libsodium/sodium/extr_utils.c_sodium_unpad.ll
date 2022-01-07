; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_utils.c_sodium_unpad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_utils.c_sodium_unpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_unpad(i64* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 0, i8* %11, align 1
  store i8 0, i8* %13, align 1
  store volatile i64 0, i64* %14, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ule i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %4
  store i32 -1, i32* %5, align 4
  br label %86

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %10, align 8
  store i64 0, i64* %15, align 8
  br label %29

29:                                               ; preds = %74, %24
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %12, align 1
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = load volatile i64, i64* %14, align 8
  %44 = sub i64 %43, 1
  %45 = and i64 %42, %44
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, 128
  %49 = sub i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = and i64 %45, %50
  %52 = lshr i64 %51, 8
  %53 = and i64 %52, 1
  store i64 %53, i64* %16, align 8
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %11, align 1
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %16, align 8
  %62 = xor i64 %61, -1
  %63 = add i64 1, %62
  %64 = and i64 %60, %63
  %65 = load volatile i64, i64* %14, align 8
  %66 = or i64 %65, %64
  store volatile i64 %66, i64* %14, align 8
  %67 = load i64, i64* %16, align 8
  %68 = trunc i64 %67 to i8
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %13, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %13, align 1
  br label %74

74:                                               ; preds = %33
  %75 = load i64, i64* %15, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %15, align 8
  br label %29

77:                                               ; preds = %29
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 1
  %80 = load volatile i64, i64* %14, align 8
  %81 = sub i64 %79, %80
  %82 = load i64*, i64** %6, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = sub i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %77, %23
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
