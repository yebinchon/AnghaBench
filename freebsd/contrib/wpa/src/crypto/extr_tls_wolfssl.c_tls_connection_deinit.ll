; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_connection_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, %struct.tls_connection*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SSL: connection deinit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tls_connection_deinit(i8* %0, %struct.tls_connection* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_connection*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tls_connection* %1, %struct.tls_connection** %4, align 8
  %5 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %6 = icmp ne %struct.tls_connection* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %33

8:                                                ; preds = %2
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %12 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @wolfSSL_free(i32 %13)
  %15 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %16 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %15, i32 0, i32 3
  %17 = load %struct.tls_connection*, %struct.tls_connection** %16, align 8
  %18 = call i32 @os_free(%struct.tls_connection* %17)
  %19 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %20 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %19, i32 0, i32 2
  %21 = load %struct.tls_connection*, %struct.tls_connection** %20, align 8
  %22 = call i32 @os_free(%struct.tls_connection* %21)
  %23 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %24 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %23, i32 0, i32 1
  %25 = load %struct.tls_connection*, %struct.tls_connection** %24, align 8
  %26 = call i32 @os_free(%struct.tls_connection* %25)
  %27 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %28 = getelementptr inbounds %struct.tls_connection, %struct.tls_connection* %27, i32 0, i32 0
  %29 = load %struct.tls_connection*, %struct.tls_connection** %28, align 8
  %30 = call i32 @os_free(%struct.tls_connection* %29)
  %31 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %32 = call i32 @os_free(%struct.tls_connection* %31)
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wolfSSL_free(i32) #1

declare dso_local i32 @os_free(%struct.tls_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
