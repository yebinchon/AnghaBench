; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha256c.c__libmd_SHA256_Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha256c.c__libmd_SHA256_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @SHA256_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA256_Transform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i64], align 16
  %6 = alloca [8 x i64], align 16
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @be32dec_vect(i64* %8, i8* %9, i32 64)
  %11 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %12 = load i64*, i64** %3, align 8
  %13 = call i32 @memcpy(i64* %11, i64* %12, i32 32)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %134, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %137

17:                                               ; preds = %14
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %19 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @RNDr(i64* %18, i64* %19, i32 0, i32 %20)
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %23 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @RNDr(i64* %22, i64* %23, i32 1, i32 %24)
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @RNDr(i64* %26, i64* %27, i32 2, i32 %28)
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @RNDr(i64* %30, i64* %31, i32 3, i32 %32)
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @RNDr(i64* %34, i64* %35, i32 4, i32 %36)
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @RNDr(i64* %38, i64* %39, i32 5, i32 %40)
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @RNDr(i64* %42, i64* %43, i32 6, i32 %44)
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RNDr(i64* %46, i64* %47, i32 7, i32 %48)
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RNDr(i64* %50, i64* %51, i32 8, i32 %52)
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RNDr(i64* %54, i64* %55, i32 9, i32 %56)
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %59 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @RNDr(i64* %58, i64* %59, i32 10, i32 %60)
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @RNDr(i64* %62, i64* %63, i32 11, i32 %64)
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %67 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @RNDr(i64* %66, i64* %67, i32 12, i32 %68)
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %71 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @RNDr(i64* %70, i64* %71, i32 13, i32 %72)
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %75 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @RNDr(i64* %74, i64* %75, i32 14, i32 %76)
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %79 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RNDr(i64* %78, i64* %79, i32 15, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %85

84:                                               ; preds = %17
  br label %137

85:                                               ; preds = %17
  %86 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @MSCH(i64* %86, i32 0, i32 %87)
  %89 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @MSCH(i64* %89, i32 1, i32 %90)
  %92 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @MSCH(i64* %92, i32 2, i32 %93)
  %95 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @MSCH(i64* %95, i32 3, i32 %96)
  %98 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @MSCH(i64* %98, i32 4, i32 %99)
  %101 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @MSCH(i64* %101, i32 5, i32 %102)
  %104 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @MSCH(i64* %104, i32 6, i32 %105)
  %107 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @MSCH(i64* %107, i32 7, i32 %108)
  %110 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @MSCH(i64* %110, i32 8, i32 %111)
  %113 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @MSCH(i64* %113, i32 9, i32 %114)
  %116 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @MSCH(i64* %116, i32 10, i32 %117)
  %119 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @MSCH(i64* %119, i32 11, i32 %120)
  %122 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @MSCH(i64* %122, i32 12, i32 %123)
  %125 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @MSCH(i64* %125, i32 13, i32 %126)
  %128 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @MSCH(i64* %128, i32 14, i32 %129)
  %131 = getelementptr inbounds [64 x i64], [64 x i64]* %5, i64 0, i64 0
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @MSCH(i64* %131, i32 15, i32 %132)
  br label %134

134:                                              ; preds = %85
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 16
  store i32 %136, i32* %7, align 4
  br label %14

137:                                              ; preds = %84, %14
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %152, %137
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %145
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %138

155:                                              ; preds = %138
  ret void
}

declare dso_local i32 @be32dec_vect(i64*, i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @RNDr(i64*, i64*, i32, i32) #1

declare dso_local i32 @MSCH(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
