; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_encrypt_ecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_encrypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks8 = type { i8** }

@AES_BLOCK_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aesni_encrypt_ecb(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [8 x i8*], align 16
  %13 = alloca %struct.blocks8*, align 8
  %14 = alloca %struct.blocks8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @AES_BLOCK_LEN, align 8
  %19 = udiv i64 %17, %18
  %20 = udiv i64 %19, 8
  store i64 %20, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %21

21:                                               ; preds = %131, %5
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* %16, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %134

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = bitcast i32* %26 to %struct.blocks8*
  store %struct.blocks8* %27, %struct.blocks8** %14, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = bitcast i32* %28 to %struct.blocks8*
  store %struct.blocks8* %29, %struct.blocks8** %13, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %34 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %39 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %44 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %49 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 3
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %54 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 4
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %59 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 5
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %64 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 6
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %69 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 7
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %74 = call i32 @aesni_enc8(i32 %31, i8* %32, i8* %37, i8* %42, i8* %47, i8* %52, i8* %57, i8* %62, i8* %67, i8* %72, i8** %73)
  %75 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %76 = load i8*, i8** %75, align 16
  %77 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %78 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %84 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  store i8* %82, i8** %86, align 8
  %87 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 2
  %88 = load i8*, i8** %87, align 16
  %89 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %90 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 2
  store i8* %88, i8** %92, align 8
  %93 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 3
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %96 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 3
  store i8* %94, i8** %98, align 8
  %99 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 4
  %100 = load i8*, i8** %99, align 16
  %101 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %102 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 4
  store i8* %100, i8** %104, align 8
  %105 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 5
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %108 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 5
  store i8* %106, i8** %110, align 8
  %111 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 6
  %112 = load i8*, i8** %111, align 16
  %113 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %114 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 6
  store i8* %112, i8** %116, align 8
  %117 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 7
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %120 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %119, i32 0, i32 0
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 7
  store i8* %118, i8** %122, align 8
  %123 = load i64, i64* @AES_BLOCK_LEN, align 8
  %124 = mul i64 %123, 8
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 %124
  store i32* %126, i32** %9, align 8
  %127 = load i64, i64* @AES_BLOCK_LEN, align 8
  %128 = mul i64 %127, 8
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 %128
  store i32* %130, i32** %10, align 8
  br label %131

131:                                              ; preds = %25
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %15, align 8
  br label %21

134:                                              ; preds = %21
  %135 = load i64, i64* %15, align 8
  %136 = mul i64 %135, 8
  store i64 %136, i64* %15, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @AES_BLOCK_LEN, align 8
  %139 = udiv i64 %137, %138
  store i64 %139, i64* %16, align 8
  br label %140

140:                                              ; preds = %162, %134
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i8*, i8** %7, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = bitcast i32* %148 to i8**
  %150 = call i32 @_mm_loadu_si128(i8** %149)
  %151 = call i8* @aesni_enc(i32 %146, i8* %147, i32 %150)
  store i8* %151, i8** %11, align 8
  %152 = load i32*, i32** %10, align 8
  %153 = bitcast i32* %152 to i8**
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @_mm_storeu_si128(i8** %153, i8* %154)
  %156 = load i64, i64* @AES_BLOCK_LEN, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %9, align 8
  %159 = load i64, i64* @AES_BLOCK_LEN, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 %159
  store i32* %161, i32** %10, align 8
  br label %162

162:                                              ; preds = %144
  %163 = load i64, i64* %15, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %15, align 8
  br label %140

165:                                              ; preds = %140
  ret void
}

declare dso_local i32 @aesni_enc8(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**) #1

declare dso_local i8* @aesni_enc(i32, i8*, i32) #1

declare dso_local i32 @_mm_loadu_si128(i8**) #1

declare dso_local i32 @_mm_storeu_si128(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
