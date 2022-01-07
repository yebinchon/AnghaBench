; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_decrypt_ecb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/aesni/extr_aesni_wrap.c_aesni_decrypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks8 = type { i8** }

@AES_BLOCK_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aesni_decrypt_ecb(i32 %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
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
  %17 = load i64, i64* @AES_BLOCK_LEN, align 8
  %18 = load i64, i64* @AES_BLOCK_LEN, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @AES_BLOCK_LEN, align 8
  %21 = udiv i64 %19, %20
  %22 = udiv i64 %21, 8
  store i64 %22, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %133, %5
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %16, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %23
  %28 = load i32*, i32** %9, align 8
  %29 = bitcast i32* %28 to %struct.blocks8*
  store %struct.blocks8* %29, %struct.blocks8** %13, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = bitcast i32* %30 to %struct.blocks8*
  store %struct.blocks8* %31, %struct.blocks8** %14, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %36 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %41 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %46 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %51 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %56 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 4
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %61 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 5
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %66 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 6
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.blocks8*, %struct.blocks8** %13, align 8
  %71 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 7
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %76 = call i32 @aesni_dec8(i32 %33, i8* %34, i8* %39, i8* %44, i8* %49, i8* %54, i8* %59, i8* %64, i8* %69, i8* %74, i8** %75)
  %77 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 0
  %78 = load i8*, i8** %77, align 16
  %79 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %80 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %78, i8** %82, align 8
  %83 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %86 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* %84, i8** %88, align 8
  %89 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 2
  %90 = load i8*, i8** %89, align 16
  %91 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %92 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %91, i32 0, i32 0
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  store i8* %90, i8** %94, align 8
  %95 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %98 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 3
  store i8* %96, i8** %100, align 8
  %101 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 4
  %102 = load i8*, i8** %101, align 16
  %103 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %104 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 4
  store i8* %102, i8** %106, align 8
  %107 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 5
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %110 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 5
  store i8* %108, i8** %112, align 8
  %113 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 6
  %114 = load i8*, i8** %113, align 16
  %115 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %116 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 6
  store i8* %114, i8** %118, align 8
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %12, i64 0, i64 7
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.blocks8*, %struct.blocks8** %14, align 8
  %122 = getelementptr inbounds %struct.blocks8, %struct.blocks8* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 7
  store i8* %120, i8** %124, align 8
  %125 = load i64, i64* @AES_BLOCK_LEN, align 8
  %126 = mul i64 %125, 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 %126
  store i32* %128, i32** %9, align 8
  %129 = load i64, i64* @AES_BLOCK_LEN, align 8
  %130 = mul i64 %129, 8
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %130
  store i32* %132, i32** %10, align 8
  br label %133

133:                                              ; preds = %27
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %15, align 8
  br label %23

136:                                              ; preds = %23
  %137 = load i64, i64* %15, align 8
  %138 = mul i64 %137, 8
  store i64 %138, i64* %15, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @AES_BLOCK_LEN, align 8
  %141 = udiv i64 %139, %140
  store i64 %141, i64* %16, align 8
  br label %142

142:                                              ; preds = %164, %136
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %16, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i8*, i8** %7, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = bitcast i32* %150 to i8**
  %152 = call i32 @_mm_loadu_si128(i8** %151)
  %153 = call i8* @aesni_dec(i32 %148, i8* %149, i32 %152)
  store i8* %153, i8** %11, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = bitcast i32* %154 to i8**
  %156 = load i8*, i8** %11, align 8
  %157 = call i32 @_mm_storeu_si128(i8** %155, i8* %156)
  %158 = load i64, i64* @AES_BLOCK_LEN, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 %158
  store i32* %160, i32** %9, align 8
  %161 = load i64, i64* @AES_BLOCK_LEN, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 %161
  store i32* %163, i32** %10, align 8
  br label %164

164:                                              ; preds = %146
  %165 = load i64, i64* %15, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %15, align 8
  br label %142

167:                                              ; preds = %142
  ret void
}

declare dso_local i32 @aesni_dec8(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**) #1

declare dso_local i8* @aesni_dec(i32, i8*, i32) #1

declare dso_local i32 @_mm_loadu_si128(i8**) #1

declare dso_local i32 @_mm_storeu_si128(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
