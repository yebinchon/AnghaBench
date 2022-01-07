; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot_crypto.c_geliboot_crypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot_crypto.c_geliboot_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*)*, i32 (i32, i32*)*, i32 (i32, i32*)* }
%struct.aes_xts_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to setup decryption keys: %d\0A\00", align 1
@MODE_CBC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to setup IV: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to decrypt the entire input: %u != %zu\0A\00", align 1
@enc_xform_aes_xts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AES_XTS_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unsupported crypto algorithm #%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geliboot_crypt(i32 %0, i32 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.aes_xts_ctx, align 4
  %19 = alloca %struct.aes_xts_ctx*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %141 [
    i32 129, label %25
    i32 128, label %76
  ]

25:                                               ; preds = %7
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %14, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = call i32 @rijndael_makeKey(i32* %16, i32 %29, i64 %30, i8* %32)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* %21, align 4
  %38 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %21, align 4
  store i32 %39, i32* %8, align 4
  br label %145

40:                                               ; preds = %25
  %41 = load i32, i32* @MODE_CBC, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @rijndael_cipherInit(i32* %17, i32 %41, i32* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %21, align 4
  %48 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %21, align 4
  store i32 %49, i32* %8, align 4
  br label %145

50:                                               ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = mul i64 %55, 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @rijndael_blockDecrypt(i32* %17, i32* %16, i32* %54, i64 %56, i32* %57)
  store i32 %58, i32* %22, align 4
  br label %65

59:                                               ; preds = %50
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul i64 %61, 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @rijndael_blockEncrypt(i32* %17, i32* %16, i32* %60, i64 %62, i32* %63)
  store i32 %64, i32* %22, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %22, align 4
  %68 = sdiv i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %22, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  store i32 1, i32* %8, align 4
  br label %145

75:                                               ; preds = %65
  br label %144

76:                                               ; preds = %7
  %77 = load i64, i64* %14, align 8
  %78 = shl i64 %77, 1
  store i64 %78, i64* %20, align 8
  store %struct.aes_xts_ctx* %18, %struct.aes_xts_ctx** %19, align 8
  %79 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %19, align 8
  %80 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %79, i32 0, i32 1
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %20, align 8
  %83 = udiv i64 %82, 2
  %84 = call i32 @rijndael_set_key(i32* %80, i32* %81, i64 %83)
  %85 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %19, align 8
  %86 = getelementptr inbounds %struct.aes_xts_ctx, %struct.aes_xts_ctx* %85, i32 0, i32 0
  %87 = load i32*, i32** %13, align 8
  %88 = load i64, i64* %20, align 8
  %89 = udiv i64 %88, 16
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i64, i64* %20, align 8
  %92 = udiv i64 %91, 2
  %93 = call i32 @rijndael_set_key(i32* %86, i32* %90, i64 %92)
  %94 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @enc_xform_aes_xts, i32 0, i32 2), align 8
  %95 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %19, align 8
  %96 = ptrtoint %struct.aes_xts_ctx* %95 to i32
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 %94(i32 %96, i32* %97)
  %99 = load i32, i32* %10, align 4
  switch i32 %99, label %140 [
    i32 0, label %100
    i32 1, label %120
  ]

100:                                              ; preds = %76
  store i32 0, i32* %23, align 4
  br label %101

101:                                              ; preds = %115, %100
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %12, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @enc_xform_aes_xts, i32 0, i32 1), align 8
  %108 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %19, align 8
  %109 = ptrtoint %struct.aes_xts_ctx* %108 to i32
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %23, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 %107(i32 %109, i32* %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %117 = load i32, i32* %23, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %23, align 4
  br label %101

119:                                              ; preds = %101
  br label %140

120:                                              ; preds = %76
  store i32 0, i32* %23, align 4
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i32, i32* %23, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %12, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @enc_xform_aes_xts, i32 0, i32 0), align 8
  %128 = load %struct.aes_xts_ctx*, %struct.aes_xts_ctx** %19, align 8
  %129 = ptrtoint %struct.aes_xts_ctx* %128 to i32
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %23, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = call i32 %127(i32 %129, i32* %133)
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* @AES_XTS_BLOCKSIZE, align 4
  %137 = load i32, i32* %23, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %23, align 4
  br label %121

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %76, %139, %119
  br label %144

141:                                              ; preds = %7
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  store i32 1, i32* %8, align 4
  br label %145

144:                                              ; preds = %140, %75
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %141, %71, %46, %36
  %146 = load i32, i32* %8, align 4
  ret i32 %146
}

declare dso_local i32 @rijndael_makeKey(i32*, i32, i64, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @rijndael_cipherInit(i32*, i32, i32*) #1

declare dso_local i32 @rijndael_blockDecrypt(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @rijndael_blockEncrypt(i32*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @rijndael_set_key(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
