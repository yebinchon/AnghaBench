; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_build_expanded_nak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_build_expanded_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64, i64 }
%struct.eap_method = type { i64, i64, %struct.eap_method* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP: Building expanded EAP-Nak\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_EXPANDED = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_NAK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP: allowed type: vendor=%u method=%u\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"EAP: no more allowed methods\00", align 1
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i32, %struct.eap_method*, i64)* @eap_sm_build_expanded_nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sm_build_expanded_nak(%struct.eap_sm* %0, i32 %1, %struct.eap_method* %2, i64 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_method*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.eap_method*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.eap_method* %2, %struct.eap_method** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %16 = load i32, i32* @EAP_TYPE_EXPANDED, align 4
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 8, %18
  %20 = add i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.wpabuf* @eap_msg_alloc(i64 %15, i32 %16, i32 %21, i32 %22, i32 %23)
  store %struct.wpabuf* %24, %struct.wpabuf** %10, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %26 = icmp eq %struct.wpabuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %114

28:                                               ; preds = %4
  %29 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %30 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %31 = call i32 @wpabuf_put_be24(%struct.wpabuf* %29, i64 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %33 = load i64, i64* @EAP_TYPE_NAK, align 8
  %34 = call i32 @wpabuf_put_be32(%struct.wpabuf* %32, i64 %33)
  %35 = load %struct.eap_method*, %struct.eap_method** %8, align 8
  store %struct.eap_method* %35, %struct.eap_method** %12, align 8
  br label %36

36:                                               ; preds = %91, %28
  %37 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %38 = icmp ne %struct.eap_method* %37, null
  br i1 %38, label %39, label %95

39:                                               ; preds = %36
  %40 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %44 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %49 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %52 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %91

56:                                               ; preds = %47, %39
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %59 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %62 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @eap_allowed_method(%struct.eap_sm* %57, i64 %60, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %56
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %69 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %72 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %76 = load i32, i32* @EAP_TYPE_EXPANDED, align 4
  %77 = call i32 @wpabuf_put_u8(%struct.wpabuf* %75, i32 %76)
  %78 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %79 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %80 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @wpabuf_put_be24(%struct.wpabuf* %78, i64 %81)
  %83 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %84 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %85 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @wpabuf_put_be32(%struct.wpabuf* %83, i64 %86)
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %66, %56
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %93 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %92, i32 0, i32 2
  %94 = load %struct.eap_method*, %struct.eap_method** %93, align 8
  store %struct.eap_method* %94, %struct.eap_method** %12, align 8
  br label %36

95:                                               ; preds = %36
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %102 = load i32, i32* @EAP_TYPE_EXPANDED, align 4
  %103 = call i32 @wpabuf_put_u8(%struct.wpabuf* %101, i32 %102)
  %104 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %105 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %106 = call i32 @wpabuf_put_be24(%struct.wpabuf* %104, i64 %105)
  %107 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %108 = load i64, i64* @EAP_TYPE_NONE, align 8
  %109 = call i32 @wpabuf_put_be32(%struct.wpabuf* %107, i64 %108)
  br label %110

110:                                              ; preds = %98, %95
  %111 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %112 = call i32 @eap_update_len(%struct.wpabuf* %111)
  %113 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %113, %struct.wpabuf** %5, align 8
  br label %114

114:                                              ; preds = %110, %27
  %115 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %115
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i64, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #1

declare dso_local i64 @eap_allowed_method(%struct.eap_sm*, i64, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @eap_update_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
