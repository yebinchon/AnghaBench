; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_sae.c_sae_parse_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sae_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i64, i32 }

@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i64 0, align 8
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@SAE_SILENTLY_DISCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sae_parse_commit(%struct.sae_data* %0, i32* %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.sae_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.sae_data* %0, %struct.sae_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = icmp slt i64 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %29, i64* %7, align 8
  br label %157

30:                                               ; preds = %6
  %31 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @WPA_GET_LE16(i32* %33)
  %35 = call i64 @sae_group_allowed(%struct.sae_data* %31, i32* %32, i32 %34)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %16, align 8
  store i64 %40, i64* %7, align 8
  br label %157

41:                                               ; preds = %30
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %14, align 8
  %44 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32**, i32*** %11, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = call i32 @sae_parse_commit_token(%struct.sae_data* %44, i32** %14, i32* %45, i32** %46, i64* %47)
  %49 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i64 @sae_parse_commit_scalar(%struct.sae_data* %49, i32** %14, i32* %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %7, align 8
  br label %157

57:                                               ; preds = %41
  %58 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call i64 @sae_parse_commit_element(%struct.sae_data* %58, i32** %14, i32* %59)
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %7, align 8
  br label %157

66:                                               ; preds = %57
  %67 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i64 @sae_parse_password_identifier(%struct.sae_data* %67, i32* %68, i32* %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %16, align 8
  store i64 %75, i64* %7, align 8
  br label %157

76:                                               ; preds = %66
  %77 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %78 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %153

83:                                               ; preds = %76
  %84 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %85 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %90 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @crypto_bignum_cmp(i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %153, label %94

94:                                               ; preds = %83
  %95 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %96 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %94
  %102 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %103 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %101
  %109 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %110 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %115 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @crypto_bignum_cmp(i32 %113, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %153, label %121

121:                                              ; preds = %108, %94
  %122 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %123 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %121
  %129 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %130 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %128
  %136 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %137 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %142 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sae_data*, %struct.sae_data** %8, align 8
  %147 = getelementptr inbounds %struct.sae_data, %struct.sae_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @crypto_ec_point_cmp(i64 %140, i32 %145, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %135, %128, %108, %101, %83, %76
  %154 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  store i64 %154, i64* %7, align 8
  br label %157

155:                                              ; preds = %135, %121
  %156 = load i64, i64* @SAE_SILENTLY_DISCARD, align 8
  store i64 %156, i64* %7, align 8
  br label %157

157:                                              ; preds = %155, %153, %74, %64, %55, %39, %28
  %158 = load i64, i64* %7, align 8
  ret i64 %158
}

declare dso_local i64 @sae_group_allowed(%struct.sae_data*, i32*, i32) #1

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i32 @sae_parse_commit_token(%struct.sae_data*, i32**, i32*, i32**, i64*) #1

declare dso_local i64 @sae_parse_commit_scalar(%struct.sae_data*, i32**, i32*) #1

declare dso_local i64 @sae_parse_commit_element(%struct.sae_data*, i32**, i32*) #1

declare dso_local i64 @sae_parse_password_identifier(%struct.sae_data*, i32*, i32*) #1

declare dso_local i64 @crypto_bignum_cmp(i32, i32) #1

declare dso_local i64 @crypto_ec_point_cmp(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
