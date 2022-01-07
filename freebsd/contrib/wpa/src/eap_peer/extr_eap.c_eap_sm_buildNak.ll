; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_buildNak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_sm_buildNak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i64, i32, i32 }
%struct.eap_method = type { i64, i64, %struct.eap_method* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"EAP: Building EAP-Nak (requested type %u vendor=%u method=%u not allowed)\00", align 1
@EAP_TYPE_EXPANDED = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NAK = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"EAP: allowed methods\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i32)* @eap_sm_buildNak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sm_buildNak(%struct.eap_sm* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.eap_method*, align 8
  %12 = alloca %struct.eap_method*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %15 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %18 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %21 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %19, i32 %22)
  %24 = call %struct.eap_method* @eap_peer_get_methods(i64* %10)
  store %struct.eap_method* %24, %struct.eap_method** %11, align 8
  %25 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %26 = icmp eq %struct.eap_method* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %128

28:                                               ; preds = %2
  %29 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %30 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EAP_TYPE_EXPANDED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call %struct.wpabuf* @eap_sm_build_expanded_nak(%struct.eap_sm* %35, i32 %36, %struct.eap_method* %37, i64 %38)
  store %struct.wpabuf* %39, %struct.wpabuf** %3, align 8
  br label %128

40:                                               ; preds = %28
  %41 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %42 = load i32, i32* @EAP_TYPE_NAK, align 4
  %43 = load i64, i64* %10, align 8
  %44 = add i64 5, %43
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.wpabuf* @eap_msg_alloc(i64 %41, i32 %42, i32 %46, i32 %47, i32 %48)
  store %struct.wpabuf* %49, %struct.wpabuf** %6, align 8
  %50 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %51 = icmp eq %struct.wpabuf* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %128

53:                                               ; preds = %40
  %54 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %55 = call i32* @wpabuf_put(%struct.wpabuf* %54, i32 0)
  store i32* %55, i32** %7, align 8
  %56 = load %struct.eap_method*, %struct.eap_method** %11, align 8
  store %struct.eap_method* %56, %struct.eap_method** %12, align 8
  br label %57

57:                                               ; preds = %109, %53
  %58 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %59 = icmp ne %struct.eap_method* %58, null
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %62 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %68 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %71 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %109

75:                                               ; preds = %66, %60
  %76 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %77 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %78 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %81 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @eap_allowed_method(%struct.eap_sm* %76, i64 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %75
  %86 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %87 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %109

95:                                               ; preds = %91
  store i32 1, i32* %9, align 4
  %96 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %97 = load i64, i64* @EAP_TYPE_EXPANDED, align 8
  %98 = call i32 @wpabuf_put_u8(%struct.wpabuf* %96, i64 %97)
  br label %105

99:                                               ; preds = %85
  %100 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %101 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %102 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @wpabuf_put_u8(%struct.wpabuf* %100, i64 %103)
  br label %105

105:                                              ; preds = %99, %95
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %105, %75
  br label %109

109:                                              ; preds = %108, %94, %74
  %110 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %111 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %110, i32 0, i32 2
  %112 = load %struct.eap_method*, %struct.eap_method** %111, align 8
  store %struct.eap_method* %112, %struct.eap_method** %12, align 8
  br label %57

113:                                              ; preds = %57
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %118 = load i64, i64* @EAP_TYPE_NONE, align 8
  %119 = call i32 @wpabuf_put_u8(%struct.wpabuf* %117, i64 %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @wpa_hexdump(i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %122, i32 %123)
  %125 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %126 = call i32 @eap_update_len(%struct.wpabuf* %125)
  %127 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %127, %struct.wpabuf** %3, align 8
  br label %128

128:                                              ; preds = %120, %52, %34, %27
  %129 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %129
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i32) #1

declare dso_local %struct.eap_method* @eap_peer_get_methods(i64*) #1

declare dso_local %struct.wpabuf* @eap_sm_build_expanded_nak(%struct.eap_sm*, i32, %struct.eap_method*, i64) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i64, i32, i32, i32, i32) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i64 @eap_allowed_method(%struct.eap_sm*, i64, i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @eap_update_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
