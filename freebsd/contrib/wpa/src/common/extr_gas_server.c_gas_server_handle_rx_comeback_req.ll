; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_handle_rx_comeback_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_handle_rx_comeback_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_server_response = type { i32, i64, i32, i32, i32, i32, i32, %struct.gas_server_handler* }
%struct.gas_server_handler = type { i32, i64, %struct.gas_server* }
%struct.gas_server = type { i32, i32 (i32, i32, i32, %struct.wpabuf*, i32)* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"GAS: Sending out %u/%u remaining Query Response octets\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_EID_ADV_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gas_server_response*)* @gas_server_handle_rx_comeback_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_server_handle_rx_comeback_req(%struct.gas_server_response* %0) #0 {
  %2 = alloca %struct.gas_server_response*, align 8
  %3 = alloca %struct.gas_server_handler*, align 8
  %4 = alloca %struct.gas_server*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wpabuf*, align 8
  store %struct.gas_server_response* %0, %struct.gas_server_response** %2, align 8
  %10 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %11 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %10, i32 0, i32 7
  %12 = load %struct.gas_server_handler*, %struct.gas_server_handler** %11, align 8
  store %struct.gas_server_handler* %12, %struct.gas_server_handler** %3, align 8
  %13 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %14 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %13, i32 0, i32 2
  %15 = load %struct.gas_server*, %struct.gas_server** %14, align 8
  store %struct.gas_server* %15, %struct.gas_server** %4, align 8
  %16 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %17 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 56160
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 928, i32 1400
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %5, align 8
  %23 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %24 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 35, %25
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %6, align 8
  %29 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %30 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wpabuf_len(i32 %31)
  %33 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %34 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %8, align 8
  br label %48

46:                                               ; preds = %1
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %56 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %59 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %60 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ult i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %68 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = call %struct.wpabuf* @gas_build_comeback_resp(i32 %57, i32 %58, i32 %61, i32 %66, i32 0, i64 %72)
  store %struct.wpabuf* %73, %struct.wpabuf** %9, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %75 = icmp ne %struct.wpabuf* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %48
  %77 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %78 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %77, i32 0, i32 4
  %79 = call i32 @dl_list_del(i32* %78)
  %80 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %81 = call i32 @gas_server_free_response(%struct.gas_server_response* %80)
  br label %143

82:                                               ; preds = %48
  %83 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %84 = load i32, i32* @WLAN_EID_ADV_PROTO, align 4
  %85 = call i32 @wpabuf_put_u8(%struct.wpabuf* %83, i32 %84)
  %86 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %87 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %88 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 1, %89
  %91 = call i32 @wpabuf_put_u8(%struct.wpabuf* %86, i32 %90)
  %92 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %93 = call i32 @wpabuf_put_u8(%struct.wpabuf* %92, i32 127)
  %94 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %95 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %96 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.gas_server_handler*, %struct.gas_server_handler** %3, align 8
  %99 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = call i32 @wpabuf_put_data(%struct.wpabuf* %94, i64 %97, i64 %101)
  %103 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @wpabuf_put_le16(%struct.wpabuf* %103, i64 %104)
  %106 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %107 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %108 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @wpabuf_head_u8(i32 %109)
  %111 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %112 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @wpabuf_put_data(%struct.wpabuf* %106, i64 %114, i64 %115)
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %119 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.gas_server*, %struct.gas_server** %4, align 8
  %123 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %122, i32 0, i32 1
  %124 = load i32 (i32, i32, i32, %struct.wpabuf*, i32)*, i32 (i32, i32, i32, %struct.wpabuf*, i32)** %123, align 8
  %125 = load %struct.gas_server*, %struct.gas_server** %4, align 8
  %126 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %129 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.gas_server_response*, %struct.gas_server_response** %2, align 8
  %132 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = icmp ugt i64 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 2000, i32 0
  %140 = call i32 %124(i32 %127, i32 %130, i32 %133, %struct.wpabuf* %134, i32 %139)
  %141 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %142 = call i32 @wpabuf_free(%struct.wpabuf* %141)
  br label %143

143:                                              ; preds = %82, %76
  ret void
}

declare dso_local i64 @wpabuf_len(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local %struct.wpabuf* @gas_build_comeback_resp(i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @gas_server_free_response(%struct.gas_server_response*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i64 @wpabuf_head_u8(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
