; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_connection_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i64, i64, i32* }
%struct.tls_global = type { i32, i64, i32 }

@GNUTLS_SHUT_RDWR = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"GnuTLS: Failed to preparare new session for session resumption use\00", align 1
@GNUTLS_CRD_CERTIFICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"GnuTLS: Failed to configure credentials for session resumption: %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GnuTLS: Failed to set session data: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_connection_shutdown(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca %struct.tls_global*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tls_global*
  store %struct.tls_global* %9, %struct.tls_global** %6, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %11 = icmp eq %struct.tls_connection* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GNUTLS_SHUT_RDWR, align 4
  %18 = call i32 @gnutls_bye(i32 %16, i32 %17)
  %19 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %20 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @wpabuf_free(i32* %21)
  %23 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %24 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %26 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %28 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gnutls_deinit(i32 %29)
  %31 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %32 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %33 = call i64 @tls_gnutls_init_session(%struct.tls_global* %31, %struct.tls_connection* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %13
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %90

38:                                               ; preds = %13
  %39 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %40 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GNUTLS_CRD_CERTIFICATE, align 4
  %43 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %44 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %49 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %55

51:                                               ; preds = %38
  %52 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %53 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i32 [ %50, %47 ], [ %54, %51 ]
  %57 = call i32 @gnutls_credentials_set(i32 %41, i32 %42, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @gnutls_strerror(i32 %62)
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 -1, i32* %3, align 4
  br label %90

65:                                               ; preds = %55
  %66 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %67 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %72 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %75 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.tls_global*, %struct.tls_global** %6, align 8
  %78 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @gnutls_session_set_data(i32 %73, i64 %76, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %70
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @gnutls_strerror(i32 %85)
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %3, align 4
  br label %90

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %65
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %83, %60, %35, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @gnutls_bye(i32, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @gnutls_deinit(i32) #1

declare dso_local i64 @tls_gnutls_init_session(%struct.tls_global*, %struct.tls_connection*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @gnutls_credentials_set(i32, i32, i32) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_session_set_data(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
