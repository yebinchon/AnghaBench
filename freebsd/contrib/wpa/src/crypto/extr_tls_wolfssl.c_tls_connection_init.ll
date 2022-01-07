; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SSL: connection init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tls_connection* @tls_connection_init(i8* %0) #0 {
  %2 = alloca %struct.tls_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tls_connection*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %4, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.tls_connection* @os_zalloc(i32 16)
  store %struct.tls_connection* %10, %struct.tls_connection** %5, align 8
  %11 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %12 = icmp ne %struct.tls_connection* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @wolfSSL_new(i32* %15)
  %17 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %20 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %25 = call i32 @os_free(%struct.tls_connection* %24)
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %61

26:                                               ; preds = %14
  %27 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %28 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %31 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %30, i32 0, i32 3
  %32 = call i32 @wolfSSL_SetIOReadCtx(i32 %29, i32* %31)
  %33 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %34 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %37 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %36, i32 0, i32 2
  %38 = call i32 @wolfSSL_SetIOWriteCtx(i32 %35, i32* %37)
  %39 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %40 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %43 = call i32 @wolfSSL_set_ex_data(i32 %41, i32 0, %struct.tls_connection* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @wolfSSL_CTX_get_ex_data(i32* %44, i32 0)
  %46 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %47 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %49 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wolfSSL_KeepArrays(i32 %50)
  %52 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %53 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @wolfSSL_KeepHandshakeResources(i32 %54)
  %56 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  %57 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wolfSSL_UseClientSuites(i32 %58)
  %60 = load %struct.tls_connection*, %struct.tls_connection** %5, align 8
  store %struct.tls_connection* %60, %struct.tls_connection** %2, align 8
  br label %61

61:                                               ; preds = %26, %23, %13
  %62 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  ret %struct.tls_connection* %62
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.tls_connection* @os_zalloc(i32) #1

declare dso_local i32 @wolfSSL_new(i32*) #1

declare dso_local i32 @os_free(%struct.tls_connection*) #1

declare dso_local i32 @wolfSSL_SetIOReadCtx(i32, i32*) #1

declare dso_local i32 @wolfSSL_SetIOWriteCtx(i32, i32*) #1

declare dso_local i32 @wolfSSL_set_ex_data(i32, i32, %struct.tls_connection*) #1

declare dso_local i32 @wolfSSL_CTX_get_ex_data(i32*, i32) #1

declare dso_local i32 @wolfSSL_KeepArrays(i32) #1

declare dso_local i32 @wolfSSL_KeepHandshakeResources(i32) #1

declare dso_local i32 @wolfSSL_UseClientSuites(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
