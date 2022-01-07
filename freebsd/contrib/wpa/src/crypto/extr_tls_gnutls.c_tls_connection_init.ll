; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, %struct.tls_global* }
%struct.tls_global = type { i32, i64 }

@GNUTLS_CRD_CERTIFICATE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to configure credentials: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tls_connection* @tls_connection_init(i8* %0) #0 {
  %2 = alloca %struct.tls_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_global*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.tls_global*
  store %struct.tls_global* %8, %struct.tls_global** %4, align 8
  %9 = call %struct.tls_connection* @os_zalloc(i32 16)
  store %struct.tls_connection* %9, %struct.tls_connection** %5, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %11 = icmp eq %struct.tls_connection* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.tls_global*, %struct.tls_global** %4, align 8
  %15 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %16 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %15, i32 0, i32 2
  store %struct.tls_global* %14, %struct.tls_global** %16, align 8
  %17 = load %struct.tls_global*, %struct.tls_global** %4, align 8
  %18 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %19 = call i64 @tls_gnutls_init_session(%struct.tls_global* %17, %struct.tls_connection* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %23 = call i32 @os_free(%struct.tls_connection* %22)
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %58

24:                                               ; preds = %13
  %25 = load %struct.tls_global*, %struct.tls_global** %4, align 8
  %26 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %31 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GNUTLS_CRD_CERTIFICATE, align 4
  %34 = load %struct.tls_global*, %struct.tls_global** %4, align 8
  %35 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gnutls_credentials_set(i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @gnutls_strerror(i32 %42)
  %44 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %46 = call i32 @os_free(%struct.tls_connection* %45)
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %58

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %24
  %49 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %50 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %49, i32 0, i32 0
  %51 = call i64 @gnutls_certificate_allocate_credentials(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %55 = call i32 @os_free(%struct.tls_connection* %54)
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %58

56:                                               ; preds = %48
  %57 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  store %struct.tls_connection* %57, %struct.tls_connection** %2, align 8
  br label %58

58:                                               ; preds = %56, %53, %40, %21, %12
  %59 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  ret %struct.tls_connection* %59
}

declare dso_local %struct.tls_connection* @os_zalloc(i32) #1

declare dso_local i64 @tls_gnutls_init_session(%struct.tls_global*, %struct.tls_connection*) #1

declare dso_local i32 @os_free(%struct.tls_connection*) #1

declare dso_local i32 @gnutls_credentials_set(i32, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i64 @gnutls_certificate_allocate_credentials(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
