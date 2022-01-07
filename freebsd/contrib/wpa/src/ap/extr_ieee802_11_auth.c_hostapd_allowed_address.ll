; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_allowed_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_allowed_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_acl_query_data*, %struct.TYPE_6__* }
%struct.hostapd_acl_query_data = type { i64, %struct.hostapd_acl_query_data*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.vlan_description = type { i32 }
%struct.hostapd_sta_wpa_psk_short = type { i32 }

@HOSTAPD_ACL_PENDING = common dso_local global i32 0, align 4
@USE_EXTERNAL_RADIUS_AUTH = common dso_local global i64 0, align 8
@HOSTAPD_ACL_ACCEPT = common dso_local global i32 0, align 4
@DYNAMIC_VLAN_DISABLED = common dso_local global i64 0, align 8
@HOSTAPD_ACL_ACCEPT_TIMEOUT = common dso_local global i32 0, align 4
@HOSTAPD_ACL_REJECT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"malloc for query data failed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to send Access-Request for ACL query.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for auth frame.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_allowed_address(%struct.hostapd_data* %0, i32* %1, i32* %2, i64 %3, i64* %4, i64* %5, %struct.vlan_description* %6, %struct.hostapd_sta_wpa_psk_short** %7, i8** %8, i8** %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostapd_data*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.vlan_description*, align 8
  %20 = alloca %struct.hostapd_sta_wpa_psk_short**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.hostapd_acl_query_data*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64* %4, i64** %17, align 8
  store i64* %5, i64** %18, align 8
  store %struct.vlan_description* %6, %struct.vlan_description** %19, align 8
  store %struct.hostapd_sta_wpa_psk_short** %7, %struct.hostapd_sta_wpa_psk_short*** %20, align 8
  store i8** %8, i8*** %21, align 8
  store i8** %9, i8*** %22, align 8
  store i32 %10, i32* %23, align 4
  %26 = load i64*, i64** %17, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = load i64*, i64** %17, align 8
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i64*, i64** %18, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64*, i64** %18, align 8
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.vlan_description*, %struct.vlan_description** %19, align 8
  %37 = icmp ne %struct.vlan_description* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.vlan_description*, %struct.vlan_description** %19, align 8
  %40 = call i32 @os_memset(%struct.vlan_description* %39, i32 0, i32 4)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %20, align 8
  %43 = icmp ne %struct.hostapd_sta_wpa_psk_short** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %20, align 8
  store %struct.hostapd_sta_wpa_psk_short* null, %struct.hostapd_sta_wpa_psk_short** %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i8**, i8*** %21, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8**, i8*** %21, align 8
  store i8* null, i8** %50, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8**, i8*** %22, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8**, i8*** %22, align 8
  store i8* null, i8** %55, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load %struct.vlan_description*, %struct.vlan_description** %19, align 8
  %60 = call i32 @hostapd_check_acl(%struct.hostapd_data* %57, i32* %58, %struct.vlan_description* %59)
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* @HOSTAPD_ACL_PENDING, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %24, align 4
  store i32 %65, i32* %12, align 4
  br label %222

66:                                               ; preds = %56
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %68 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USE_EXTERNAL_RADIUS_AUTH, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %220

74:                                               ; preds = %66
  %75 = load i32, i32* %23, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @HOSTAPD_ACL_ACCEPT, align 4
  store i32 %78, i32* %12, align 4
  br label %222

79:                                               ; preds = %74
  %80 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %81 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DYNAMIC_VLAN_DISABLED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store %struct.vlan_description* null, %struct.vlan_description** %19, align 8
  br label %89

89:                                               ; preds = %88, %79
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i64*, i64** %17, align 8
  %93 = load i64*, i64** %18, align 8
  %94 = load %struct.vlan_description*, %struct.vlan_description** %19, align 8
  %95 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %20, align 8
  %96 = load i8**, i8*** %21, align 8
  %97 = load i8**, i8*** %22, align 8
  %98 = call i32 @hostapd_acl_cache_get(%struct.hostapd_data* %90, i32* %91, i64* %92, i64* %93, %struct.vlan_description* %94, %struct.hostapd_sta_wpa_psk_short** %95, i8** %96, i8** %97)
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* @HOSTAPD_ACL_ACCEPT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* @HOSTAPD_ACL_ACCEPT_TIMEOUT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %89
  %107 = load i32, i32* %24, align 4
  store i32 %107, i32* %12, align 4
  br label %222

108:                                              ; preds = %102
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %113, i32* %12, align 4
  br label %222

114:                                              ; preds = %108
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %116 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %115, i32 0, i32 0
  %117 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %116, align 8
  store %struct.hostapd_acl_query_data* %117, %struct.hostapd_acl_query_data** %25, align 8
  br label %118

118:                                              ; preds = %147, %114
  %119 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %120 = icmp ne %struct.hostapd_acl_query_data* %119, null
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %123 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* @ETH_ALEN, align 4
  %127 = call i64 @os_memcmp(i32 %124, i32* %125, i32 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %121
  %130 = load i8**, i8*** %21, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i8**, i8*** %21, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @os_free(i8* %134)
  %136 = load i8**, i8*** %21, align 8
  store i8* null, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = load i8**, i8*** %22, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i8**, i8*** %22, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @os_free(i8* %142)
  %144 = load i8**, i8*** %22, align 8
  store i8* null, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32, i32* @HOSTAPD_ACL_PENDING, align 4
  store i32 %146, i32* %12, align 4
  br label %222

147:                                              ; preds = %121
  %148 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %149 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %148, i32 0, i32 1
  %150 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %149, align 8
  store %struct.hostapd_acl_query_data* %150, %struct.hostapd_acl_query_data** %25, align 8
  br label %118

151:                                              ; preds = %118
  %152 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %153 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %151
  %161 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %161, i32* %12, align 4
  br label %222

162:                                              ; preds = %151
  %163 = call %struct.hostapd_acl_query_data* @os_zalloc(i32 32)
  store %struct.hostapd_acl_query_data* %163, %struct.hostapd_acl_query_data** %25, align 8
  %164 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %165 = icmp eq %struct.hostapd_acl_query_data* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* @MSG_ERROR, align 4
  %168 = call i32 @wpa_printf(i32 %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %169 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %169, i32* %12, align 4
  br label %222

170:                                              ; preds = %162
  %171 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %172 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %171, i32 0, i32 4
  %173 = call i32 @os_get_reltime(i32* %172)
  %174 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %175 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %14, align 8
  %178 = load i32, i32* @ETH_ALEN, align 4
  %179 = call i32 @os_memcpy(i32 %176, i32* %177, i32 %178)
  %180 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %183 = call i64 @hostapd_radius_acl_query(%struct.hostapd_data* %180, i32* %181, %struct.hostapd_acl_query_data* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %170
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = call i32 @wpa_printf(i32 %186, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %188 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %189 = call i32 @hostapd_acl_query_free(%struct.hostapd_acl_query_data* %188)
  %190 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %190, i32* %12, align 4
  br label %222

191:                                              ; preds = %170
  %192 = load i32*, i32** %15, align 8
  %193 = load i64, i64* %16, align 8
  %194 = call i32* @os_memdup(i32* %192, i64 %193)
  %195 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %196 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %195, i32 0, i32 2
  store i32* %194, i32** %196, align 8
  %197 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %198 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = load i32, i32* @MSG_ERROR, align 4
  %203 = call i32 @wpa_printf(i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %204 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %205 = call i32 @hostapd_acl_query_free(%struct.hostapd_acl_query_data* %204)
  %206 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %206, i32* %12, align 4
  br label %222

207:                                              ; preds = %191
  %208 = load i64, i64* %16, align 8
  %209 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %210 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %212 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %211, i32 0, i32 0
  %213 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %212, align 8
  %214 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %215 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %214, i32 0, i32 1
  store %struct.hostapd_acl_query_data* %213, %struct.hostapd_acl_query_data** %215, align 8
  %216 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %25, align 8
  %217 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %218 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %217, i32 0, i32 0
  store %struct.hostapd_acl_query_data* %216, %struct.hostapd_acl_query_data** %218, align 8
  %219 = load i32, i32* @HOSTAPD_ACL_PENDING, align 4
  store i32 %219, i32* %12, align 4
  br label %222

220:                                              ; preds = %66
  %221 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %221, i32* %12, align 4
  br label %222

222:                                              ; preds = %220, %207, %201, %185, %166, %160, %145, %112, %106, %77, %64
  %223 = load i32, i32* %12, align 4
  ret i32 %223
}

declare dso_local i32 @os_memset(%struct.vlan_description*, i32, i32) #1

declare dso_local i32 @hostapd_check_acl(%struct.hostapd_data*, i32*, %struct.vlan_description*) #1

declare dso_local i32 @hostapd_acl_cache_get(%struct.hostapd_data*, i32*, i64*, i64*, %struct.vlan_description*, %struct.hostapd_sta_wpa_psk_short**, i8**, i8**) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.hostapd_acl_query_data* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @hostapd_radius_acl_query(%struct.hostapd_data*, i32*, %struct.hostapd_acl_query_data*) #1

declare dso_local i32 @hostapd_acl_query_free(%struct.hostapd_acl_query_data*) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
