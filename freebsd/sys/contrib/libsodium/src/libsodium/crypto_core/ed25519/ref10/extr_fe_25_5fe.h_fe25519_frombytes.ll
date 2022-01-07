; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_frombytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_fe_25_5fe.h_fe25519_frombytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe25519_frombytes(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @load_4(i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = call i32 @load_3(i8* %28)
  %30 = shl i32 %29, 6
  store i32 %30, i32* %6, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 7
  %33 = call i32 @load_3(i8* %32)
  %34 = shl i32 %33, 5
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 10
  %37 = call i32 @load_3(i8* %36)
  %38 = shl i32 %37, 3
  store i32 %38, i32* %8, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 13
  %41 = call i32 @load_3(i8* %40)
  %42 = shl i32 %41, 2
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 16
  %45 = call i32 @load_4(i8* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 20
  %48 = call i32 @load_3(i8* %47)
  %49 = shl i32 %48, 7
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 23
  %52 = call i32 @load_3(i8* %51)
  %53 = shl i32 %52, 5
  store i32 %53, i32* %12, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 26
  %56 = call i32 @load_3(i8* %55)
  %57 = shl i32 %56, 4
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 29
  %60 = call i32 @load_3(i8* %59)
  %61 = and i32 %60, 8388607
  %62 = shl i32 %61, 2
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 16777216
  %65 = ashr i32 %64, 25
  store i32 %65, i32* %24, align 4
  %66 = load i32, i32* %24, align 4
  %67 = mul nsw i32 %66, 19
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %24, align 4
  %71 = mul nsw i32 %70, 33554432
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 16777216
  %76 = ashr i32 %75, 25
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %16, align 4
  %81 = mul nsw i32 %80, 33554432
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 16777216
  %86 = ashr i32 %85, 25
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %18, align 4
  %91 = mul nsw i32 %90, 33554432
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 16777216
  %96 = ashr i32 %95, 25
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %20, align 4
  %101 = mul nsw i32 %100, 33554432
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 16777216
  %106 = ashr i32 %105, 25
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %22, align 4
  %111 = mul nsw i32 %110, 33554432
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 33554432
  %116 = ashr i32 %115, 26
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %120, 67108864
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 33554432
  %126 = ashr i32 %125, 26
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %17, align 4
  %131 = mul nsw i32 %130, 67108864
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 33554432
  %136 = ashr i32 %135, 26
  store i32 %136, i32* %19, align 4
  %137 = load i32, i32* %19, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %19, align 4
  %141 = mul nsw i32 %140, 67108864
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 33554432
  %146 = ashr i32 %145, 26
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %21, align 4
  %151 = mul nsw i32 %150, 67108864
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 33554432
  %156 = ashr i32 %155, 26
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %23, align 4
  %161 = mul nsw i32 %160, 67108864
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %3, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  store i64 %165, i64* %167, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64*, i64** %3, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 1
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %3, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64*, i64** %3, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64*, i64** %3, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 4
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64*, i64** %3, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 5
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = load i64*, i64** %3, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 6
  store i64 %189, i64* %191, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64*, i64** %3, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 7
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64*, i64** %3, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 8
  store i64 %197, i64* %199, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = load i64*, i64** %3, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 9
  store i64 %201, i64* %203, align 8
  ret void
}

declare dso_local i32 @load_4(i8*) #1

declare dso_local i32 @load_3(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
