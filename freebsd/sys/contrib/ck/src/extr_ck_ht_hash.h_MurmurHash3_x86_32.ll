; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash3_x86_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash3_x86_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32*)* @MurmurHash3_x86_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MurmurHash3_x86_32(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %12, align 4
  store i32 -862048943, i32* %13, align 4
  store i32 461845907, i32* %14, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = bitcast i32* %28 to i8*
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %56, %4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @getblock(i32* %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %16, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @ROTL32(i32 %43, i32 15)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %12, align 4
  %50 = xor i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @ROTL32(i32 %51, i32 13)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %53, 5
  %55 = add i32 %54, -430675100
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %33

59:                                               ; preds = %33
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32* %64, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 3
  switch i32 %66, label %98 [
    i32 3, label %67
    i32 2, label %74
    i32 1, label %81
  ]

67:                                               ; preds = %59
  %68 = load i32*, i32** %17, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = load i32, i32* %18, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %59, %67
  %75 = load i32*, i32** %17, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32, i32* %18, align 4
  %80 = xor i32 %79, %78
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %59, %74
  %82 = load i32*, i32** %17, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %18, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %18, align 4
  %89 = mul nsw i32 %88, %87
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @ROTL32(i32 %90, i32 15)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %18, align 4
  %94 = mul nsw i32 %93, %92
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %12, align 4
  %97 = xor i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %81, %59
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %12, align 4
  %101 = xor i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @fmix(i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  ret void
}

declare dso_local i32 @getblock(i32*, i32) #1

declare dso_local i32 @ROTL32(i32, i32) #1

declare dso_local i32 @fmix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
