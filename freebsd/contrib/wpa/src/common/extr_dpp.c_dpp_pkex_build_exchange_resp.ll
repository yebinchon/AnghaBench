; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_exchange_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_exchange_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_pkex = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dpp_curve_params* }
%struct.dpp_curve_params = type { i32, i32 }

@DPP_PA_PKEX_EXCHANGE_RESP = common dso_local global i32 0, align 4
@DPP_ATTR_CODE_IDENTIFIER = common dso_local global i32 0, align 4
@DPP_STATUS_OK = common dso_local global i32 0, align 4
@DPP_ATTR_ENCRYPTED_KEY = common dso_local global i32 0, align 4
@DPP_STATUS_BAD_GROUP = common dso_local global i32 0, align 4
@DPP_ATTR_FINITE_CYCLIC_GROUP = common dso_local global i32 0, align 4
@DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_STATUS_PKEX_EXCHANGE_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP = common dso_local global i64 0, align 8
@DPP_TEST_NO_STATUS_PKEX_EXCHANGE_RESP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_pkex*, i32, i32*, i32*)* @dpp_pkex_build_exchange_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_pkex_build_exchange_resp(%struct.dpp_pkex* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.dpp_pkex*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dpp_curve_params*, align 8
  store %struct.dpp_pkex* %0, %struct.dpp_pkex** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %10, align 8
  %13 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %14 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %16, align 8
  store %struct.dpp_curve_params* %17, %struct.dpp_curve_params** %12, align 8
  store i64 5, i64* %11, align 8
  %18 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %19 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %24 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @os_strlen(i32 %25)
  %27 = add nsw i32 4, %26
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %22, %4
  %32 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %33 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load i32, i32* @DPP_PA_PKEX_EXCHANGE_RESP, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call %struct.wpabuf* @dpp_alloc_msg(i32 %40, i64 %41)
  store %struct.wpabuf* %42, %struct.wpabuf** %10, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %44 = icmp ne %struct.wpabuf* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %136

46:                                               ; preds = %31
  %47 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dpp_build_attr_status(%struct.wpabuf* %47, i32 %48)
  %50 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %51 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %56 = load i32, i32* @DPP_ATTR_CODE_IDENTIFIER, align 4
  %57 = call i32 @wpabuf_put_le16(%struct.wpabuf* %55, i32 %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %59 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %60 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @os_strlen(i32 %61)
  %63 = call i32 @wpabuf_put_le16(%struct.wpabuf* %58, i32 %62)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %65 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %66 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @wpabuf_put_str(%struct.wpabuf* %64, i32 %67)
  br label %69

69:                                               ; preds = %54, %46
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DPP_STATUS_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %119

74:                                               ; preds = %69
  %75 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %76 = load i32, i32* @DPP_ATTR_ENCRYPTED_KEY, align 4
  %77 = call i32 @wpabuf_put_le16(%struct.wpabuf* %75, i32 %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %79 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %80 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 2, %81
  %83 = call i32 @wpabuf_put_le16(%struct.wpabuf* %78, i32 %82)
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %86 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %87 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wpabuf_put(%struct.wpabuf* %85, i32 %88)
  %90 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %91 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @dpp_bn2bin_pad(i32* %84, i32 %89, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %74
  %96 = load i32*, i32** %8, align 8
  %97 = load %struct.dpp_pkex*, %struct.dpp_pkex** %6, align 8
  %98 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %101 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @dpp_bn2bin_pad(i32* %96, i32 %99, i32 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %95
  %106 = load i32*, i32** %9, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %108 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %109 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @wpabuf_put(%struct.wpabuf* %107, i32 %110)
  %112 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %113 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @dpp_bn2bin_pad(i32* %106, i32 %111, i32 %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105, %95, %74
  br label %136

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %73
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @DPP_STATUS_BAD_GROUP, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %125 = load i32, i32* @DPP_ATTR_FINITE_CYCLIC_GROUP, align 4
  %126 = call i32 @wpabuf_put_le16(%struct.wpabuf* %124, i32 %125)
  %127 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %128 = call i32 @wpabuf_put_le16(%struct.wpabuf* %127, i32 2)
  %129 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %130 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %12, align 8
  %131 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @wpabuf_put_le16(%struct.wpabuf* %129, i32 %132)
  br label %134

134:                                              ; preds = %123, %119
  %135 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %135, %struct.wpabuf** %5, align 8
  br label %139

136:                                              ; preds = %117, %45
  %137 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %138 = call i32 @wpabuf_free(%struct.wpabuf* %137)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %139

139:                                              ; preds = %136, %134
  %140 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %140
}

declare dso_local i32 @os_strlen(i32) #1

declare dso_local %struct.wpabuf* @dpp_alloc_msg(i32, i64) #1

declare dso_local i32 @dpp_build_attr_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i32) #1

declare dso_local i64 @dpp_bn2bin_pad(i32*, i32, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
