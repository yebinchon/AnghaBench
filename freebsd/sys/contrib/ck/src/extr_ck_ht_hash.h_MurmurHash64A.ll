; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash64A.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash64A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @MurmurHash64A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MurmurHash64A(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i32 @BIG_CONSTANT(i32 1540483477)
  store i32 %14, i32* %7, align 4
  store i32 47, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %16, %17
  %19 = xor i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %45, %3
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = and i64 %33, 7
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %10, align 8
  %39 = load i32, i32* %37, align 4
  store i32 %39, i32* %12, align 4
  br label %45

40:                                               ; preds = %31
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @memcpy(i32* %12, i32* %41, i32 4)
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = mul nsw i32 %47, %46
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 47
  %51 = load i32, i32* %12, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load i32*, i32** %10, align 8
  %64 = bitcast i32* %63 to i8*
  store i8* %64, i8** %13, align 8
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 7
  switch i32 %66, label %125 [
    i32 7, label %67
    i32 6, label %75
    i32 5, label %83
    i32 4, label %91
    i32 3, label %99
    i32 2, label %107
    i32 1, label %115
  ]

67:                                               ; preds = %62
  %68 = load i8*, i8** %13, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 6
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 48
  %73 = load i32, i32* %9, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %62, %67
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 40
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %62, %75
  %84 = load i8*, i8** %13, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 32
  %89 = load i32, i32* %9, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %62, %83
  %92 = load i8*, i8** %13, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 24
  %97 = load i32, i32* %9, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %62, %91
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 16
  %105 = load i32, i32* %9, align 4
  %106 = xor i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %62, %99
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 8
  %113 = load i32, i32* %9, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %62, %107
  %116 = load i8*, i8** %13, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* %9, align 4
  %121 = xor i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %9, align 4
  %124 = mul nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %115, %62
  %126 = load i32, i32* %9, align 4
  %127 = ashr i32 %126, 47
  %128 = load i32, i32* %9, align 4
  %129 = xor i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 47
  %135 = load i32, i32* %9, align 4
  %136 = xor i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local i32 @BIG_CONSTANT(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
