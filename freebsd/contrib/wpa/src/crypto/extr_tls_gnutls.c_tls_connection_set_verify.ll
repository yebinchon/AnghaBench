; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_set_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_set_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32* }

@GNUTLS_CERT_REQUIRE = common dso_local global i32 0, align 4
@GNUTLS_CERT_REQUEST = common dso_local global i32 0, align 4

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
  %15 = icmp eq %struct.tls_connection* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %6
  %17 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %6
  store i32 -1, i32* %7, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %25 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tls_connection*, %struct.tls_connection** %9, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @GNUTLS_CERT_REQUIRE, align 4
  br label %35

33:                                               ; preds = %22
  %34 = load i32, i32* @GNUTLS_CERT_REQUEST, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call i32 @gnutls_certificate_server_set_request(i32* %28, i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %21
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @gnutls_certificate_server_set_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
