; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_macacl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_macacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32 (i32, i32*, i32, i32, %struct.eap_user*)*, i32 }
%struct.eap_user = type opaque
%struct.radius_client = type { i32, i64 }
%struct.radius_session = type { %struct.hostapd_radius_attr*, i64 }
%struct.hostapd_radius_attr = type { i32, i32, %struct.hostapd_radius_attr* }
%struct.radius_msg = type { i32 }
%struct.radius_hdr = type { i32, i32 }
%struct.eap_user.0 = type { i32, i32*, i32 }

@RADIUS_CODE_ACCESS_ACCEPT = common dso_local global i32 0, align 4
@RADIUS_ATTR_USER_PASSWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not get User-Password\00", align 1
@RADIUS_CODE_ACCESS_REJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No MAC ACL user entry\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Incorrect User-Password\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to allocate reply message\00", align 1
@RADIUS_ATTR_PROXY_STATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to copy Proxy-State attribute(s)\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not add RADIUS attribute\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Failed to add Message-Authenticator attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radius_msg* (%struct.radius_server_data*, %struct.radius_client*, %struct.radius_session*, %struct.radius_msg*)* @radius_server_macacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radius_msg* @radius_server_macacl(%struct.radius_server_data* %0, %struct.radius_client* %1, %struct.radius_session* %2, %struct.radius_msg* %3) #0 {
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca %struct.radius_server_data*, align 8
  %7 = alloca %struct.radius_client*, align 8
  %8 = alloca %struct.radius_session*, align 8
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca %struct.radius_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.radius_hdr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.eap_user.0, align 8
  %17 = alloca [128 x i32], align 16
  %18 = alloca %struct.hostapd_radius_attr*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %6, align 8
  store %struct.radius_client* %1, %struct.radius_client** %7, align 8
  store %struct.radius_session* %2, %struct.radius_session** %8, align 8
  store %struct.radius_msg* %3, %struct.radius_msg** %9, align 8
  %19 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %20 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %19)
  store %struct.radius_hdr* %20, %struct.radius_hdr** %12, align 8
  %21 = load i32, i32* @RADIUS_CODE_ACCESS_ACCEPT, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %23 = load i32, i32* @RADIUS_ATTR_USER_PASSWORD, align 4
  %24 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %22, i32 %23, i32** %13, i64* %14, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @RADIUS_CODE_ACCESS_REJECT, align 4
  store i32 %28, i32* %11, align 4
  br label %103

29:                                               ; preds = %4
  %30 = call i32 @os_memset(%struct.eap_user.0* %16, i32 0, i32 24)
  %31 = load %struct.radius_server_data*, %struct.radius_server_data** %6, align 8
  %32 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %31, i32 0, i32 0
  %33 = load i32 (i32, i32*, i32, i32, %struct.eap_user*)*, i32 (i32, i32*, i32, i32, %struct.eap_user*)** %32, align 8
  %34 = load %struct.radius_server_data*, %struct.radius_server_data** %6, align 8
  %35 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.radius_session*, %struct.radius_session** %8, align 8
  %38 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.radius_session*, %struct.radius_session** %8, align 8
  %42 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @os_strlen(i64 %43)
  %45 = bitcast %struct.eap_user.0* %16 to %struct.eap_user*
  %46 = call i32 %33(i32 %36, i32* %40, i32 %44, i32 0, %struct.eap_user* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %53, %49, %29
  %58 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bin_clear_free(i32* %60, i32 %62)
  %64 = load i32, i32* @RADIUS_CODE_ACCESS_REJECT, align 4
  store i32 %64, i32* %11, align 4
  br label %102

65:                                               ; preds = %53
  %66 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %67 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %72 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %76 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %79 = call i32 @radius_user_password_hide(%struct.radius_msg* %66, i32* %68, i32 %70, i32* %74, i32 %77, i32* %78, i32 512)
  store i32 %79, i32* %15, align 4
  %80 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.eap_user.0, %struct.eap_user.0* %16, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bin_clear_free(i32* %81, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %65
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds [128 x i32], [128 x i32]* %17, i64 0, i64 0
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @os_memcmp_const(i32* %93, i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92, %87, %65
  %99 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @RADIUS_CODE_ACCESS_REJECT, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %98, %92
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %26
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.radius_hdr*, %struct.radius_hdr** %12, align 8
  %106 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.radius_msg* @radius_msg_new(i32 %104, i32 %107)
  store %struct.radius_msg* %108, %struct.radius_msg** %10, align 8
  %109 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %110 = icmp eq %struct.radius_msg* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  br label %178

113:                                              ; preds = %103
  %114 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %115 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %116 = load i32, i32* @RADIUS_ATTR_PROXY_STATE, align 4
  %117 = call i64 @radius_msg_copy_attr(%struct.radius_msg* %114, %struct.radius_msg* %115, i32 %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %122 = call i32 @radius_msg_free(%struct.radius_msg* %121)
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  br label %178

123:                                              ; preds = %113
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @RADIUS_CODE_ACCESS_ACCEPT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %160

127:                                              ; preds = %123
  %128 = load %struct.radius_session*, %struct.radius_session** %8, align 8
  %129 = getelementptr inbounds %struct.radius_session, %struct.radius_session* %128, i32 0, i32 0
  %130 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %129, align 8
  store %struct.hostapd_radius_attr* %130, %struct.hostapd_radius_attr** %18, align 8
  br label %131

131:                                              ; preds = %155, %127
  %132 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %18, align 8
  %133 = icmp ne %struct.hostapd_radius_attr* %132, null
  br i1 %133, label %134, label %159

134:                                              ; preds = %131
  %135 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %136 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %18, align 8
  %137 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %18, align 8
  %140 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @wpabuf_head(i32 %141)
  %143 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %18, align 8
  %144 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @wpabuf_len(i32 %145)
  %147 = call i32 @radius_msg_add_attr(%struct.radius_msg* %135, i32 %138, i32 %142, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %134
  %150 = load i32, i32* @MSG_ERROR, align 4
  %151 = call i32 @wpa_printf(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %152 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %153 = call i32 @radius_msg_free(%struct.radius_msg* %152)
  store %struct.radius_msg* null, %struct.radius_msg** %5, align 8
  br label %178

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %18, align 8
  %157 = getelementptr inbounds %struct.hostapd_radius_attr, %struct.hostapd_radius_attr* %156, i32 0, i32 2
  %158 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %157, align 8
  store %struct.hostapd_radius_attr* %158, %struct.hostapd_radius_attr** %18, align 8
  br label %131

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159, %123
  %161 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  %162 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %163 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i32*
  %166 = load %struct.radius_client*, %struct.radius_client** %7, align 8
  %167 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.radius_hdr*, %struct.radius_hdr** %12, align 8
  %170 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @radius_msg_finish_srv(%struct.radius_msg* %161, i32* %165, i32 %168, i32 %171)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %160
  %175 = call i32 @RADIUS_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %160
  %177 = load %struct.radius_msg*, %struct.radius_msg** %10, align 8
  store %struct.radius_msg* %177, %struct.radius_msg** %5, align 8
  br label %178

178:                                              ; preds = %176, %149, %119, %111
  %179 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  ret %struct.radius_msg* %179
}

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @RADIUS_DEBUG(i8*) #1

declare dso_local i32 @os_memset(%struct.eap_user.0*, i32, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i32 @bin_clear_free(i32*, i32) #1

declare dso_local i32 @radius_user_password_hide(%struct.radius_msg*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #1

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i64 @radius_msg_copy_attr(%struct.radius_msg*, %struct.radius_msg*, i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i32 @radius_msg_add_attr(%struct.radius_msg*, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(i32) #1

declare dso_local i32 @wpabuf_len(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @radius_msg_finish_srv(%struct.radius_msg*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
