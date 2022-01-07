; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_gnutls_init_session.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_gnutls.c_tls_gnutls_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_global = type { i64 }
%struct.tls_connection = type { i32 }

@GNUTLS_SERVER = common dso_local global i32 0, align 4
@GNUTLS_CLIENT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"TLS: Failed to initialize new TLS connection: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"NORMAL:-VERS-SSL3.0\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"GnuTLS: Priority string failure at '%s'\00", align 1
@tls_pull_func = common dso_local global i32 0, align 4
@tls_push_func = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"TLS: Failed to setup new TLS connection: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tls_global*, %struct.tls_connection*)* @tls_gnutls_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_gnutls_init_session(%struct.tls_global* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tls_global*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.tls_global* %0, %struct.tls_global** %4, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %5, align 8
  %8 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %9 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %8, i32 0, i32 0
  %10 = load %struct.tls_global*, %struct.tls_global** %4, align 8
  %11 = getelementptr inbounds %struct.tls_global, %struct.tls_global* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GNUTLS_SERVER, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GNUTLS_CLIENT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @gnutls_init(i32* %9, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @gnutls_strerror(i32 %25)
  %27 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 -1, i32* %3, align 4
  br label %78

28:                                               ; preds = %18
  %29 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %30 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gnutls_set_default_priority(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %69

36:                                               ; preds = %28
  %37 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %38 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gnutls_priority_set_direct(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @MSG_ERROR, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  br label %69

47:                                               ; preds = %36
  %48 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %49 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @tls_pull_func, align 4
  %52 = call i32 @gnutls_transport_set_pull_function(i32 %50, i32 %51)
  %53 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %54 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @tls_push_func, align 4
  %57 = call i32 @gnutls_transport_set_push_function(i32 %55, i32 %56)
  %58 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %59 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %62 = ptrtoint %struct.tls_connection* %61 to i32
  %63 = call i32 @gnutls_transport_set_ptr(i32 %60, i32 %62)
  %64 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %65 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %68 = call i32 @gnutls_session_set_ptr(i32 %66, %struct.tls_connection* %67)
  store i32 0, i32* %3, align 4
  br label %78

69:                                               ; preds = %43, %35
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i8* @gnutls_strerror(i32 %71)
  %73 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %75 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @gnutls_deinit(i32 %76)
  store i32 -1, i32* %3, align 4
  br label %78

78:                                               ; preds = %69, %47, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @gnutls_init(i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i8* @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_set_default_priority(i32) #1

declare dso_local i32 @gnutls_priority_set_direct(i32, i8*, i8**) #1

declare dso_local i32 @gnutls_transport_set_pull_function(i32, i32) #1

declare dso_local i32 @gnutls_transport_set_push_function(i32, i32) #1

declare dso_local i32 @gnutls_transport_set_ptr(i32, i32) #1

declare dso_local i32 @gnutls_session_set_ptr(i32, %struct.tls_connection*) #1

declare dso_local i32 @gnutls_deinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
