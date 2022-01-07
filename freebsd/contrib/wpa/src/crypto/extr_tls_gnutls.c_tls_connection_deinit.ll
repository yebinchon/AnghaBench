; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_connection*, %struct.tls_connection*, i32, i32, %struct.tls_connection*, i32, i32 }

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
  br label %39

8:                                                ; preds = %2
  %9 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %10 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gnutls_certificate_free_credentials(i32 %11)
  %13 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %14 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @gnutls_deinit(i32 %15)
  %17 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 4
  %19 = load %struct.tls_connection*, %struct.tls_connection** %18, align 8
  %20 = call i32 @os_free(%struct.tls_connection* %19)
  %21 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %22 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wpabuf_free(i32 %23)
  %25 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %26 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wpabuf_free(i32 %27)
  %29 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %30 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %29, i32 0, i32 1
  %31 = load %struct.tls_connection*, %struct.tls_connection** %30, align 8
  %32 = call i32 @os_free(%struct.tls_connection* %31)
  %33 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 0
  %35 = load %struct.tls_connection*, %struct.tls_connection** %34, align 8
  %36 = call i32 @os_free(%struct.tls_connection* %35)
  %37 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %38 = call i32 @os_free(%struct.tls_connection* %37)
  br label %39

39:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @gnutls_certificate_free_credentials(i32) #1

declare dso_local i32 @gnutls_deinit(i32) #1

declare dso_local i32 @os_free(%struct.tls_connection*) #1

declare dso_local i32 @wpabuf_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
