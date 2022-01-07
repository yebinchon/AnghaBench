; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_remove_session_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_remove_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@tls_ex_idx_session = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"OpenSSL: Free application session data %p (sess %p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @remove_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_session_cb(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @tls_ex_idx_session, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %26

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* @tls_ex_idx_session, align 8
  %12 = call %struct.wpabuf* @SSL_SESSION_get_ex_data(i32* %10, i64 %11)
  store %struct.wpabuf* %12, %struct.wpabuf** %5, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %14 = icmp ne %struct.wpabuf* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %26

16:                                               ; preds = %9
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %18, i32* %19)
  %21 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %22 = call i32 @wpabuf_free(%struct.wpabuf* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* @tls_ex_idx_session, align 8
  %25 = call i32 @SSL_SESSION_set_ex_data(i32* %23, i64 %24, i32* null)
  br label %26

26:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local %struct.wpabuf* @SSL_SESSION_get_ex_data(i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wpabuf*, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @SSL_SESSION_set_ex_data(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
