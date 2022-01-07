; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_success_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_set_success_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wolfSSL: Set success data\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"wolfSSL: No session found for success data\00", align 1
@tls_ex_idx_session = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"wolfSSL: Replacing old success data %p\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"wolfSSL: Stored success data %p\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"wolfSSL: Failed to store success data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_connection_set_success_data(%struct.tls_connection* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.tls_connection*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.tls_connection*, %struct.tls_connection** %3, align 8
  %10 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @wolfSSL_get_session(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %43

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @tls_ex_idx_session, align 4
  %21 = call %struct.wpabuf* @wolfSSL_SESSION_get_ex_data(i32* %19, i32 %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %6, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %26)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %29 = call i32 @wpabuf_free(%struct.wpabuf* %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @tls_ex_idx_session, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %34 = call i32 @wolfSSL_SESSION_set_ex_data(i32* %31, i32 %32, %struct.wpabuf* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %39)
  %41 = load %struct.tls_connection*, %struct.tls_connection** %3, align 8
  %42 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %48

43:                                               ; preds = %36, %15
  %44 = load i32, i32* @MSG_INFO, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %47 = call i32 @wpabuf_free(%struct.wpabuf* %46)
  br label %48

48:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wolfSSL_get_session(i32) #1

declare dso_local %struct.wpabuf* @wolfSSL_SESSION_get_ex_data(i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wolfSSL_SESSION_set_ex_data(i32*, i32, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
