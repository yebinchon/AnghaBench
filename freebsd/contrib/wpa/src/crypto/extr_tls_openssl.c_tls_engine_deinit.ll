; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_engine_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_openssl.c_tls_engine_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ENGINE: engine deinit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tls_connection*)* @tls_engine_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_engine_deinit(%struct.tls_connection* %0) #0 {
  %2 = alloca %struct.tls_connection*, align 8
  store %struct.tls_connection* %0, %struct.tls_connection** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %6 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %11 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @EVP_PKEY_free(i32* %12)
  %14 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %15 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %18 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %23 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ENGINE_finish(i32* %24)
  %26 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  %27 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
