; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_avp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_avp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttls_parse_avp = type { i32*, i32 }
%struct.ttls_avp = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-TTLS: AVP: code=%d flags=0x%02x length=%d\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-TTLS: AVP overflow (len=%d, left=%lu) - dropped\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-TTLS: Invalid AVP length %d\00", align 1
@AVP_FLAGS_VENDOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-TTLS: Vendor AVP underflow\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"EAP-TTLS: AVP vendor_id %d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"EAP-TTLS: AVP data\00", align 1
@RADIUS_ATTR_EAP_MESSAGE = common dso_local global i32 0, align 4
@RADIUS_ATTR_REPLY_MESSAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"EAP-TTLS: AVP - Reply-Message\00", align 1
@RADIUS_VENDOR_ID_MICROSOFT = common dso_local global i32 0, align 4
@RADIUS_ATTR_MS_CHAP2_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"EAP-TTLS: MS-CHAP2-Success\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"EAP-TTLS: Unexpected MS-CHAP2-Success length (len=%lu, expected 43)\00", align 1
@RADIUS_ATTR_MS_CHAP_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"EAP-TTLS: MS-CHAP-Error\00", align 1
@AVP_FLAGS_MANDATORY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [67 x i8] c"EAP-TTLS: Unsupported mandatory AVP code %d vendor_id %d - dropped\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"EAP-TTLS: Ignoring unsupported AVP code %d vendor_id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.ttls_parse_avp*)* @eap_ttls_parse_avp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_parse_avp(i32* %0, i64 %1, %struct.ttls_parse_avp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ttls_parse_avp*, align 8
  %8 = alloca %struct.ttls_avp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ttls_parse_avp* %2, %struct.ttls_parse_avp** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.ttls_avp*
  store %struct.ttls_avp* %16, %struct.ttls_avp** %8, align 8
  %17 = load %struct.ttls_avp*, %struct.ttls_avp** %8, align 8
  %18 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be_to_host32(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ttls_avp*, %struct.ttls_avp** %8, align 8
  %22 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be_to_host32(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 16777215
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load i32, i32* @MSG_WARNING, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %6, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %42)
  store i32 -1, i32* %4, align 4
  br label %169

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @MSG_WARNING, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %4, align 4
  br label %169

52:                                               ; preds = %44
  %53 = load %struct.ttls_avp*, %struct.ttls_avp** %8, align 8
  %54 = getelementptr inbounds %struct.ttls_avp, %struct.ttls_avp* %53, i64 1
  %55 = bitcast %struct.ttls_avp* %54 to i32*
  store i32* %55, i32** %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 8
  store i64 %58, i64* %14, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @AVP_FLAGS_VENDOR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %52
  %64 = load i64, i64* %14, align 8
  %65 = icmp ult i64 %64, 4
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @MSG_WARNING, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %169

69:                                               ; preds = %63
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @WPA_GET_BE32(i32* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32* %76, i32** %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %77, 4
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %69, %52
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i32 @wpa_hexdump(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %81, i64 %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @RADIUS_ATTR_EAP_MESSAGE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %94 = call i64 @eap_ttls_parse_attr_eap(i32* %91, i64 %92, %struct.ttls_parse_avp* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %169

97:                                               ; preds = %90
  br label %167

98:                                               ; preds = %86, %79
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @RADIUS_ATTR_REPLY_MESSAGE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @wpa_hexdump_ascii(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %107, i64 %108)
  br label %166

110:                                              ; preds = %101, %98
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @RADIUS_ATTR_MS_CHAP2_SUCCESS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %114
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @wpa_hexdump_ascii(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %120, i64 %121)
  %123 = load i64, i64* %14, align 8
  %124 = icmp ne i64 %123, 43
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @MSG_WARNING, align 4
  %127 = load i64, i64* %14, align 8
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i64 %127)
  store i32 -1, i32* %4, align 4
  br label %169

129:                                              ; preds = %118
  %130 = load i32*, i32** %13, align 8
  %131 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %132 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %131, i32 0, i32 0
  store i32* %130, i32** %132, align 8
  br label %165

133:                                              ; preds = %114, %110
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @RADIUS_VENDOR_ID_MICROSOFT, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @RADIUS_ATTR_MS_CHAP_ERROR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @wpa_hexdump_ascii(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32* %143, i64 %144)
  %146 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %147 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %146, i32 0, i32 1
  store i32 1, i32* %147, align 8
  br label %164

148:                                              ; preds = %137, %133
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @AVP_FLAGS_MANDATORY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* @MSG_WARNING, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i64 0, i64 0), i32 %155, i32 %156)
  store i32 -1, i32* %4, align 4
  br label %169

158:                                              ; preds = %148
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %141
  br label %165

165:                                              ; preds = %164, %129
  br label %166

166:                                              ; preds = %165, %105
  br label %167

167:                                              ; preds = %166, %97
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %167, %153, %125, %96, %66, %48, %39
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @be_to_host32(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @eap_ttls_parse_attr_eap(i32*, i64, %struct.ttls_parse_avp*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
