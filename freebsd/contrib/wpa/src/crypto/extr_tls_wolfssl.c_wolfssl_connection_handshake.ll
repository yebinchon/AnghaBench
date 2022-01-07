; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_connection_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_wolfssl_connection_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wolfSSL: Handshake finished - resumed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.tls_connection*, %struct.wpabuf*, %struct.wpabuf**, i32)* @wolfssl_connection_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wolfssl_connection_handshake(%struct.tls_connection* %0, %struct.wpabuf* %1, %struct.wpabuf** %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store %struct.wpabuf** %2, %struct.wpabuf*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %12 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %11, i32 0, i32 1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %14 = call i32 @wolfssl_reset_in_data(i32* %12, %struct.wpabuf* %13)
  %15 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %16 = icmp ne %struct.wpabuf** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %18, align 8
  br label %19

19:                                               ; preds = %17, %4
  %20 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.wpabuf* @wolfssl_handshake(%struct.tls_connection* %20, %struct.wpabuf* %21, i32 %22)
  store %struct.wpabuf* %23, %struct.wpabuf** %10, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %25 = icmp ne %struct.wpabuf* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %29 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wolfSSL_is_init_finished(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %36 = call i32 @tls_connection_resumed(i32* null, %struct.tls_connection* %35)
  %37 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  %39 = icmp ne %struct.wpabuf** %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %42 = icmp ne %struct.wpabuf* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %46 = call i32 @wpabuf_len(%struct.wpabuf* %45)
  %47 = call %struct.wpabuf* @wolfssl_get_appl_data(%struct.tls_connection* %44, i32 %46)
  %48 = load %struct.wpabuf**, %struct.wpabuf*** %8, align 8
  store %struct.wpabuf* %47, %struct.wpabuf** %48, align 8
  br label %49

49:                                               ; preds = %43, %40, %33
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %51, %struct.wpabuf** %5, align 8
  br label %52

52:                                               ; preds = %50, %26
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %53
}

declare dso_local i32 @wolfssl_reset_in_data(i32*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wolfssl_handshake(%struct.tls_connection*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wolfSSL_is_init_finished(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @tls_connection_resumed(i32*, %struct.tls_connection*) #1

declare dso_local %struct.wpabuf* @wolfssl_get_appl_data(%struct.tls_connection*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
