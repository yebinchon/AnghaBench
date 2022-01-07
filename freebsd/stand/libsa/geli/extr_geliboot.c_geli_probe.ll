; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/geli/extr_geliboot.c_geli_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geli_dev = type { i8*, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.hmac_ctx = type { i32 }

@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@G_ELI_DATAIVKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Calculating GELI Decryption Key for %s %d iterations...\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Bad GELI key: bad password?\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to decrypt GELI master key: %d\0A\00", align 1
@G_ELI_FLAG_AUTH = common dso_local global i32 0, align 4
@G_ELI_DATAKEYLEN = common dso_local global i32 0, align 4
@G_ELI_MAXKEYLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geli_dev*, i8*, i32*)* @geli_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geli_probe(%struct.geli_dev* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.geli_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hmac_ctx, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.geli_dev* %0, %struct.geli_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = bitcast i32* %24 to i32**
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %31 = call i32 @memcpy(i32** %28, i32* %29, i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %34 = call i32 @explicit_bzero(i32* %32, i32 %33)
  br label %142

35:                                               ; preds = %3
  %36 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %37 = call i64 @geli_findkey(%struct.geli_dev* %36, i32* %24)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %142

40:                                               ; preds = %35
  %41 = call i32 @g_eli_crypto_hmac_init(%struct.hmac_ctx* %13, i32* null, i32 0)
  %42 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %43 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %200

48:                                               ; preds = %40
  %49 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %50 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %56 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx* %13, i32* %58, i32 8)
  %60 = load i8*, i8** %6, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = call i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx* %13, i32* %61, i32 %63)
  br label %105

65:                                               ; preds = %48
  %66 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %67 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %65
  %72 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %73 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %76 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %74, i64 %78)
  %80 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %16, align 8
  %83 = alloca i32, i64 %81, align 16
  store i64 %81, i64* %17, align 8
  %84 = mul nuw i64 4, %81
  %85 = trunc i64 %84 to i32
  %86 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %87 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %92 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @pkcs5v2_genkey(i32* %83, i32 %85, i32* %89, i32 8, i8* %90, i32 %95)
  %97 = mul nuw i64 4, %81
  %98 = trunc i64 %97 to i32
  %99 = call i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx* %13, i32* %83, i32 %98)
  %100 = mul nuw i64 4, %81
  %101 = trunc i64 %100 to i32
  %102 = call i32 @explicit_bzero(i32* %83, i32 %101)
  %103 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %71, %65
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105
  %107 = call i32 @g_eli_crypto_hmac_final(%struct.hmac_ctx* %13, i32* %21, i32 0)
  %108 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %109 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %108, i32 0, i32 2
  %110 = call i32 @g_eli_mkey_decrypt_any(%struct.TYPE_4__* %109, i32* %21, i32* %24, i32* %12)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  %114 = mul nuw i64 4, %23
  %115 = trunc i64 %114 to i32
  %116 = call i32 @explicit_bzero(i32* %24, i32 %115)
  %117 = mul nuw i64 4, %19
  %118 = trunc i64 %117 to i32
  %119 = call i32 @explicit_bzero(i32* %21, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %200

122:                                              ; preds = %106
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = mul nuw i64 4, %23
  %127 = trunc i64 %126 to i32
  %128 = call i32 @explicit_bzero(i32* %24, i32 %127)
  %129 = mul nuw i64 4, %19
  %130 = trunc i64 %129 to i32
  %131 = call i32 @explicit_bzero(i32* %21, i32 %130)
  %132 = load i32, i32* %14, align 4
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %200

135:                                              ; preds = %122
  %136 = call i32 @geli_add_key(i32* %21)
  %137 = mul nuw i64 4, %19
  %138 = trunc i64 %137 to i32
  %139 = call i32 @explicit_bzero(i32* %21, i32 %138)
  br label %140

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141, %39, %27
  %143 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %144 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @bcopy(i32* %24, i32 %146, i32 4)
  %148 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %149 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @bcopy(i32* %24, i32 %151, i32 4)
  %153 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %153, i32** %11, align 8
  %154 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %155 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @G_ELI_FLAG_AUTH, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %142
  %162 = load i32*, i32** %11, align 8
  %163 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %164 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @G_ELI_DATAKEYLEN, align 4
  %168 = call i32 @bcopy(i32* %162, i32 %166, i32 %167)
  br label %177

169:                                              ; preds = %142
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* @G_ELI_MAXKEYLEN, align 4
  %172 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %173 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @g_eli_crypto_hmac(i32* %170, i32 %171, i32* bitcast ([2 x i8]* @.str.3 to i32*), i32 1, i32 %175, i32 0)
  br label %177

177:                                              ; preds = %169, %161
  %178 = mul nuw i64 4, %23
  %179 = trunc i64 %178 to i32
  %180 = call i32 @explicit_bzero(i32* %24, i32 %179)
  %181 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %182 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  switch i32 %184, label %186 [
    i32 128, label %185
  ]

185:                                              ; preds = %177
  br label %199

186:                                              ; preds = %177
  %187 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %188 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = call i32 @SHA256_Init(i32* %189)
  %191 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %192 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load %struct.geli_dev*, %struct.geli_dev** %5, align 8
  %195 = getelementptr inbounds %struct.geli_dev, %struct.geli_dev* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @SHA256_Update(i32* %193, i32 %197, i32 4)
  br label %199

199:                                              ; preds = %186, %185
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %200

200:                                              ; preds = %199, %125, %113, %47
  %201 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #2

declare dso_local i32 @explicit_bzero(i32*, i32) #2

declare dso_local i64 @geli_findkey(%struct.geli_dev*, i32*) #2

declare dso_local i32 @g_eli_crypto_hmac_init(%struct.hmac_ctx*, i32*, i32) #2

declare dso_local i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pkcs5v2_genkey(i32*, i32, i32*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @g_eli_crypto_hmac_final(%struct.hmac_ctx*, i32*, i32) #2

declare dso_local i32 @g_eli_mkey_decrypt_any(%struct.TYPE_4__*, i32*, i32*, i32*) #2

declare dso_local i32 @geli_add_key(i32*) #2

declare dso_local i32 @bcopy(i32*, i32, i32) #2

declare dso_local i32 @g_eli_crypto_hmac(i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @SHA256_Init(i32*) #2

declare dso_local i32 @SHA256_Update(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
