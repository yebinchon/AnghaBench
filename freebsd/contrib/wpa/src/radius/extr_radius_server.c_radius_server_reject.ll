; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_reject.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.radius_client = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.radius_msg = type { i32 }
%struct.sockaddr = type { i32 }
%struct.eap_hdr = type { i32, i64, i32 }
%struct.wpabuf = type { i32 }
%struct.radius_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Reject invalid request from %s:%d\00", align 1
@RADIUS_CODE_ACCESS_REJECT = common dso_local global i32 0, align 4
@EAP_CODE_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to add EAP-Message attribute\00", align 1
@RADIUS_ATTR_PROXY_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to copy Proxy-State attribute(s)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to add Message-Authenticator attribute\00", align 1
@wpa_debug_level = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"sendto[RADIUS SRV]: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_server_data*, %struct.radius_client*, %struct.radius_msg*, %struct.sockaddr*, i32, i8*, i32)* @radius_server_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_server_reject(%struct.radius_server_data* %0, %struct.radius_client* %1, %struct.radius_msg* %2, %struct.sockaddr* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.radius_server_data*, align 8
  %10 = alloca %struct.radius_client*, align 8
  %11 = alloca %struct.radius_msg*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.radius_msg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.eap_hdr, align 8
  %19 = alloca %struct.wpabuf*, align 8
  %20 = alloca %struct.radius_hdr*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %9, align 8
  store %struct.radius_client* %1, %struct.radius_client** %10, align 8
  store %struct.radius_msg* %2, %struct.radius_msg** %11, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %22 = call %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg* %21)
  store %struct.radius_hdr* %22, %struct.radius_hdr** %20, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = load i32, i32* %15, align 4
  %25 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load i32, i32* @RADIUS_CODE_ACCESS_REJECT, align 4
  %27 = load %struct.radius_hdr*, %struct.radius_hdr** %20, align 8
  %28 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.radius_msg* @radius_msg_new(i32 %26, i32 %29)
  store %struct.radius_msg* %30, %struct.radius_msg** %16, align 8
  %31 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %32 = icmp eq %struct.radius_msg* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %112

34:                                               ; preds = %7
  %35 = call i32 @os_memset(%struct.eap_hdr* %18, i32 0, i32 24)
  %36 = load i32, i32* @EAP_CODE_FAILURE, align 4
  %37 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %18, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %18, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = call i32 @host_to_be16(i32 24)
  %40 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %18, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %42 = bitcast %struct.eap_hdr* %18 to i32*
  %43 = call i32 @radius_msg_add_eap(%struct.radius_msg* %41, i32* %42, i32 24)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %34
  %48 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %49 = load %struct.radius_msg*, %struct.radius_msg** %11, align 8
  %50 = load i32, i32* @RADIUS_ATTR_PROXY_STATE, align 4
  %51 = call i64 @radius_msg_copy_attr(%struct.radius_msg* %48, %struct.radius_msg* %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %56 = call i32 @radius_msg_free(%struct.radius_msg* %55)
  store i32 -1, i32* %8, align 4
  br label %112

57:                                               ; preds = %47
  %58 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %59 = load %struct.radius_client*, %struct.radius_client** %10, align 8
  %60 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.radius_client*, %struct.radius_client** %10, align 8
  %64 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.radius_hdr*, %struct.radius_hdr** %20, align 8
  %67 = getelementptr inbounds %struct.radius_hdr, %struct.radius_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @radius_msg_finish_srv(%struct.radius_msg* %58, i32* %62, i32 %65, i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = call i32 (i8*, ...) @RADIUS_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %57
  %74 = load i64, i64* @wpa_debug_level, align 8
  %75 = load i64, i64* @MSG_MSGDUMP, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %79 = call i32 @radius_msg_dump(%struct.radius_msg* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.radius_server_data*, %struct.radius_server_data** %9, align 8
  %82 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %struct.radius_client*, %struct.radius_client** %10, align 8
  %87 = getelementptr inbounds %struct.radius_client, %struct.radius_client* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %92 = call %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg* %91)
  store %struct.wpabuf* %92, %struct.wpabuf** %19, align 8
  %93 = load %struct.radius_server_data*, %struct.radius_server_data** %9, align 8
  %94 = getelementptr inbounds %struct.radius_server_data, %struct.radius_server_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %97 = call i32 @wpabuf_head(%struct.wpabuf* %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %99 = call i32 @wpabuf_len(%struct.wpabuf* %98)
  %100 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %101 = call i64 @sendto(i32 %95, i32 %97, i32 %99, i32 0, %struct.sockaddr* %100, i32 4)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %80
  %104 = load i32, i32* @MSG_INFO, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @strerror(i32 %105)
  %107 = call i32 @wpa_printf(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  store i32 -1, i32* %17, align 4
  br label %108

108:                                              ; preds = %103, %80
  %109 = load %struct.radius_msg*, %struct.radius_msg** %16, align 8
  %110 = call i32 @radius_msg_free(%struct.radius_msg* %109)
  %111 = load i32, i32* %17, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %53, %33
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local %struct.radius_hdr* @radius_msg_get_hdr(%struct.radius_msg*) #1

declare dso_local i32 @RADIUS_DEBUG(i8*, ...) #1

declare dso_local %struct.radius_msg* @radius_msg_new(i32, i32) #1

declare dso_local i32 @os_memset(%struct.eap_hdr*, i32, i32) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @radius_msg_add_eap(%struct.radius_msg*, i32*, i32) #1

declare dso_local i64 @radius_msg_copy_attr(%struct.radius_msg*, %struct.radius_msg*, i32) #1

declare dso_local i32 @radius_msg_free(%struct.radius_msg*) #1

declare dso_local i64 @radius_msg_finish_srv(%struct.radius_msg*, i32*, i32, i32) #1

declare dso_local i32 @radius_msg_dump(%struct.radius_msg*) #1

declare dso_local %struct.wpabuf* @radius_msg_get_buf(%struct.radius_msg*) #1

declare dso_local i64 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
