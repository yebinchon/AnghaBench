; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_version_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_version_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 }

@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@TLS_VERSION_1 = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@TLS_VERSION_1_1 = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_TLSv1_2 = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64)* @tls_version_disabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_version_disabled(%struct.tlsv1_client* %0, i64 %1) #0 {
  %3 = alloca %struct.tlsv1_client*, align 8
  %4 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %6 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @TLS_VERSION_1, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %17 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_1, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @TLS_VERSION_1_1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %39, label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.tlsv1_client*, %struct.tlsv1_client** %3, align 8
  %28 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_2, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @TLS_VERSION_1_2, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i1 [ false, %26 ], [ %36, %33 ]
  br label %39

39:                                               ; preds = %37, %22, %11
  %40 = phi i1 [ true, %22 ], [ true, %11 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
