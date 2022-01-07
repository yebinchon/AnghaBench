; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_vendor_test.c_eap_vendor_test_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_vendor_test.c_eap_vendor_test_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i32, i32, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_vendor_test_data = type { i64, i64, i64 }

@EAP_VENDOR_ID = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@INIT = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"EAP-VENDOR-TEST: Unexpected message %d in INIT state\00", align 1
@CONFIRM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"EAP-VENDOR-TEST: Unexpected message %d in CONFIRM state\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"EAP-VENDOR-TEST: Unexpected message in SUCCESS state\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"EAP-VENDOR-TEST: Testing pending request\00", align 1
@eap_vendor_ready = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"EAP-VENDOR-TEST: Generating Response\00", align 1
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@METHOD_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_vendor_test_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_vendor_test_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_vendor_test_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.eap_vendor_test_data*
  store %struct.eap_vendor_test_data* %15, %struct.eap_vendor_test_data** %10, align 8
  %16 = load i32, i32* @EAP_VENDOR_ID, align 4
  %17 = load i32, i32* @EAP_VENDOR_TYPE, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %19 = call i32* @eap_hdr_validate(i32 %16, i32 %17, %struct.wpabuf* %18, i64* %13)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %13, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %4
  %26 = load i8*, i8** @TRUE, align 8
  %27 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %28 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

29:                                               ; preds = %22
  %30 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %31 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @INIT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** @TRUE, align 8
  %45 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %46 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

47:                                               ; preds = %35, %29
  %48 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %49 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CONFIRM, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** @TRUE, align 8
  %63 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %64 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

65:                                               ; preds = %53, %47
  %66 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %67 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %76 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

77:                                               ; preds = %65
  %78 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %79 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CONFIRM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %85 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %90 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %95 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i8*, i8** @TRUE, align 8
  %99 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %100 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @eap_vendor_ready, align 4
  %102 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %103 = call i32 @eloop_register_timeout(i32 1, i32 0, i32 %101, %struct.eap_sm* %102, i32* null)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

104:                                              ; preds = %88, %83
  br label %105

105:                                              ; preds = %104, %77
  %106 = load i8*, i8** @FALSE, align 8
  %107 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %108 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %113 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @EAP_VENDOR_ID, align 4
  %115 = load i32, i32* @EAP_VENDOR_TYPE, align 4
  %116 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %117 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %118 = call i32 @eap_get_id(%struct.wpabuf* %117)
  %119 = call %struct.wpabuf* @eap_msg_alloc(i32 %114, i32 %115, i32 1, i32 %116, i32 %118)
  store %struct.wpabuf* %119, %struct.wpabuf** %11, align 8
  %120 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %121 = icmp eq %struct.wpabuf* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %155

123:                                              ; preds = %105
  %124 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %125 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @INIT, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %131 = call i32 @wpabuf_put_u8(%struct.wpabuf* %130, i32 2)
  %132 = load i64, i64* @CONFIRM, align 8
  %133 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %134 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @METHOD_CONT, align 4
  %136 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %137 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @DECISION_FAIL, align 4
  %139 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %140 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %153

141:                                              ; preds = %123
  %142 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %143 = call i32 @wpabuf_put_u8(%struct.wpabuf* %142, i32 4)
  %144 = load i64, i64* @SUCCESS, align 8
  %145 = load %struct.eap_vendor_test_data*, %struct.eap_vendor_test_data** %10, align 8
  %146 = getelementptr inbounds %struct.eap_vendor_test_data, %struct.eap_vendor_test_data* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* @METHOD_DONE, align 4
  %148 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %149 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %151 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %152 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %141, %129
  %154 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %154, %struct.wpabuf** %5, align 8
  br label %155

155:                                              ; preds = %153, %122, %93, %71, %57, %39, %25
  %156 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %156
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.eap_sm*, i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
