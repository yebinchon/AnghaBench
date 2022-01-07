; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_element_ffc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_element_ffc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.crypto_bignum* }
%struct.crypto_bignum = type { i32 }

@__const.sae_parse_commit_element_ffc.one_bin = private unnamed_addr constant [1 x i32] [i32 1], align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SAE: Not enough data for commit-element\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SAE: Peer commit-element\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SAE: Invalid peer element\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"SAE: Invalid peer element (scalar-op)\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32**, i32*)* @sae_parse_commit_element_ffc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_parse_commit_element_ffc(%struct.sae_data* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  %9 = alloca %struct.crypto_bignum*, align 8
  %10 = alloca [1 x i32], align 4
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast [1 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([1 x i32]* @__const.sae_parse_commit_element_ffc.one_bin to i8*), i64 4, i1 false)
  %12 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %13 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load i32*, i32** %7, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %18 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = icmp sgt i64 %17, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %29, i32* %4, align 4
  br label %164

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load i32**, i32*** %6, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %35 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %33, i32 %38)
  %40 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %41 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load %struct.crypto_bignum*, %struct.crypto_bignum** %43, align 8
  %45 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %44, i32 0)
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %49 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @crypto_bignum_init_set(i32* %47, i32 %52)
  %54 = bitcast i8* %53 to %struct.crypto_bignum*
  %55 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %56 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store %struct.crypto_bignum* %54, %struct.crypto_bignum** %58, align 8
  %59 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %60 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load %struct.crypto_bignum*, %struct.crypto_bignum** %62, align 8
  %64 = icmp eq %struct.crypto_bignum* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %30
  %66 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %66, i32* %4, align 4
  br label %164

67:                                               ; preds = %30
  %68 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %68, %struct.crypto_bignum** %8, align 8
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %70 = call i8* @crypto_bignum_init_set(i32* %69, i32 4)
  %71 = bitcast i8* %70 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %71, %struct.crypto_bignum** %9, align 8
  %72 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %73 = icmp ne %struct.crypto_bignum* %72, null
  br i1 %73, label %74, label %112

74:                                               ; preds = %67
  %75 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %76 = icmp ne %struct.crypto_bignum* %75, null
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %79 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %84 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %85 = call i64 @crypto_bignum_sub(i32 %82, %struct.crypto_bignum* %83, %struct.crypto_bignum* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %77
  %88 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %89 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  %92 = load %struct.crypto_bignum*, %struct.crypto_bignum** %91, align 8
  %93 = call i64 @crypto_bignum_is_zero(%struct.crypto_bignum* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %87
  %96 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %97 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load %struct.crypto_bignum*, %struct.crypto_bignum** %99, align 8
  %101 = call i64 @crypto_bignum_is_one(%struct.crypto_bignum* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %95
  %104 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %105 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load %struct.crypto_bignum*, %struct.crypto_bignum** %107, align 8
  %109 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %110 = call i64 @crypto_bignum_cmp(%struct.crypto_bignum* %108, %struct.crypto_bignum* %109)
  %111 = icmp sge i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %103, %95, %87, %77, %74, %67
  %113 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %114 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %113, i32 0)
  %115 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %116 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %115, i32 0)
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %119, i32* %4, align 4
  br label %164

120:                                              ; preds = %103
  %121 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %122 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %121, i32 0)
  %123 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %124 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load %struct.crypto_bignum*, %struct.crypto_bignum** %126, align 8
  %128 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %129 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %134 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %139 = call i64 @crypto_bignum_exptmod(%struct.crypto_bignum* %127, i32 %132, i32 %137, %struct.crypto_bignum* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %120
  %142 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %143 = call i64 @crypto_bignum_is_one(%struct.crypto_bignum* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %141, %120
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 @wpa_printf(i32 %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %149 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %148, i32 0)
  %150 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %150, i32* %4, align 4
  br label %164

151:                                              ; preds = %141
  %152 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %153 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %152, i32 0)
  %154 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %155 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32**, i32*** %6, align 8
  %160 = load i32*, i32** %159, align 8
  %161 = sext i32 %158 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %159, align 8
  %163 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %151, %145, %112, %65, %26
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #2

declare dso_local i8* @crypto_bignum_init_set(i32*, i32) #2

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #2

declare dso_local i64 @crypto_bignum_sub(i32, %struct.crypto_bignum*, %struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_is_zero(%struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_is_one(%struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_cmp(%struct.crypto_bignum*, %struct.crypto_bignum*) #2

declare dso_local i64 @crypto_bignum_exptmod(%struct.crypto_bignum*, i32, i32, %struct.crypto_bignum*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
