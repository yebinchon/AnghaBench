; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_keccak1600.c_SHA3_squeeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sha/extr_keccak1600.c_SHA3_squeeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA3_squeeze([5 x i32]* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca [5 x i32]*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store [5 x i32]* %0, [5 x i32]** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load [5 x i32]*, [5 x i32]** %5, align 8
  %14 = bitcast [5 x i32]* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = udiv i64 %15, 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 100
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = urem i64 %20, 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %19, %4
  %24 = phi i1 [ false, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %118, %23
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %119

30:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %108, %30
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i1 [ false, %31 ], [ %37, %35 ]
  br i1 %39, label %40, label %111

40:                                               ; preds = %38
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BitDeinterleave(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 8
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %49

63:                                               ; preds = %49
  br label %119

64:                                               ; preds = %40
  %65 = load i32, i32* %12, align 4
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %12, align 4
  %75 = ashr i32 %74, 16
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %12, align 4
  %80 = ashr i32 %79, 24
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %12, align 4
  %85 = ashr i32 %84, 32
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8 %86, i8* %88, align 1
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 40
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 5
  store i8 %91, i8* %93, align 1
  %94 = load i32, i32* %12, align 4
  %95 = ashr i32 %94, 48
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  store i8 %96, i8* %98, align 1
  %99 = load i32, i32* %12, align 4
  %100 = ashr i32 %99, 56
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  store i8 %101, i8* %103, align 1
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 8
  store i8* %105, i8** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = sub i64 %106, 8
  store i64 %107, i64* %7, align 8
  br label %108

108:                                              ; preds = %64
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %31

111:                                              ; preds = %38
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load [5 x i32]*, [5 x i32]** %5, align 8
  %116 = bitcast [5 x i32]* %115 to i32**
  %117 = call i32 @KeccakF1600(i32** %116)
  br label %118

118:                                              ; preds = %114, %111
  br label %27

119:                                              ; preds = %63, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BitDeinterleave(i32) #1

declare dso_local i32 @KeccakF1600(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
