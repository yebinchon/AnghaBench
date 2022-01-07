; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_CTX_set_client_cert_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_ssl_sess.c_SSL_CTX_set_client_cert_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@SSL_R_NO_CLIENT_CERT_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_CTX_set_client_cert_engine(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @ENGINE_init(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE, align 4
  %11 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %12 = call i32 @SSLerr(i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @ENGINE_get_ssl_client_cert_function(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @SSL_F_SSL_CTX_SET_CLIENT_CERT_ENGINE, align 4
  %19 = load i32, i32* @SSL_R_NO_CLIENT_CERT_METHOD, align 4
  %20 = call i32 @SSLerr(i32 %18, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ENGINE_finish(i32* %21)
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %17, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @ENGINE_get_ssl_client_cert_function(i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
