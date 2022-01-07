; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_test_pwd_seed_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_test_pwd_seed_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.crypto_bignum = type { i32 }

@SAE_MAX_PRIME_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SAE: pwd-seed\00", align 1
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SAE Hunting and Pecking\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SAE: pwd-value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32*, %struct.crypto_bignum*)* @sae_test_pwd_seed_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_test_pwd_seed_ffc(%struct.sae_data* %0, i32* %1, %struct.crypto_bignum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca %struct.crypto_bignum*, align 8
  %13 = alloca %struct.crypto_bignum*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  %18 = load i32, i32* @SAE_MAX_PRIME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %23 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %13, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @SHA256_MAC_LEN, align 4
  %32 = call i32 @wpa_hexdump_key(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @SHA256_MAC_LEN, align 4
  %35 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %43 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @sha256_prf_bits(i32* %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46, i32* %21, i64 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %167

51:                                               ; preds = %3
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %54 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @wpa_hexdump_key(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %21, i32 %57)
  %59 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %60 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %67 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @const_time_memcmp(i32* %21, i32 %65, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @const_time_fill_msb(i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = getelementptr inbounds i32, i32* %21, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = call i32 @const_time_select_u8(i32 %74, i32 %76, i32 0)
  %78 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %77, i32* %78, align 16
  store i32 -1, i32* %14, align 4
  %79 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %80 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %21, i32 %83)
  store %struct.crypto_bignum* %84, %struct.crypto_bignum** %12, align 8
  %85 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %86 = icmp ne %struct.crypto_bignum* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %51
  br label %161

88:                                               ; preds = %51
  %89 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %90 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 2, i32* %98, align 4
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %100 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %99, i32 4)
  store %struct.crypto_bignum* %100, %struct.crypto_bignum** %13, align 8
  br label %129

101:                                              ; preds = %88
  %102 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %104 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %103, i32 4)
  store %struct.crypto_bignum* %104, %struct.crypto_bignum** %13, align 8
  %105 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %106 = icmp eq %struct.crypto_bignum* %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %101
  %108 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %109 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %114 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %115 = call i64 @crypto_bignum_sub(i32 %112, %struct.crypto_bignum* %113, %struct.crypto_bignum* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %107
  %118 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %119 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %120 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %125 = call i64 @crypto_bignum_div(%struct.crypto_bignum* %118, i32 %123, %struct.crypto_bignum* %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117, %107, %101
  br label %161

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %97
  %130 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %131 = icmp ne %struct.crypto_bignum* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %161

133:                                              ; preds = %129
  %134 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %135 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %136 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %137 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %142 = call i32 @crypto_bignum_exptmod(%struct.crypto_bignum* %134, %struct.crypto_bignum* %135, i32 %140, %struct.crypto_bignum* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %161

146:                                              ; preds = %133
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @const_time_select_u8(i32 %147, i32 1, i32 0)
  store i32 %148, i32* %14, align 4
  %149 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %150 = call i32 @crypto_bignum_is_zero(%struct.crypto_bignum* %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @const_time_is_zero(i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @const_time_select_u8(i32 %152, i32 %153, i32 0)
  store i32 %154, i32* %14, align 4
  %155 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %156 = call i32 @crypto_bignum_is_one(%struct.crypto_bignum* %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @const_time_is_zero(i32 %157)
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @const_time_select_u8(i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %146, %145, %132, %127, %87
  %162 = load %struct.crypto_bignum*, %struct.crypto_bignum** %12, align 8
  %163 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %162, i32 1)
  %164 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %165 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %164, i32 1)
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %167

167:                                              ; preds = %161, %50
  %168 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i64 @sha256_prf_bits(i32*, i32, i8*, i32, i32, i32*, i64) #2

declare dso_local i32 @const_time_memcmp(i32*, i32, i32) #2

declare dso_local i32 @const_time_fill_msb(i32) #2

declare dso_local i32 @const_time_select_u8(i32, i32, i32) #2

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i32) #2

declare dso_local i64 @crypto_bignum_sub(i32, %struct.crypto_bignum*, %struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_div(%struct.crypto_bignum*, i32, %struct.crypto_bignum*) #2

declare dso_local i32 @crypto_bignum_exptmod(%struct.crypto_bignum*, %struct.crypto_bignum*, i32, %struct.crypto_bignum*) #2

declare dso_local i32 @crypto_bignum_is_zero(%struct.crypto_bignum*) #2

declare dso_local i32 @const_time_is_zero(i32) #2

declare dso_local i32 @crypto_bignum_is_one(%struct.crypto_bignum*) #2

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
