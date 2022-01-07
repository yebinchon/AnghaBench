; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client.c_tlsv1_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

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
@TLS_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tlsv1_client* @tlsv1_client_init() #0 {
  %1 = alloca %struct.tlsv1_client*, align 8
  %2 = alloca %struct.tlsv1_client*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = call %struct.tlsv1_client* @os_zalloc(i32 32)
  store %struct.tlsv1_client* %5, %struct.tlsv1_client** %2, align 8
  %6 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %7 = icmp eq %struct.tlsv1_client* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store %struct.tlsv1_client* null, %struct.tlsv1_client** %1, align 8
  br label %94

9:                                                ; preds = %0
  %10 = load i32, i32* @CLIENT_HELLO, align 4
  %11 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %12 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %14 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %13, i32 0, i32 3
  %15 = call i64 @tls_verify_hash_init(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %21 = call i32 @os_free(%struct.tlsv1_client* %20)
  store %struct.tlsv1_client* null, %struct.tlsv1_client** %1, align 8
  br label %94

22:                                               ; preds = %9
  store i64 0, i64* %3, align 8
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %24 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load i32, i32* @TLS_DHE_RSA_WITH_AES_256_CBC_SHA256, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA256, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @TLS_DHE_RSA_WITH_AES_256_CBC_SHA, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @TLS_RSA_WITH_AES_256_CBC_SHA, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @TLS_DHE_RSA_WITH_AES_128_CBC_SHA256, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %3, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA256, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @TLS_DHE_RSA_WITH_AES_128_CBC_SHA, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  %60 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @TLS_RSA_WITH_AES_128_CBC_SHA, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %3, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* @TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %3, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @TLS_RSA_WITH_3DES_EDE_CBC_SHA, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  %75 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @TLS_RSA_WITH_RC4_128_SHA, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %3, align 8
  %80 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* @TLS_RSA_WITH_RC4_128_MD5, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %3, align 8
  %85 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %88 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @TLS_VERSION, align 4
  %90 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  %91 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load %struct.tlsv1_client*, %struct.tlsv1_client** %2, align 8
  store %struct.tlsv1_client* %93, %struct.tlsv1_client** %1, align 8
  br label %94

94:                                               ; preds = %22, %17, %8
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %1, align 8
  ret %struct.tlsv1_client* %95
}

declare dso_local %struct.tlsv1_client* @os_zalloc(i32) #1

declare dso_local i64 @tls_verify_hash_init(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.tlsv1_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
