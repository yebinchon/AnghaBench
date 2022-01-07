; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_get_tls_unique.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_get_tls_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_tls_unique(%struct.tls_connection* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tls_connection* %0, %struct.tls_connection** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %11 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @SSL_session_reused(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18, %3
  %22 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %23 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26, %18
  %30 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %31 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @SSL_get_peer_finished(i32 %32, i32* %33, i64 %34)
  store i64 %35, i64* %8, align 8
  br label %43

36:                                               ; preds = %26, %21
  %37 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @SSL_get_finished(i32 %39, i32* %40, i64 %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %36, %29
  %44 = load i64, i64* %8, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43
  store i32 -1, i32* %4, align 4
  br label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @SSL_session_reused(i32) #1

declare dso_local i64 @SSL_get_peer_finished(i32, i32*, i64) #1

declare dso_local i64 @SSL_get_finished(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
