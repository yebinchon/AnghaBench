; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_element_ecc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_element_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@SAE_MAX_ECC_PRIME_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SAE: Not enough data for commit-element\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"SAE: Invalid coordinates in peer element\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"SAE: Peer commit-element(x)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SAE: Peer commit-element(y)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"SAE: Peer element is not on curve\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32**, i32*)* @sae_parse_commit_element_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_parse_commit_element_ecc(%struct.sae_data* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @SAE_MAX_ECC_PRIME_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %16 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = load i32*, i32** %7, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = ptrtoint i32* %22 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = icmp sgt i64 %21, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

34:                                               ; preds = %3
  %35 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %36 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nuw i64 4, %12
  %41 = trunc i64 %40 to i32
  %42 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %43 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @crypto_bignum_to_bin(i32 %39, i32* %14, i32 %41, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

51:                                               ; preds = %34
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %55 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @os_memcmp(i32* %53, i32* %14, i32 %58)
  %60 = icmp sge i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %51
  %62 = load i32**, i32*** %6, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %65 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %72 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @os_memcmp(i32* %70, i32* %14, i32 %75)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %61, %51
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

82:                                               ; preds = %61
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i32**, i32*** %6, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %87 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %85, i32 %90)
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32**, i32*** %6, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %96 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  %102 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %103 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wpa_hexdump(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %101, i32 %106)
  %108 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %109 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @crypto_ec_point_deinit(i32* %112, i32 0)
  %114 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %115 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32**, i32*** %6, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = call i32* @crypto_ec_point_from_bin(i32 %118, i32* %120)
  %122 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %123 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  store i32* %121, i32** %125, align 8
  %126 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %127 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %82
  %133 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

134:                                              ; preds = %82
  %135 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %136 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %135, i32 0, i32 0
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %141 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @crypto_ec_point_is_on_curve(i32 %139, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %134
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = call i32 @wpa_printf(i32 %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

151:                                              ; preds = %134
  %152 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %153 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 2, %156
  %158 = load i32**, i32*** %6, align 8
  %159 = load i32*, i32** %158, align 8
  %160 = sext i32 %157 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %158, align 8
  %162 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %162, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %163

163:                                              ; preds = %151, %147, %132, %78, %49, %30
  %164 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %164)
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @crypto_bignum_to_bin(i32, i32*, i32, i32) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @crypto_ec_point_deinit(i32*, i32) #2

declare dso_local i32* @crypto_ec_point_from_bin(i32, i32*) #2

declare dso_local i32 @crypto_ec_point_is_on_curve(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
