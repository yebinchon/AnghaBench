; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash64B.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht_hash.h_MurmurHash64B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @MurmurHash64B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MurmurHash64B(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1540483477, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 32
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %11, align 8
  br label %23

23:                                               ; preds = %26, %3
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %11, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %30, 1540483477
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = ashr i32 %32, 24
  %34 = load i32, i32* %12, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = mul nsw i32 %36, 1540483477
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 1540483477
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %45, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = mul nsw i32 %48, 1540483477
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 24
  %52 = load i32, i32* %13, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 1540483477
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %56, 1540483477
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %10, align 4
  %60 = xor i32 %59, %58
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 4
  store i32 %62, i32* %5, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 4
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* %67, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %70, 1540483477
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = ashr i32 %72, 24
  %74 = load i32, i32* %14, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = mul nsw i32 %76, 1540483477
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %9, align 4
  %79 = mul nsw i32 %78, 1540483477
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %66, %63
  %86 = load i32, i32* %5, align 4
  switch i32 %86, label %115 [
    i32 3, label %87
    i32 2, label %96
    i32 1, label %105
  ]

87:                                               ; preds = %85
  %88 = load i32*, i32** %11, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 16
  %94 = load i32, i32* %10, align 4
  %95 = xor i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %85, %87
  %97 = load i32*, i32** %11, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %10, align 4
  %104 = xor i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %85, %96
  %106 = load i32*, i32** %11, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 %113, 1540483477
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %105, %85
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 18
  %118 = load i32, i32* %9, align 4
  %119 = xor i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %120, 1540483477
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = ashr i32 %122, 22
  %124 = load i32, i32* %10, align 4
  %125 = xor i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = mul nsw i32 %126, 1540483477
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %128, 17
  %130 = load i32, i32* %9, align 4
  %131 = xor i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 1540483477
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = ashr i32 %134, 19
  %136 = load i32, i32* %10, align 4
  %137 = xor i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %138, 1540483477
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = shl i32 %141, 32
  %143 = load i32, i32* %10, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %15, align 4
  %145 = load i32, i32* %15, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
