; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_set_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_set_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i32 }
%struct.tls_data = type { i64 }

@tls_connection_set_verify.counter = internal global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@SSL_VERIFY_CLIENT_ONCE = common dso_local global i32 0, align 4
@tls_verify_cb = common dso_local global i32* null, align 8
@SSL_VERIFY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_set_verify(i8* %0, %struct.tls_connection* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tls_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tls_data*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.tls_data*
  store %struct.tls_data* %16, %struct.tls_data** %14, align 8
  %17 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %18 = icmp eq %struct.tls_connection* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %81

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %30 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SSL_VERIFY_CLIENT_ONCE, align 4
  %33 = or i32 %31, %32
  %34 = load i32*, i32** @tls_verify_cb, align 8
  %35 = call i32 @SSL_set_verify(i32 %28, i32 %33, i32* %34)
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %40 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %43 = call i32 @SSL_set_verify(i32 %41, i32 %42, i32* null)
  br label %44

44:                                               ; preds = %36, %23
  %45 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @tls_set_conn_flags(%struct.tls_connection* %45, i32 %46, i32* null)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %81

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %53 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %55 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SSL_set_accept_state(i32 %56)
  %58 = load %struct.tls_data*, %struct.tls_data** %14, align 8
  %59 = getelementptr inbounds %struct.tls_data, %struct.tls_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load i32, i32* @tls_connection_set_verify.counter, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @tls_connection_set_verify.counter, align 4
  %65 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %66 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SSL_set_session_id_context(i32 %67, i8* bitcast (i32* @tls_connection_set_verify.counter to i8*), i64 4)
  br label %80

69:                                               ; preds = %50
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %74 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @SSL_set_session_id_context(i32 %75, i8* %76, i64 %77)
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %62
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %49, %19
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @SSL_set_verify(i32, i32, i32*) #1

declare dso_local i64 @tls_set_conn_flags(%struct.tls_connection*, i32, i32*) #1

declare dso_local i32 @SSL_set_accept_state(i32) #1

declare dso_local i32 @SSL_set_session_id_context(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
