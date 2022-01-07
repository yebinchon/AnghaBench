; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_connection_deinit(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_connection*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %4, align 8
  %5 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %6 = icmp eq %struct.tls_connection* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %55

8:                                                ; preds = %2
  %9 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %10 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @SSL_set_quiet_shutdown(i32 %16, i32 1)
  %18 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %19 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SSL_shutdown(i32 %20)
  br label %22

22:                                               ; preds = %13, %8
  %23 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %24 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SSL_free(i32 %25)
  %27 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %28 = call i32 @tls_engine_deinit(%struct.tls_connection* %27)
  %29 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %30 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %29, i32 0, i32 5
  %31 = load %struct.tls_connection*, %struct.tls_connection** %30, align 8
  %32 = call i32 @os_free(%struct.tls_connection* %31)
  %33 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 4
  %35 = load %struct.tls_connection*, %struct.tls_connection** %34, align 8
  %36 = call i32 @os_free(%struct.tls_connection* %35)
  %37 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 3
  %39 = load %struct.tls_connection*, %struct.tls_connection** %38, align 8
  %40 = call i32 @os_free(%struct.tls_connection* %39)
  %41 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %42 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %41, i32 0, i32 2
  %43 = load %struct.tls_connection*, %struct.tls_connection** %42, align 8
  %44 = call i32 @os_free(%struct.tls_connection* %43)
  %45 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %46 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %45, i32 0, i32 1
  %47 = load %struct.tls_connection*, %struct.tls_connection** %46, align 8
  %48 = call i32 @os_free(%struct.tls_connection* %47)
  %49 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %50 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %49, i32 0, i32 0
  %51 = load %struct.tls_connection*, %struct.tls_connection** %50, align 8
  %52 = call i32 @os_free(%struct.tls_connection* %51)
  %53 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %54 = call i32 @os_free(%struct.tls_connection* %53)
  br label %55

55:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @SSL_set_quiet_shutdown(i32, i32) #1

declare dso_local i32 @SSL_shutdown(i32) #1

declare dso_local i32 @SSL_free(i32) #1

declare dso_local i32 @tls_engine_deinit(%struct.tls_connection*) #1

declare dso_local i32 @os_free(%struct.tls_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
