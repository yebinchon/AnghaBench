; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i8*, i8*, i32 }
%struct.wpabuf = type { i32 }
%struct.eap_eke_data = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_EKE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-EKE: Received frame: exch %d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-EKE: Received Data\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"EAP-EKE: Ignoring message with unknown EKE-Exch %d\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_eke_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_eke_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.eap_eke_data*
  store %struct.eap_eke_data* %17, %struct.eap_eke_data** %10, align 8
  %18 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %19 = load i32, i32* @EAP_TYPE_EKE, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %21 = call i32* @eap_hdr_validate(i32 %18, i32 %19, %struct.wpabuf* %20, i64* %14)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %14, align 8
  %26 = icmp ult i64 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %4
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %30 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %136

31:                                               ; preds = %24
  %32 = load i32*, i32** %12, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @wpa_hexdump(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %42, i32 %49)
  %51 = load i8*, i8** @FALSE, align 8
  %52 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %53 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @METHOD_MAY_CONT, align 8
  %55 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %56 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @DECISION_FAIL, align 4
  %58 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %59 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @TRUE, align 8
  %61 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %62 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %15, align 4
  switch i32 %63, label %117 [
    i32 128, label %64
    i32 131, label %77
    i32 130, label %91
    i32 129, label %104
  ]

64:                                               ; preds = %31
  %65 = load %struct.eap_eke_data*, %struct.eap_eke_data** %10, align 8
  %66 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %67 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call %struct.wpabuf* @eap_eke_process_id(%struct.eap_eke_data* %65, %struct.eap_method_ret* %66, %struct.wpabuf* %67, i32* %68, i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %11, align 8
  br label %124

77:                                               ; preds = %31
  %78 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %79 = load %struct.eap_eke_data*, %struct.eap_eke_data** %10, align 8
  %80 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call %struct.wpabuf* @eap_eke_process_commit(%struct.eap_sm* %78, %struct.eap_eke_data* %79, %struct.eap_method_ret* %80, %struct.wpabuf* %81, i32* %82, i32 %89)
  store %struct.wpabuf* %90, %struct.wpabuf** %11, align 8
  br label %124

91:                                               ; preds = %31
  %92 = load %struct.eap_eke_data*, %struct.eap_eke_data** %10, align 8
  %93 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %94 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call %struct.wpabuf* @eap_eke_process_confirm(%struct.eap_eke_data* %92, %struct.eap_method_ret* %93, %struct.wpabuf* %94, i32* %95, i32 %102)
  store %struct.wpabuf* %103, %struct.wpabuf** %11, align 8
  br label %124

104:                                              ; preds = %31
  %105 = load %struct.eap_eke_data*, %struct.eap_eke_data** %10, align 8
  %106 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call %struct.wpabuf* @eap_eke_process_failure(%struct.eap_eke_data* %105, %struct.eap_method_ret* %106, %struct.wpabuf* %107, i32* %108, i32 %115)
  store %struct.wpabuf* %116, %struct.wpabuf** %11, align 8
  br label %124

117:                                              ; preds = %31
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @wpa_printf(i32 %118, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** @TRUE, align 8
  %122 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %123 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %136

124:                                              ; preds = %104, %91, %77, %64
  %125 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %126 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @METHOD_DONE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i8*, i8** @FALSE, align 8
  %132 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %133 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %135, %struct.wpabuf** %5, align 8
  br label %136

136:                                              ; preds = %134, %117, %27
  %137 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %137
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_process_id(%struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_process_commit(%struct.eap_sm*, %struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_process_confirm(%struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_eke_process_failure(%struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
