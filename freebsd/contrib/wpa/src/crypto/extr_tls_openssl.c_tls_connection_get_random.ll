; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_get_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_get_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i32* }
%struct.tls_random = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_get_random(i8* %0, %struct.tls_connection* %1, %struct.tls_random* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tls_connection*, align 8
  %7 = alloca %struct.tls_random*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %6, align 8
  store %struct.tls_random* %2, %struct.tls_random** %7, align 8
  %9 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %10 = icmp eq %struct.tls_connection* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %13 = icmp eq %struct.tls_random* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %49

15:                                               ; preds = %11
  %16 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %17 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %49

22:                                               ; preds = %15
  %23 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %24 = call i32 @os_memset(%struct.tls_random* %23, i32 0, i32 16)
  %25 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %26 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %29 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %32 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SSL_get_client_random(i32* %30, i32 %33, i32 4)
  %35 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %36 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %41 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.tls_connection*, %struct.tls_connection** %6, align 8
  %44 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SSL_get_server_random(i32* %42, i32 %45, i32 4)
  %47 = load %struct.tls_random*, %struct.tls_random** %7, align 8
  %48 = getelementptr inbounds %struct.tls_random, %struct.tls_random* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %22, %21, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @os_memset(%struct.tls_random*, i32, i32) #1

declare dso_local i32 @SSL_get_client_random(i32*, i32, i32) #1

declare dso_local i32 @SSL_get_server_random(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
