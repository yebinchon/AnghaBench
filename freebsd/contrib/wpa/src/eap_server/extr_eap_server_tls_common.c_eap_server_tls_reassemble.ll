; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_reassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_reassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ssl_data = type { i64, i32, i32* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SSL: Received data\00", align 1
@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SSL: Short frame with TLS length\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SSL: TLS Message Length: %d\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"SSL: TLS Message Length (%d bytes) smaller than this fragment (%d bytes)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"SSL: Received packet: Flags 0x%x Message Length %u\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"SSL: Unexpected payload in WAIT_FRAG_ACK state\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"SSL: Fragment acknowledged\00", align 1
@EAP_TLS_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@FRAG_ACK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"SSL: All fragments received\00", align 1
@MSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ssl_data*, i32, i32**, i64*)* @eap_server_tls_reassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_server_tls_reassemble(%struct.eap_ssl_data* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_ssl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.eap_ssl_data* %0, %struct.eap_ssl_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32**, i32*** %8, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* @MSG_MSGDUMP, align 4
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @wpa_hexdump(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %19, i64 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %4
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %29, 4
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_INFO, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %162

34:                                               ; preds = %27
  %35 = load i32**, i32*** %8, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @WPA_GET_BE32(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %41, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, 4
  store i64 %46, i64* %44, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp ugt i64 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i64*, i64** %9, align 8
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %57)
  store i32 -1, i32* %5, align 4
  br label %162

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %59, %4
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %66 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %162

77:                                               ; preds = %70
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %162

80:                                               ; preds = %60
  %81 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %82 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %87 = load i32**, i32*** %8, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32**, i32*** %8, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = ptrtoint i32* %89 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i64 @eap_server_tls_process_cont(%struct.eap_ssl_data* %86, i32* %88, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  br label %162

100:                                              ; preds = %85, %80
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @EAP_TLS_FLAGS_MORE_FRAGMENTS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32**, i32*** %8, align 8
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32**, i32*** %8, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = ptrtoint i32* %111 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  %118 = trunc i64 %117 to i32
  %119 = call i64 @eap_server_tls_process_fragment(%struct.eap_ssl_data* %106, i32 %107, i32 %108, i32* %110, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %105
  store i32 -1, i32* %5, align 4
  br label %162

122:                                              ; preds = %105
  %123 = load i64, i64* @FRAG_ACK, align 8
  %124 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %125 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  store i32 1, i32* %5, align 4
  br label %162

126:                                              ; preds = %100
  %127 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %128 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @FRAG_ACK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i64, i64* @MSG, align 8
  %136 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %137 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %126
  %139 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %140 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %145 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %144, i32 0, i32 1
  %146 = load i32**, i32*** %8, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = load i32**, i32*** %8, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = ptrtoint i32* %148 to i64
  %152 = ptrtoint i32* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i32 @wpabuf_set(i32* %145, i32* %147, i32 %155)
  %157 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %158 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %157, i32 0, i32 1
  %159 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %6, align 8
  %160 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %159, i32 0, i32 2
  store i32* %158, i32** %160, align 8
  br label %161

161:                                              ; preds = %143, %138
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %122, %121, %99, %77, %74, %52, %31
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i64 @eap_server_tls_process_cont(%struct.eap_ssl_data*, i32*, i32) #1

declare dso_local i64 @eap_server_tls_process_fragment(%struct.eap_ssl_data*, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
