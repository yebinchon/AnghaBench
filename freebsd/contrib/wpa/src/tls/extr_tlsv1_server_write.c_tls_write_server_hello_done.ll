; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Send ServerHelloDone\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_hello_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_hello_done(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %12 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @WPA_PUT_BE24(i32* %17, i32 0)
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32* %20, i32** %8, align 8
  %21 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %22 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %21, i32 0, i32 1
  %23 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = ptrtoint i32* %26 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call i64 @tlsv1_record_send(i32* %22, i32 %23, i32* %25, i32 %33, i32* %34, i32 %41, i64* %9)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %48 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %49 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %50 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %47, i32 %48, i32 %49)
  store i32 -1, i32* %4, align 4
  br label %67

51:                                               ; preds = %3
  %52 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %53 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %52, i32 0, i32 0
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @tls_verify_hash_add(i32* %53, i32* %54, i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %63
  store i32* %66, i32** %64, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %51, %44
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
