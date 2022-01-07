; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { i64, %struct.TYPE_2__*, %struct.crypto_bignum* }
%struct.TYPE_2__ = type { i32, %struct.crypto_bignum* }
%struct.crypto_bignum = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"SAE: Not enough data for scalar\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@SAE_ACCEPTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"SAE: Do not accept re-use of previous peer-commit-scalar\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SAE: Invalid peer scalar\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"SAE: Peer commit-scalar\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sae_data*, i32**, i32*)* @sae_parse_commit_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sae_parse_commit_scalar(%struct.sae_data* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sae_data*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  store %struct.sae_data* %0, %struct.sae_data** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %10 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = load i32*, i32** %7, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %15 to i64
  %19 = ptrtoint i32* %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 4
  %22 = icmp sgt i64 %14, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %26, i32* %4, align 4
  br label %114

27:                                               ; preds = %3
  %28 = load i32**, i32*** %6, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %31 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* %29, i32 %34)
  store %struct.crypto_bignum* %35, %struct.crypto_bignum** %8, align 8
  %36 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %37 = icmp eq %struct.crypto_bignum* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %39, i32* %4, align 4
  br label %114

40:                                               ; preds = %27
  %41 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %42 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SAE_ACCEPTED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %48 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %47, i32 0, i32 2
  %49 = load %struct.crypto_bignum*, %struct.crypto_bignum** %48, align 8
  %50 = icmp ne %struct.crypto_bignum* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %53 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %52, i32 0, i32 2
  %54 = load %struct.crypto_bignum*, %struct.crypto_bignum** %53, align 8
  %55 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %56 = call i64 @crypto_bignum_cmp(%struct.crypto_bignum* %54, %struct.crypto_bignum* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = call i32 @wpa_printf(i32 %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %62 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %61, i32 0)
  %63 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %63, i32* %4, align 4
  br label %114

64:                                               ; preds = %51, %46, %40
  %65 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %66 = call i64 @crypto_bignum_is_zero(%struct.crypto_bignum* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %70 = call i64 @crypto_bignum_is_one(%struct.crypto_bignum* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %74 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %75 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.crypto_bignum*, %struct.crypto_bignum** %77, align 8
  %79 = call i64 @crypto_bignum_cmp(%struct.crypto_bignum* %73, %struct.crypto_bignum* %78)
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72, %68, %64
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %85 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %84, i32 0)
  %86 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %86, i32* %4, align 4
  br label %114

87:                                               ; preds = %72
  %88 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %89 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %88, i32 0, i32 2
  %90 = load %struct.crypto_bignum*, %struct.crypto_bignum** %89, align 8
  %91 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %90, i32 0)
  %92 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %93 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %94 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %93, i32 0, i32 2
  store %struct.crypto_bignum* %92, %struct.crypto_bignum** %94, align 8
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load i32**, i32*** %6, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %99 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @wpa_hexdump(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %97, i32 %102)
  %104 = load %struct.sae_data*, %struct.sae_data** %5, align 8
  %105 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32**, i32*** %6, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = sext i32 %108 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %109, align 8
  %113 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %87, %81, %58, %38, %23
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i32) #1

declare dso_local i64 @crypto_bignum_cmp(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

declare dso_local i64 @crypto_bignum_is_zero(%struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_is_one(%struct.crypto_bignum*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
