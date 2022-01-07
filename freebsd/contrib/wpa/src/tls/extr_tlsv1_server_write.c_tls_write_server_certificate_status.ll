; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 }

@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Send CertificateStatus (multi=%d)\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*, i32, i8*, i64)* @tls_write_server_certificate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_certificate_status(%struct.tlsv1_server* %0, i32** %1, i32* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_server*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %140

22:                                               ; preds = %6
  %23 = load i32**, i32*** %9, align 8
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %14, align 8
  %25 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %26 = add nsw i32 %25, 1
  %27 = add nsw i32 %26, 3
  %28 = add nsw i32 %27, 1
  %29 = add nsw i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %13, align 8
  %32 = add i64 %30, %31
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = zext i32 %39 to i64
  %41 = icmp ugt i64 %32, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load %struct.tlsv1_server*, %struct.tlsv1_server** %8, align 8
  %44 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %45 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %46 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %43, i32 %44, i32 %45)
  store i32 -1, i32* %7, align 4
  br label %140

47:                                               ; preds = %22
  %48 = load %struct.tlsv1_server*, %struct.tlsv1_server** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %14, align 8
  store i32* %51, i32** %15, align 8
  %52 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  store i32* %56, i32** %16, align 8
  %57 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS, align 4
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %14, align 8
  store i32 %57, i32* %58, align 4
  %60 = load i32*, i32** %14, align 8
  store i32* %60, i32** %17, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32* %62, i32** %14, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load i32*, i32** %14, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %14, align 8
  store i32 2, i32* %66, align 4
  br label %71

68:                                               ; preds = %47
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %14, align 8
  store i32 1, i32* %69, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @WPA_PUT_BE24(i32* %72, i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32* %77, i32** %14, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @os_memcpy(i32* %78, i8* %79, i64 %80)
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %14, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = sub nsw i64 %91, 3
  %93 = trunc i64 %92 to i32
  %94 = call i32 @WPA_PUT_BE24(i32* %85, i32 %93)
  %95 = load %struct.tlsv1_server*, %struct.tlsv1_server** %8, align 8
  %96 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %95, i32 0, i32 1
  %97 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = ptrtoint i32* %107 to i64
  %110 = ptrtoint i32* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i64 @tlsv1_record_send(i32* %96, i32 %97, i32* %98, i32 %105, i32* %106, i32 %113, i64* %18)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %71
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.tlsv1_server*, %struct.tlsv1_server** %8, align 8
  %120 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %121 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %122 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %119, i32 %120, i32 %121)
  store i32 -1, i32* %7, align 4
  br label %140

123:                                              ; preds = %71
  %124 = load i32*, i32** %15, align 8
  %125 = load i64, i64* %18, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %14, align 8
  %127 = load %struct.tlsv1_server*, %struct.tlsv1_server** %8, align 8
  %128 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %127, i32 0, i32 0
  %129 = load i32*, i32** %16, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = ptrtoint i32* %130 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @tls_verify_hash_add(i32* %128, i32* %129, i32 %136)
  %138 = load i32*, i32** %14, align 8
  %139 = load i32**, i32*** %9, align 8
  store i32* %138, i32** %139, align 8
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %123, %116, %42, %21
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i8*, i64) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
