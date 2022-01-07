; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_verify_client_post_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_lib.c_SSL_verify_client_post_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_R_WRONG_SSL_VERSION = common dso_local global i32 0, align 4
@SSL_R_NOT_SERVER = common dso_local global i32 0, align 4
@SSL_R_STILL_IN_INIT = common dso_local global i32 0, align 4
@SSL_R_EXTENSION_NOT_RECEIVED = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_REQUEST_PENDING = common dso_local global i32 0, align 4
@SSL_R_REQUEST_SENT = common dso_local global i32 0, align 4
@SSL_R_INVALID_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_verify_client_post_handshake(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = call i32 @SSL_IS_TLS13(%struct.TYPE_7__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %9 = load i32, i32* @SSL_R_WRONG_SSL_VERSION, align 4
  %10 = call i32 @SSLerr(i32 %8, i32 %9)
  store i32 0, i32* %2, align 4
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %18 = load i32, i32* @SSL_R_NOT_SERVER, align 4
  %19 = call i32 @SSLerr(i32 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %65

20:                                               ; preds = %11
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @SSL_is_init_finished(%struct.TYPE_7__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %26 = load i32, i32* @SSL_R_STILL_IN_INIT, align 4
  %27 = call i32 @SSLerr(i32 %25, i32 %26)
  store i32 0, i32* %2, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %36 [
    i32 130, label %32
    i32 131, label %37
    i32 132, label %41
    i32 128, label %42
    i32 129, label %46
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %34 = load i32, i32* @SSL_R_EXTENSION_NOT_RECEIVED, align 4
  %35 = call i32 @SSLerr(i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %65

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %28, %36
  %38 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %39 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %40 = call i32 @SSLerr(i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %65

41:                                               ; preds = %28
  br label %50

42:                                               ; preds = %28
  %43 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %44 = load i32, i32* @SSL_R_REQUEST_PENDING, align 4
  %45 = call i32 @SSLerr(i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %65

46:                                               ; preds = %28
  %47 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %48 = load i32, i32* @SSL_R_REQUEST_SENT, align 4
  %49 = call i32 @SSLerr(i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %65

50:                                               ; preds = %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 128, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i32 @send_certificate_request(%struct.TYPE_7__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 132, i32* %58, align 4
  %59 = load i32, i32* @SSL_F_SSL_VERIFY_CLIENT_POST_HANDSHAKE, align 4
  %60 = load i32, i32* @SSL_R_INVALID_CONFIG, align 4
  %61 = call i32 @SSLerr(i32 %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %65

62:                                               ; preds = %50
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = call i32 @ossl_statem_set_in_init(%struct.TYPE_7__* %63, i32 1)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %56, %46, %42, %37, %32, %24, %16, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_7__*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_is_init_finished(%struct.TYPE_7__*) #1

declare dso_local i32 @send_certificate_request(%struct.TYPE_7__*) #1

declare dso_local i32 @ossl_statem_set_in_init(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
