; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_process_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_ossl_statem_client_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_statem_client_process_message(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %12 [
    i32 128, label %19
    i32 141, label %23
    i32 140, label %27
    i32 137, label %31
    i32 138, label %35
    i32 132, label %39
    i32 139, label %43
    i32 129, label %47
    i32 136, label %51
    i32 130, label %55
    i32 134, label %59
    i32 133, label %63
    i32 135, label %67
    i32 131, label %71
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %15 = load i32, i32* @SSL_F_OSSL_STATEM_CLIENT_PROCESS_MESSAGE, align 4
  %16 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %17 = call i32 @SSLfatal(%struct.TYPE_19__* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @tls_process_server_hello(%struct.TYPE_19__* %20, i32* %21)
  store i32 %22, i32* %3, align 4
  br label %75

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @dtls_process_hello_verify(%struct.TYPE_19__* %24, i32* %25)
  store i32 %26, i32* %3, align 4
  br label %75

27:                                               ; preds = %2
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @tls_process_server_certificate(%struct.TYPE_19__* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @tls_process_cert_verify(%struct.TYPE_19__* %32, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %2
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @tls_process_cert_status(%struct.TYPE_19__* %36, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @tls_process_key_exchange(%struct.TYPE_19__* %40, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %2
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @tls_process_certificate_request(%struct.TYPE_19__* %44, i32* %45)
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %2
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @tls_process_server_done(%struct.TYPE_19__* %48, i32* %49)
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @tls_process_change_cipher_spec(%struct.TYPE_19__* %52, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %2
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @tls_process_new_session_ticket(%struct.TYPE_19__* %56, i32* %57)
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %2
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @tls_process_finished(%struct.TYPE_19__* %60, i32* %61)
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %2
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @tls_process_hello_req(%struct.TYPE_19__* %64, i32* %65)
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %2
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @tls_process_encrypted_extensions(%struct.TYPE_19__* %68, i32* %69)
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @tls_process_key_update(%struct.TYPE_19__* %72, i32* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @SSLfatal(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @tls_process_server_hello(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @dtls_process_hello_verify(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_server_certificate(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_cert_verify(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_cert_status(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_key_exchange(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_server_done(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_change_cipher_spec(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_new_session_ticket(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_finished(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_hello_req(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_encrypted_extensions(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @tls_process_key_update(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
