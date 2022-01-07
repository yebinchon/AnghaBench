; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_hash/sha512/cp/extr_hash_sha512_cp.c_SHA512_Transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_hash/sha512/cp/extr_hash_sha512_cp.c_SHA512_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*, i64*, i64*)* @SHA512_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512_Transform(i64* %0, i32* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @be64dec_vect(i64* %10, i32* %11, i32 128)
  %13 = load i64*, i64** %8, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 @memcpy(i64* %13, i64* %14, i32 64)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %136, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 80
  br i1 %18, label %19, label %139

19:                                               ; preds = %16
  %20 = load i64*, i64** %8, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @RNDr(i64* %20, i64* %21, i32 0, i32 %22)
  %24 = load i64*, i64** %8, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @RNDr(i64* %24, i64* %25, i32 1, i32 %26)
  %28 = load i64*, i64** %8, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @RNDr(i64* %28, i64* %29, i32 2, i32 %30)
  %32 = load i64*, i64** %8, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @RNDr(i64* %32, i64* %33, i32 3, i32 %34)
  %36 = load i64*, i64** %8, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @RNDr(i64* %36, i64* %37, i32 4, i32 %38)
  %40 = load i64*, i64** %8, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @RNDr(i64* %40, i64* %41, i32 5, i32 %42)
  %44 = load i64*, i64** %8, align 8
  %45 = load i64*, i64** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @RNDr(i64* %44, i64* %45, i32 6, i32 %46)
  %48 = load i64*, i64** %8, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @RNDr(i64* %48, i64* %49, i32 7, i32 %50)
  %52 = load i64*, i64** %8, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @RNDr(i64* %52, i64* %53, i32 8, i32 %54)
  %56 = load i64*, i64** %8, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @RNDr(i64* %56, i64* %57, i32 9, i32 %58)
  %60 = load i64*, i64** %8, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @RNDr(i64* %60, i64* %61, i32 10, i32 %62)
  %64 = load i64*, i64** %8, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @RNDr(i64* %64, i64* %65, i32 11, i32 %66)
  %68 = load i64*, i64** %8, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @RNDr(i64* %68, i64* %69, i32 12, i32 %70)
  %72 = load i64*, i64** %8, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @RNDr(i64* %72, i64* %73, i32 13, i32 %74)
  %76 = load i64*, i64** %8, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @RNDr(i64* %76, i64* %77, i32 14, i32 %78)
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @RNDr(i64* %80, i64* %81, i32 15, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %87

86:                                               ; preds = %19
  br label %139

87:                                               ; preds = %19
  %88 = load i64*, i64** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @MSCH(i64* %88, i32 0, i32 %89)
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @MSCH(i64* %91, i32 1, i32 %92)
  %94 = load i64*, i64** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @MSCH(i64* %94, i32 2, i32 %95)
  %97 = load i64*, i64** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @MSCH(i64* %97, i32 3, i32 %98)
  %100 = load i64*, i64** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @MSCH(i64* %100, i32 4, i32 %101)
  %103 = load i64*, i64** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @MSCH(i64* %103, i32 5, i32 %104)
  %106 = load i64*, i64** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @MSCH(i64* %106, i32 6, i32 %107)
  %109 = load i64*, i64** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @MSCH(i64* %109, i32 7, i32 %110)
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @MSCH(i64* %112, i32 8, i32 %113)
  %115 = load i64*, i64** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @MSCH(i64* %115, i32 9, i32 %116)
  %118 = load i64*, i64** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @MSCH(i64* %118, i32 10, i32 %119)
  %121 = load i64*, i64** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @MSCH(i64* %121, i32 11, i32 %122)
  %124 = load i64*, i64** %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @MSCH(i64* %124, i32 12, i32 %125)
  %127 = load i64*, i64** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @MSCH(i64* %127, i32 13, i32 %128)
  %130 = load i64*, i64** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @MSCH(i64* %130, i32 14, i32 %131)
  %133 = load i64*, i64** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @MSCH(i64* %133, i32 15, i32 %134)
  br label %136

136:                                              ; preds = %87
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 16
  store i32 %138, i32* %9, align 4
  br label %16

139:                                              ; preds = %86, %16
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %155, %139
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 8
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i64*, i64** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %5, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %148
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %143
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %140

158:                                              ; preds = %140
  ret void
}

declare dso_local i32 @be64dec_vect(i64*, i32*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @RNDr(i64*, i64*, i32, i32) #1

declare dso_local i32 @MSCH(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
