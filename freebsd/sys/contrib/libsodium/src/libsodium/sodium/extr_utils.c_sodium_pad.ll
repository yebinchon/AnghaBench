; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_utils.c_sodium_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_utils.c_sodium_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_pad(i64* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ule i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %108

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = sub i64 %25, 1
  %27 = and i64 %24, %26
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %31, 1
  %33 = and i64 %30, %32
  %34 = load i64, i64* %14, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %14, align 8
  br label %42

36:                                               ; preds = %21
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = urem i64 %37, %38
  %40 = load i64, i64* %14, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %36, %29
  %43 = load i64, i64* @SIZE_MAX, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = load i64, i64* %14, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @sodium_misuse()
  br label %50

50:                                               ; preds = %48, %42
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %51, %52
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %108

58:                                               ; preds = %50
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %12, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  store volatile i8 0, i8* %16, align 1
  store i64 0, i64* %13, align 8
  br label %69

69:                                               ; preds = %104, %68
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = xor i64 %74, %75
  %77 = sub i64 %76, 1
  %78 = lshr i64 %77, 8
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %17, align 1
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load volatile i8, i8* %16, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %85, %87
  %89 = load i8, i8* %17, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 128, %90
  %92 = or i32 %88, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  %98 = load i8, i8* %17, align 1
  %99 = zext i8 %98 to i32
  %100 = load volatile i8, i8* %16, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i8
  store volatile i8 %103, i8* %16, align 1
  br label %104

104:                                              ; preds = %73
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %13, align 8
  br label %69

107:                                              ; preds = %69
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %57, %20
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @sodium_misuse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
