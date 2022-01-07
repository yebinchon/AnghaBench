; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_pwe_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_derive_pwe_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.crypto_bignum* }
%struct.crypto_bignum = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SAE: password\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SAE: Failed to derive PWE\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SAE: counter = %02u\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"SAE: Use PWE from counter = %02u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*, i32*, i32*, i64, i8*)* @sae_derive_pwe_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_derive_pwe_ffc(%struct.sae_data* %0, i32* %1, i32* %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.sae_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [3 x i32*], align 16
  %19 = alloca [3 x i64], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.crypto_bignum*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %15, align 4
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = mul nsw i32 2, %30
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %16, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  store i32 0, i32* %21, align 4
  %35 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 8
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %24, align 8
  %42 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %43 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load %struct.crypto_bignum*, %struct.crypto_bignum** %45, align 8
  %47 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %46, i32 1)
  %48 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %49 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %51, align 8
  %52 = load i64, i64* %24, align 8
  %53 = mul i64 %52, 2
  %54 = call i32* @os_zalloc(i64 %53)
  store i32* %54, i32** %25, align 8
  %55 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %55, %struct.crypto_bignum** %23, align 8
  %56 = load i32*, i32** %25, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %6
  %59 = load %struct.crypto_bignum*, %struct.crypto_bignum** %23, align 8
  %60 = icmp ne %struct.crypto_bignum* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %6
  br label %188

62:                                               ; preds = %58
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @wpa_hexdump_ascii_key(i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %64, i64 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @sae_pwd_seed_key(i32* %67, i32* %68, i32* %34)
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  store i32* %70, i32** %71, align 16
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 0
  store i64 %72, i64* %73, align 16
  store i64 1, i64* %20, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %62
  %77 = load i8*, i8** %12, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %20, align 8
  %80 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 %79
  store i32* %78, i32** %80, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i64 @os_strlen(i8* %81)
  %83 = load i64, i64* %20, align 8
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 %83
  store i64 %82, i64* %84, align 8
  %85 = load i64, i64* %20, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %87

87:                                               ; preds = %76, %62
  %88 = load i64, i64* %20, align 8
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 %88
  store i32* %13, i32** %89, align 8
  %90 = load i64, i64* %20, align 8
  %91 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 %90
  store i64 4, i64* %91, align 8
  %92 = load i64, i64* %20, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %20, align 8
  %94 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %95 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dragonfly_min_pwe_loop_iter(i32 %96)
  store i32 %97, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %170, %87
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ true, %98 ], [ %105, %102 ]
  br i1 %107, label %108, label %173

108:                                              ; preds = %106
  %109 = load i32, i32* @SHA256_MAC_LEN, align 4
  %110 = zext i32 %109 to i64
  %111 = call i8* @llvm.stacksave()
  store i8* %111, i8** %26, align 8
  %112 = alloca i32, i64 %110, align 16
  store i64 %110, i64* %27, align 8
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %113, 200
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 3, i32* %29, align 4
  br label %166

118:                                              ; preds = %108
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = mul nuw i64 4, %32
  %123 = trunc i64 %122 to i32
  %124 = load i64, i64* %20, align 8
  %125 = getelementptr inbounds [3 x i32*], [3 x i32*]* %18, i64 0, i64 0
  %126 = getelementptr inbounds [3 x i64], [3 x i64]* %19, i64 0, i64 0
  %127 = call i64 @hmac_sha256_vector(i32* %34, i32 %123, i64 %124, i32** %125, i64* %126, i32* %112)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  store i32 3, i32* %29, align 4
  br label %166

130:                                              ; preds = %118
  %131 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %132 = load %struct.crypto_bignum*, %struct.crypto_bignum** %23, align 8
  %133 = call i32 @sae_test_pwd_seed_ffc(%struct.sae_data* %131, i32* %112, %struct.crypto_bignum* %132)
  store i32 %133, i32* %28, align 4
  %134 = load i32, i32* %28, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 3, i32* %29, align 4
  br label %166

137:                                              ; preds = %130
  %138 = load %struct.crypto_bignum*, %struct.crypto_bignum** %23, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = load i64, i64* %24, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %24, align 8
  %144 = call i64 @crypto_bignum_to_bin(%struct.crypto_bignum* %138, i32* %141, i64 %142, i64 %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  store i32 3, i32* %29, align 4
  br label %166

147:                                              ; preds = %137
  %148 = load i32, i32* %21, align 4
  %149 = load i32*, i32** %25, align 8
  %150 = load i32*, i32** %25, align 8
  %151 = load i64, i64* %24, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i64, i64* %24, align 8
  %154 = load i32*, i32** %25, align 8
  %155 = call i32 @const_time_select_bin(i32 %148, i32* %149, i32* %152, i64 %153, i32* %154)
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @const_time_select_u8(i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %28, align 4
  %161 = call i32 @const_time_eq_u8(i32 %160, i32 1)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @const_time_select_u8(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %21, align 4
  store i32 0, i32* %29, align 4
  br label %166

166:                                              ; preds = %147, %146, %136, %129, %115
  %167 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %29, align 4
  switch i32 %168, label %204 [
    i32 0, label %169
    i32 3, label %173
  ]

169:                                              ; preds = %166
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %98

173:                                              ; preds = %166, %106
  %174 = load i32, i32* %21, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %188

177:                                              ; preds = %173
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %25, align 8
  %182 = load i64, i64* %24, align 8
  %183 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %181, i64 %182)
  %184 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %185 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %184, i32 0, i32 0
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  store %struct.crypto_bignum* %183, %struct.crypto_bignum** %187, align 8
  br label %188

188:                                              ; preds = %177, %176, %61
  %189 = load %struct.crypto_bignum*, %struct.crypto_bignum** %23, align 8
  %190 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %189, i32 1)
  %191 = load i32*, i32** %25, align 8
  %192 = load i64, i64* %24, align 8
  %193 = mul i64 %192, 2
  %194 = call i32 @bin_clear_free(i32* %191, i64 %193)
  %195 = load %struct.sae_data*, %struct.sae_data** %7, align 8
  %196 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load %struct.crypto_bignum*, %struct.crypto_bignum** %198, align 8
  %200 = icmp ne %struct.crypto_bignum* %199, null
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 0, i32 -1
  store i32 1, i32* %29, align 4
  %203 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %203)
  ret i32 %202

204:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

declare dso_local i32* @os_zalloc(i64) #2

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #2

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @sae_pwd_seed_key(i32*, i32*, i32*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @dragonfly_min_pwe_loop_iter(i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @hmac_sha256_vector(i32*, i32, i64, i32**, i64*, i32*) #2

declare dso_local i32 @sae_test_pwd_seed_ffc(%struct.sae_data*, i32*, %struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_to_bin(%struct.crypto_bignum*, i32*, i64, i64) #2

declare dso_local i32 @const_time_select_bin(i32, i32*, i32*, i64, i32*) #2

declare dso_local i32 @const_time_select_u8(i32, i32, i32) #2

declare dso_local i32 @const_time_eq_u8(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i64) #2

declare dso_local i32 @bin_clear_free(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
