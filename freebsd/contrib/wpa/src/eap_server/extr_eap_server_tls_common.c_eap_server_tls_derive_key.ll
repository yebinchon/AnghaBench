; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tls_common.c_eap_server_tls_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ssl_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eap_server_tls_derive_key(%struct.eap_sm* %0, %struct.eap_ssl_data* %1, i8* %2, i32* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_ssl_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_ssl_data* %1, %struct.eap_ssl_data** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i64, i64* %13, align 8
  %16 = call i32* @os_malloc(i64 %15)
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %39

20:                                               ; preds = %6
  %21 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %22 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %9, align 8
  %25 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @tls_connection_export_key(i32 %23, i32 %26, i8* %27, i32* %28, i64 %29, i32* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load i32*, i32** %14, align 8
  %36 = call i32 @os_free(i32* %35)
  store i32* null, i32** %7, align 8
  br label %39

37:                                               ; preds = %20
  %38 = load i32*, i32** %14, align 8
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %37, %34, %19
  %40 = load i32*, i32** %7, align 8
  ret i32* %40
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @tls_connection_export_key(i32, i32, i8*, i32*, i64, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
