; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32 }
%struct.tls_config = type { i8*, i32 }

@tls_ref_count = common dso_local global i64 0, align 8
@tls_global = common dso_local global %struct.tls_context* null, align 8
@wolfssl_receive_cb = common dso_local global i32 0, align 4
@wolfssl_send_cb = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4
@remove_session_cb = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"wolfSSL: Failed to set cipher string '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tls_init(%struct.tls_config* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tls_config*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i8*, align 8
  store %struct.tls_config* %0, %struct.tls_config** %3, align 8
  %7 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %8 = call %struct.tls_context* @tls_context_new(%struct.tls_config* %7)
  store %struct.tls_context* %8, %struct.tls_context** %5, align 8
  %9 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %10 = icmp ne %struct.tls_context* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %102

12:                                               ; preds = %1
  %13 = load i64, i64* @tls_ref_count, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  store %struct.tls_context* %16, %struct.tls_context** @tls_global, align 8
  %17 = call i64 (...) @wolfSSL_Init()
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %102

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i64, i64* @tls_ref_count, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @tls_ref_count, align 8
  %24 = call i32 (...) @wolfSSLv23_client_method()
  %25 = call i8* @wolfSSL_CTX_new(i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* @tls_ref_count, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* @tls_ref_count, align 8
  %31 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %32 = load %struct.tls_context*, %struct.tls_context** @tls_global, align 8
  %33 = icmp ne %struct.tls_context* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %36 = call i32 @os_free(%struct.tls_context* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64, i64* @tls_ref_count, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.tls_context*, %struct.tls_context** @tls_global, align 8
  %42 = call i32 @os_free(%struct.tls_context* %41)
  store %struct.tls_context* null, %struct.tls_context** @tls_global, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @wolfssl_receive_cb, align 4
  %47 = call i32 @wolfSSL_SetIORecv(i8* %45, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @wolfssl_send_cb, align 4
  %50 = call i32 @wolfSSL_SetIOSend(i8* %48, i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %53 = call i32 @wolfSSL_CTX_set_ex_data(i8* %51, i32 0, %struct.tls_context* %52)
  %54 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %55 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %44
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @wolfSSL_CTX_set_quiet_shutdown(i8* %59, i32 1)
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %63 = call i32 @wolfSSL_CTX_set_session_cache_mode(i8* %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %66 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @wolfSSL_CTX_set_timeout(i8* %64, i32 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @remove_session_cb, align 4
  %71 = call i32 @wolfSSL_CTX_sess_set_remove_cb(i8* %69, i32 %70)
  br label %76

72:                                               ; preds = %44
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %75 = call i32 @wolfSSL_CTX_set_session_cache_mode(i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %58
  %77 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %78 = icmp ne %struct.tls_config* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %81 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %86 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %6, align 8
  br label %89

88:                                               ; preds = %79, %76
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @wolfSSL_CTX_set_cipher_list(i8* %90, i8* %91)
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @MSG_ERROR, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @tls_deinit(i8* %98)
  store i8* null, i8** %2, align 8
  br label %102

100:                                              ; preds = %89
  %101 = load i8*, i8** %4, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %100, %94, %19, %11
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local %struct.tls_context* @tls_context_new(%struct.tls_config*) #1

declare dso_local i64 @wolfSSL_Init(...) #1

declare dso_local i8* @wolfSSL_CTX_new(i32) #1

declare dso_local i32 @wolfSSLv23_client_method(...) #1

declare dso_local i32 @os_free(%struct.tls_context*) #1

declare dso_local i32 @wolfSSL_SetIORecv(i8*, i32) #1

declare dso_local i32 @wolfSSL_SetIOSend(i8*, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_ex_data(i8*, i32, %struct.tls_context*) #1

declare dso_local i32 @wolfSSL_CTX_set_quiet_shutdown(i8*, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_session_cache_mode(i8*, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_timeout(i8*, i32) #1

declare dso_local i32 @wolfSSL_CTX_sess_set_remove_cb(i8*, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_cipher_list(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @tls_deinit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
