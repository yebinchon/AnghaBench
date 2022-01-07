; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_dac_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_server.c_radius_server_dac_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_server_data = type { i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MACSTR = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i64 0, align 8
@RADIUS_802_1X_ADDR_FORMAT = common dso_local global i32 0, align 4
@RADIUS_ATTR_CALLING_STATION_ID = common dso_local global i32 0, align 4
@RADIUS_ATTR_EVENT_TIMESTAMP = common dso_local global i32 0, align 4
@RADIUS_CODE_COA_REQUEST = common dso_local global i32 0, align 4
@RADIUS_CODE_DISCONNECT_REQUEST = common dso_local global i32 0, align 4
@RADIUS_VENDOR_ATTR_WFA_HS20_T_C_FILTERING = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@get_db_session_fields = common dso_local global i32 0, align 4
@wpa_debug_level = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radius_server_dac_request(%struct.radius_server_data* %0, i8* %1) #0 {
  %3 = alloca %struct.radius_server_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.radius_server_data* %0, %struct.radius_server_data** %3, align 8
  store i8* %1, i8** %4, align 8
  ret i32 -1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
