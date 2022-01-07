; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SSL: set verify: %d\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@tls_verify_cb = common dso_local global i32* null, align 8
@SSL_VERIFY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_set_verify(i8* %0, %struct.tls_connection* %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tls_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %15 = icmp ne %struct.tls_connection* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %47

17:                                               ; preds = %6
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %30 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** @tls_verify_cb, align 8
  %33 = call i32 @wolfSSL_set_verify(i32 %28, i32 %31, i32* %32)
  br label %42

34:                                               ; preds = %17
  %35 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %36 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %41 = call i32 @wolfSSL_set_verify(i32 %39, i32 %40, i32* null)
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %44 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wolfSSL_set_accept_state(i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %16
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wolfSSL_set_verify(i32, i32, i32*) #1

declare dso_local i32 @wolfSSL_set_accept_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
