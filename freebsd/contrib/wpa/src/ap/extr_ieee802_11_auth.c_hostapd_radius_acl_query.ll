; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_radius_acl_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_radius_acl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hostapd_acl_query_data = type { i32 }
%struct.radius_msg = type { i32 }

@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not make Request Authenticator\00", align 1
@RADIUS_ADDR_FORMAT = common dso_local global i32 0, align 4
@RADIUS_ATTR_USER_NAME = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not add User-Name\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not add User-Password\00", align 1
@RADIUS_802_1X_ADDR_FORMAT = common dso_local global i32 0, align 4
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not add Calling-Station-Id\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"CONNECT 11Mbps 802.11b\00", align 1
@RADIUS_ATTR_CONNECT_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not add Connect-Info\00", align 1
@RADIUS_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*, %struct.hostapd_acl_query_data*)* @hostapd_radius_acl_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_radius_acl_query(%struct.hostapd_data* %0, i32* %1, %struct.hostapd_acl_query_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hostapd_acl_query_data*, align 8
  %8 = alloca %struct.radius_msg*, align 8
  %9 = alloca [128 x i8], align 16
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.hostapd_acl_query_data* %2, %struct.hostapd_acl_query_data** %7, align 8
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @radius_client_get_id(i32 %12)
  %14 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %7, align 8
  %15 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %17 = load %struct.hostapd_acl_query_data*, %struct.hostapd_acl_query_data** %7, align 8
  %18 = getelementptr inbounds %struct.hostapd_acl_query_data, %struct.hostapd_acl_query_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.radius_msg* @radius_msg_new(i32 %16, i32 %19)
  store %struct.radius_msg* %20, %struct.radius_msg** %8, align 8
  %21 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %22 = icmp eq %struct.radius_msg* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %137

24:                                               ; preds = %3
  %25 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %26 = call i64 @radius_msg_make_authenticator(%struct.radius_msg* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %134

31:                                               ; preds = %24
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %33 = load i32, i32* @RADIUS_ADDR_FORMAT, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @MAC2STR(i32* %36)
  %38 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %32, i32 128, i8* %35, i32 %37)
  %39 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %40 = load i32, i32* @RADIUS_ATTR_USER_NAME, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %42 = bitcast i8* %41 to i32*
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %44 = call i32 @os_strlen(i8* %43)
  %45 = call i32 @radius_msg_add_attr(%struct.radius_msg* %39, i32 %40, i32* %42, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %31
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %134

50:                                               ; preds = %31
  %51 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %53 = bitcast i8* %52 to i32*
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %55 = call i32 @os_strlen(i8* %54)
  %56 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %57 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @radius_msg_add_attr_user_password(%struct.radius_msg* %51, i32* %53, i32 %55, i32 %64, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %50
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = call i32 @wpa_printf(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %134

79:                                               ; preds = %50
  %80 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %82 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %87 = call i64 @add_common_radius_attr(%struct.hostapd_data* %80, i32 %85, i32* null, %struct.radius_msg* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %134

90:                                               ; preds = %79
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %92 = load i32, i32* @RADIUS_802_1X_ADDR_FORMAT, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @MAC2STR(i32* %95)
  %97 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %91, i32 128, i8* %94, i32 %96)
  %98 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %99 = load i32, i32* @RADIUS_ATTR_CALLING_STATION_ID, align 4
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %101 = bitcast i8* %100 to i32*
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %103 = call i32 @os_strlen(i8* %102)
  %104 = call i32 @radius_msg_add_attr(%struct.radius_msg* %98, i32 %99, i32* %101, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = call i32 @wpa_printf(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %134

109:                                              ; preds = %90
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %111 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %110, i32 128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %112 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %113 = load i32, i32* @RADIUS_ATTR_CONNECT_INFO, align 4
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %115 = bitcast i8* %114 to i32*
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %117 = call i32 @os_strlen(i8* %116)
  %118 = call i32 @radius_msg_add_attr(%struct.radius_msg* %112, i32 %113, i32* %115, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 @wpa_printf(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %134

123:                                              ; preds = %109
  %124 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %125 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %128 = load i32, i32* @RADIUS_AUTH, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = call i64 @radius_client_send(i32 %126, %struct.radius_msg* %127, i32 %128, i32* %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %134

133:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %137

134:                                              ; preds = %132, %120, %106, %89, %76, %47, %28
  %135 = load %struct.radius_msg*, %struct.radius_msg** %8, align 8
  %136 = call i32 @radius_msg_free(%struct.radius_msg* %135)
  store i32 -1, i32* %4, align 4
  br label %137

137:                                              ; preds = %134, %133, %23
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @radius_client_get_id(i32) #1

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i64 @radius_msg_make_authenticator(%struct.radius_msg*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @MAC2STR(i32*) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @radius_msg_add_attr_user_password(%struct.radius_msg*, i32*, i32, i32, i32) #1

declare dso_local i64 @add_common_radius_attr(%struct.hostapd_data*, i32, i32*, %struct.radius_msg*) #1

declare dso_local i64 @radius_client_send(i32, %struct.radius_msg*, i32, i32*) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
