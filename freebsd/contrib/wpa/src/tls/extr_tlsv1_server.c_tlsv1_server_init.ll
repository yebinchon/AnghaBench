; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server.c_tlsv1_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32*, i32, i32, %struct.tlsv1_credentials* }
%struct.tlsv1_credentials = type { i32 }

@CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TLSv1: Failed to initialize verify hash\00", align 1
@TLS_DHE_RSA_WITH_AES_256_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_256_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_DHE_RSA_WITH_AES_256_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_256_CBC_SHA = common dso_local global i32 0, align 4
@TLS_DHE_RSA_WITH_AES_128_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_128_CBC_SHA256 = common dso_local global i32 0, align 4
@TLS_DHE_RSA_WITH_AES_128_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_AES_128_CBC_SHA = common dso_local global i32 0, align 4
@TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_3DES_EDE_CBC_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_SHA = common dso_local global i32 0, align 4
@TLS_RSA_WITH_RC4_128_MD5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tlsv1_server* @tlsv1_server_init(%struct.tlsv1_credentials* %0) #0 {
  %2 = alloca %struct.tlsv1_server*, align 8
  %3 = alloca %struct.tlsv1_credentials*, align 8
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.tlsv1_credentials* %0, %struct.tlsv1_credentials** %3, align 8
  %7 = call %struct.tlsv1_server* @os_zalloc(i32 32)
  store %struct.tlsv1_server* %7, %struct.tlsv1_server** %4, align 8
  %8 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %9 = icmp eq %struct.tlsv1_server* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.tlsv1_server* null, %struct.tlsv1_server** %2, align 8
  br label %95

11:                                               ; preds = %1
  %12 = load %struct.tlsv1_credentials*, %struct.tlsv1_credentials** %3, align 8
  %13 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %14 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %13, i32 0, i32 4
  store %struct.tlsv1_credentials* %12, %struct.tlsv1_credentials** %14, align 8
  %15 = load i32, i32* @CLIENT_HELLO, align 4
  %16 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %17 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %19 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %18, i32 0, i32 2
  %20 = call i64 @tls_verify_hash_init(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %26 = call i32 @os_free(%struct.tlsv1_server* %25)
  store %struct.tlsv1_server* null, %struct.tlsv1_server** %2, align 8
  br label %95

27:                                               ; preds = %11
  store i64 0, i64* %5, align 8
  %28 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %29 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %6, align 8
  %31 = load i32, i32* @TLS_DHE_RSA_WITH_AES_256_CBC_SHA256, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA256, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @TLS_DHE_RSA_WITH_AES_256_CBC_SHA, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @TLS_DHE_RSA_WITH_AES_128_CBC_SHA256, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA256, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  %60 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @TLS_DHE_RSA_WITH_AES_128_CBC_SHA, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @TLS_RSA_WITH_3DES_EDE_CBC_SHA, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @TLS_RSA_WITH_RC4_128_SHA, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  %85 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* @TLS_RSA_WITH_RC4_128_MD5, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %5, align 8
  %90 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %86, i32* %90, align 4
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %93 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  store %struct.tlsv1_server* %94, %struct.tlsv1_server** %2, align 8
  br label %95

95:                                               ; preds = %27, %22, %10
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %2, align 8
  ret %struct.tlsv1_server* %96
}

declare dso_local %struct.tlsv1_server* @os_zalloc(i32) #1

declare dso_local i64 @tls_verify_hash_init(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.tlsv1_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
