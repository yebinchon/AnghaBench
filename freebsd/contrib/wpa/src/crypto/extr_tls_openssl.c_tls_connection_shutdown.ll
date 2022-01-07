; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_connection_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_shutdown(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %5, align 8
  %6 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %7 = icmp eq %struct.tls_connection* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

9:                                                ; preds = %2
  %10 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %11 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SSL_set_quiet_shutdown(i32 %12, i32 1)
  %14 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SSL_shutdown(i32 %16)
  %18 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %19 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SSL_clear(i32 %20)
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %9, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @SSL_set_quiet_shutdown(i32, i32) #1

declare dso_local i32 @SSL_shutdown(i32) #1

declare dso_local i32 @SSL_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
