; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"ClientDiffieHellmanPublic received\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: ClientDiffieHellmanPublic\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"TLSv1: Implicit public value encoding not supported\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid client public value length\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Client public value overflow (length %d)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Yc (client's public value)\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"TLSv1: No DH parameters available\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not allocate memory for DH\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"TLSv1: Shared secret from DH key exchange\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32*, i32*)* @tls_process_client_key_exchange_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_key_exchange_dh(%struct.tlsv1_server* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %16 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @MSG_MSGDUMP, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @wpa_hexdump(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %34 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %35 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %36 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %33, i32 %34, i32 %35)
  store i32 -1, i32* %4, align 4
  br label %175

37:                                               ; preds = %3
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = icmp slt i64 %43, 3
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %47 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %49 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %50 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %51 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %48, i32 %49, i32 %50)
  store i32 -1, i32* %4, align 4
  br label %175

52:                                               ; preds = %37
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @WPA_GET_BE16(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = icmp sgt i64 %58, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %52
  %67 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %71 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %72 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %73 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %70, i32 %71, i32 %72)
  store i32 -1, i32* %4, align 4
  br label %175

74:                                               ; preds = %52
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @wpa_hexdump(i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %80 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = icmp eq %struct.TYPE_2__* %81, null
  br i1 %82, label %95, label %83

83:                                               ; preds = %74
  %84 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %92 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %90, %83, %74
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %98 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %99 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %100 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %101 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %98, i32 %99, i32 %100)
  store i32 -1, i32* %4, align 4
  br label %175

102:                                              ; preds = %90
  %103 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %104 = call i32 @tlsv1_server_get_dh_p(%struct.tlsv1_server* %103, i32** %13, i64* %14)
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32* @os_malloc(i64 %106)
  store i32* %107, i32** %10, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 @wpa_printf(i32 %111, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %113 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %114 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %115 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %116 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %113, i32 %114, i32 %115)
  store i32 -1, i32* %4, align 4
  br label %175

117:                                              ; preds = %102
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %121 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %124 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = call i64 @crypto_mod_exp(i32* %118, i32 %119, i32* %122, i64 %125, i32* %126, i64 %127, i32* %128, i64* %11)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %117
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @os_free(i32* %132)
  %134 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %135 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %136 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %137 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %134, i32 %135, i32 %136)
  store i32 -1, i32* %4, align 4
  br label %175

138:                                              ; preds = %117
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = load i32*, i32** %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @wpa_hexdump_key(i32 %139, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32* %140, i64 %141)
  %143 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %144 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %147 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @os_memset(i32* %145, i32 0, i64 %148)
  %150 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %151 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @os_free(i32* %152)
  %154 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %155 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %154, i32 0, i32 1
  store i32* null, i32** %155, align 8
  %156 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @tlsv1_server_derive_keys(%struct.tlsv1_server* %156, i32* %157, i64 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = call i32 @os_memset(i32* %160, i32 0, i64 %161)
  %163 = load i32*, i32** %10, align 8
  %164 = call i32 @os_free(i32* %163)
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %138
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = call i32 @wpa_printf(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %170 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %171 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %172 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %173 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %170, i32 %171, i32 %172)
  store i32 -1, i32* %4, align 4
  br label %175

174:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %167, %131, %110, %95, %66, %45, %30
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @tlsv1_server_get_dh_p(%struct.tlsv1_server*, i32**, i64*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @crypto_mod_exp(i32*, i32, i32*, i64, i32*, i64, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @tlsv1_server_derive_keys(%struct.tlsv1_server*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
