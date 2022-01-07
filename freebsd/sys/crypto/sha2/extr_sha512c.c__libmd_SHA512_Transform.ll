; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha512c.c__libmd_SHA512_Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/sha2/extr_sha512c.c__libmd_SHA512_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_BLOCK_LENGTH = common dso_local global i32 0, align 4
@SHA512_DIGEST_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @SHA512_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Transform(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [80 x i64], align 16
  %6 = alloca [8 x i64], align 16
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @SHA512_BLOCK_LENGTH, align 4
  %13 = call i32 @be64dec_vect(i64* %10, i8* %11, i32 %12)
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %15 = load i64*, i64** %3, align 8
  %16 = load i32, i32* @SHA512_DIGEST_LENGTH, align 4
  %17 = call i32 @memcpy(i64* %14, i64* %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %138, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 80
  br i1 %20, label %21, label %141

21:                                               ; preds = %18
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %23 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @RNDr(i64* %22, i64* %23, i32 0, i32 %24)
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %27 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @RNDr(i64* %26, i64* %27, i32 1, i32 %28)
  %30 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %31 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @RNDr(i64* %30, i64* %31, i32 2, i32 %32)
  %34 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %35 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @RNDr(i64* %34, i64* %35, i32 3, i32 %36)
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @RNDr(i64* %38, i64* %39, i32 4, i32 %40)
  %42 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @RNDr(i64* %42, i64* %43, i32 5, i32 %44)
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @RNDr(i64* %46, i64* %47, i32 6, i32 %48)
  %50 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RNDr(i64* %50, i64* %51, i32 7, i32 %52)
  %54 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RNDr(i64* %54, i64* %55, i32 8, i32 %56)
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %59 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @RNDr(i64* %58, i64* %59, i32 9, i32 %60)
  %62 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %63 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @RNDr(i64* %62, i64* %63, i32 10, i32 %64)
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %67 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @RNDr(i64* %66, i64* %67, i32 11, i32 %68)
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %71 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @RNDr(i64* %70, i64* %71, i32 12, i32 %72)
  %74 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %75 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @RNDr(i64* %74, i64* %75, i32 13, i32 %76)
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %79 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @RNDr(i64* %78, i64* %79, i32 14, i32 %80)
  %82 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 0
  %83 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @RNDr(i64* %82, i64* %83, i32 15, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 64
  br i1 %87, label %88, label %89

88:                                               ; preds = %21
  br label %141

89:                                               ; preds = %21
  %90 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @MSCH(i64* %90, i32 0, i32 %91)
  %93 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MSCH(i64* %93, i32 1, i32 %94)
  %96 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @MSCH(i64* %96, i32 2, i32 %97)
  %99 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @MSCH(i64* %99, i32 3, i32 %100)
  %102 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @MSCH(i64* %102, i32 4, i32 %103)
  %105 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @MSCH(i64* %105, i32 5, i32 %106)
  %108 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @MSCH(i64* %108, i32 6, i32 %109)
  %111 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @MSCH(i64* %111, i32 7, i32 %112)
  %114 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @MSCH(i64* %114, i32 8, i32 %115)
  %117 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @MSCH(i64* %117, i32 9, i32 %118)
  %120 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @MSCH(i64* %120, i32 10, i32 %121)
  %123 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @MSCH(i64* %123, i32 11, i32 %124)
  %126 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @MSCH(i64* %126, i32 12, i32 %127)
  %129 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @MSCH(i64* %129, i32 13, i32 %130)
  %132 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @MSCH(i64* %132, i32 14, i32 %133)
  %135 = getelementptr inbounds [80 x i64], [80 x i64]* %5, i64 0, i64 0
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @MSCH(i64* %135, i32 15, i32 %136)
  br label %138

138:                                              ; preds = %89
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 16
  store i32 %140, i32* %7, align 4
  br label %18

141:                                              ; preds = %88, %18
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 8
  br i1 %144, label %145, label %159

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %6, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, %149
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %142

159:                                              ; preds = %142
  ret void
}

declare dso_local i32 @be64dec_vect(i64*, i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @RNDr(i64*, i64*, i32, i32) #1

declare dso_local i32 @MSCH(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
