; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_get_success_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_get_success_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.tls_connection = type { i32 }

@tls_ex_idx_session = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @tls_connection_get_success_data(%struct.tls_connection* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.tls_connection*, align 8
  %4 = alloca i32*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %3, align 8
  %5 = load i64, i64* @tls_ex_idx_session, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load %struct.tls_connection*, %struct.tls_connection** %3, align 8
  %9 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @SSL_get_session(i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %18

14:                                               ; preds = %7
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* @tls_ex_idx_session, align 8
  %17 = call %struct.wpabuf* @SSL_SESSION_get_ex_data(i32* %15, i64 %16)
  store %struct.wpabuf* %17, %struct.wpabuf** %2, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %19
}

declare dso_local i32* @SSL_get_session(i32) #1

declare dso_local %struct.wpabuf* @SSL_SESSION_get_ex_data(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
