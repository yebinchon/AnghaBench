; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_send_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_gas_server.c_gas_server_send_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gas_server = type { i32, i32 (i32, i32, i32*, %struct.wpabuf*, i32)*, i32 }
%struct.gas_server_handler = type { i32, i32 }
%struct.wpabuf = type { i32 }
%struct.gas_server_response = type { i32, i64, i32, %struct.wpabuf*, i32, i32, %struct.gas_server_handler* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DPP: Allocated GAS response @%p\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@WLAN_EID_ADV_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"GAS: Need to fragment query response\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"GAS: Full query response fits in the GAS Initial Response frame\00", align 1
@GAS_QUERY_TIMEOUT = common dso_local global i32 0, align 4
@gas_server_response_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gas_server*, %struct.gas_server_handler*, i32*, i32, i32, %struct.wpabuf*)* @gas_server_send_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_server_send_resp(%struct.gas_server* %0, %struct.gas_server_handler* %1, i32* %2, i32 %3, i32 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca %struct.gas_server*, align 8
  %8 = alloca %struct.gas_server_handler*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.wpabuf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gas_server_response*, align 8
  store %struct.gas_server* %0, %struct.gas_server** %7, align 8
  store %struct.gas_server_handler* %1, %struct.gas_server_handler** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.wpabuf* %5, %struct.wpabuf** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 56160
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 928, i32 1400
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  %24 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %25 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 34, %26
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %14, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %31 = icmp ne %struct.wpabuf* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  br label %158

33:                                               ; preds = %6
  %34 = call %struct.gas_server_response* @os_zalloc(i32 48)
  store %struct.gas_server_response* %34, %struct.gas_server_response** %18, align 8
  %35 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %36 = icmp ne %struct.gas_server_response* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  br label %158

40:                                               ; preds = %33
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.gas_server_response* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %46 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %48 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %49 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %48, i32 0, i32 6
  store %struct.gas_server_handler* %47, %struct.gas_server_handler** %49, align 8
  %50 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %51 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @os_memcpy(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %58 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %61 = call i64 @wpabuf_len(%struct.wpabuf* %60)
  %62 = add i64 %59, %61
  %63 = load i64, i64* %13, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  store i32 1, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %69

66:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  %67 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %68 = call i64 @wpabuf_len(%struct.wpabuf* %67)
  store i64 %68, i64* %15, align 8
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %74 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = call %struct.wpabuf* @gas_build_initial_resp(i32 %70, i32 %71, i32 %72, i32 %79)
  store %struct.wpabuf* %80, %struct.wpabuf** %16, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %82 = icmp ne %struct.wpabuf* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %85 = call i32 @wpabuf_free(%struct.wpabuf* %84)
  %86 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %87 = call i32 @gas_server_free_response(%struct.gas_server_response* %86)
  br label %158

88:                                               ; preds = %69
  %89 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %90 = load i32, i32* @WLAN_EID_ADV_PROTO, align 4
  %91 = call i32 @wpabuf_put_u8(%struct.wpabuf* %89, i32 %90)
  %92 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %93 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %94 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 1, %95
  %97 = call i32 @wpabuf_put_u8(%struct.wpabuf* %92, i32 %96)
  %98 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %99 = call i32 @wpabuf_put_u8(%struct.wpabuf* %98, i32 127)
  %100 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %101 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %102 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.gas_server_handler*, %struct.gas_server_handler** %8, align 8
  %105 = getelementptr inbounds %struct.gas_server_handler, %struct.gas_server_handler* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @wpabuf_put_data(%struct.wpabuf* %100, i32 %103, i32 %106)
  %108 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i32 @wpabuf_put_le16(%struct.wpabuf* %108, i64 %109)
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %88
  %114 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %115 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %116 = call i32 @wpabuf_put_buf(%struct.wpabuf* %114, %struct.wpabuf* %115)
  br label %117

117:                                              ; preds = %113, %88
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %126

123:                                              ; preds = %117
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %129 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %131 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %132 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %131, i32 0, i32 3
  store %struct.wpabuf* %130, %struct.wpabuf** %132, align 8
  %133 = load %struct.gas_server*, %struct.gas_server** %7, align 8
  %134 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %133, i32 0, i32 2
  %135 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %136 = getelementptr inbounds %struct.gas_server_response, %struct.gas_server_response* %135, i32 0, i32 2
  %137 = call i32 @dl_list_add(i32* %134, i32* %136)
  %138 = load %struct.gas_server*, %struct.gas_server** %7, align 8
  %139 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %138, i32 0, i32 1
  %140 = load i32 (i32, i32, i32*, %struct.wpabuf*, i32)*, i32 (i32, i32, i32*, %struct.wpabuf*, i32)** %139, align 8
  %141 = load %struct.gas_server*, %struct.gas_server** %7, align 8
  %142 = getelementptr inbounds %struct.gas_server, %struct.gas_server* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 2000, i32 0
  %151 = call i32 %140(i32 %143, i32 %144, i32* %145, %struct.wpabuf* %146, i32 %150)
  %152 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %153 = call i32 @wpabuf_free(%struct.wpabuf* %152)
  %154 = load i32, i32* @GAS_QUERY_TIMEOUT, align 4
  %155 = load i32, i32* @gas_server_response_timeout, align 4
  %156 = load %struct.gas_server_response*, %struct.gas_server_response** %18, align 8
  %157 = call i32 @eloop_register_timeout(i32 %154, i32 0, i32 %155, %struct.gas_server_response* %156, i32* null)
  br label %158

158:                                              ; preds = %126, %83, %37, %32
  ret void
}

declare dso_local %struct.gas_server_response* @os_zalloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @gas_build_initial_resp(i32, i32, i32, i32) #1

declare dso_local i32 @gas_server_free_response(%struct.gas_server_response*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.gas_server_response*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
