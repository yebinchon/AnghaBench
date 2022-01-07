; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32, i32, i32*, i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SSL: TLS errors detected\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_VENDOR_UNAUTH_TLS = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_UNAUTH_TLS = common dso_local global i64 0, align 8
@EAP_WFA_UNAUTH_TLS_TYPE = common dso_local global i64 0, align 8
@EAP_VENDOR_WFA_NEW = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA_UNAUTH_TLS = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SSL: Invalid TLS message: no Flags octet included\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"SSL: Workaround - assume no Flags indicates ACK frame\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"SSL: Received packet(len=%lu) - Flags 0x%02x\00", align 1
@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"SSL: Short frame with TLS length\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SSL: TLS Message Length: %d\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"SSL: TLS Message Length (%d bytes) smaller than this fragment (%d bytes)\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i64 %2, %struct.eap_method_ret* %3, %struct.wpabuf* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.eap_sm*, align 8
  %10 = alloca %struct.eap_ssl_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.eap_method_ret*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %9, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.eap_method_ret* %3, %struct.eap_method_ret** %12, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %20 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @tls_get_errors(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** @TRUE, align 8
  %28 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %29 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  store i32* null, i32** %8, align 8
  br label %165

30:                                               ; preds = %7
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @EAP_UNAUTH_TLS_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @EAP_VENDOR_UNAUTH_TLS, align 4
  %36 = load i64, i64* @EAP_VENDOR_TYPE_UNAUTH_TLS, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %38 = call i32* @eap_hdr_validate(i32 %35, i64 %36, %struct.wpabuf* %37, i64* %17)
  store i32* %38, i32** %16, align 8
  br label %54

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @EAP_WFA_UNAUTH_TLS_TYPE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @EAP_VENDOR_WFA_NEW, align 4
  %45 = load i64, i64* @EAP_VENDOR_WFA_UNAUTH_TLS, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %47 = call i32* @eap_hdr_validate(i32 %44, i64 %45, %struct.wpabuf* %46, i64* %17)
  store i32* %47, i32** %16, align 8
  br label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %52 = call i32* @eap_hdr_validate(i32 %49, i64 %50, %struct.wpabuf* %51, i64* %17)
  store i32* %52, i32** %16, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32*, i32** %16, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** @TRUE, align 8
  %59 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %60 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  store i32* null, i32** %8, align 8
  br label %165

61:                                               ; preds = %54
  %62 = load i64, i64* %17, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.eap_sm*, %struct.eap_sm** %9, align 8
  %68 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %74 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  store i32* null, i32** %8, align 8
  br label %165

75:                                               ; preds = %64
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32*, i32** %15, align 8
  store i32 0, i32* %78, align 4
  br label %86

79:                                               ; preds = %61
  %80 = load i32*, i32** %16, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %16, align 8
  %82 = load i32, i32* %80, align 4
  %83 = load i32*, i32** %15, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %17, align 8
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %89 = call i64 @wpabuf_len(%struct.wpabuf* %88)
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %89, i32 %91)
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %149

98:                                               ; preds = %86
  %99 = load i64, i64* %17, align 8
  %100 = icmp ult i64 %99, 4
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @MSG_INFO, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %106 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  store i32* null, i32** %8, align 8
  br label %165

107:                                              ; preds = %98
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @WPA_GET_BE32(i32* %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %114 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %107
  %118 = load i32, i32* %18, align 4
  %119 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %120 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %123 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %125 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @wpabuf_free(i32* %126)
  %128 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %10, align 8
  %129 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %128, i32 0, i32 2
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %117, %107
  %131 = load i32*, i32** %16, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32* %132, i32** %16, align 8
  %133 = load i64, i64* %17, align 8
  %134 = sub i64 %133, 4
  store i64 %134, i64* %17, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load i32, i32* %18, align 4
  %137 = zext i32 %136 to i64
  %138 = icmp ugt i64 %135, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %130
  %140 = load i32, i32* @MSG_INFO, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i64, i64* %17, align 8
  %143 = trunc i64 %142 to i32
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %143)
  %145 = load i8*, i8** @TRUE, align 8
  %146 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %147 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  store i32* null, i32** %8, align 8
  br label %165

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148, %86
  %150 = load i8*, i8** @FALSE, align 8
  %151 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %152 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @METHOD_MAY_CONT, align 4
  %154 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %155 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @DECISION_FAIL, align 4
  %157 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %158 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load i8*, i8** @TRUE, align 8
  %160 = load %struct.eap_method_ret*, %struct.eap_method_ret** %12, align 8
  %161 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load i64*, i64** %14, align 8
  store i64 %162, i64* %163, align 8
  %164 = load i32*, i32** %16, align 8
  store i32* %164, i32** %8, align 8
  br label %165

165:                                              ; preds = %149, %139, %101, %71, %57, %24
  %166 = load i32*, i32** %8, align 8
  ret i32* %166
}

declare dso_local i64 @tls_get_errors(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_hdr_validate(i32, i64, %struct.wpabuf*, i64*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
