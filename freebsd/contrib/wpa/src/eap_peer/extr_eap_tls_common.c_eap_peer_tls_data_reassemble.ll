; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_data_reassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls_common.c_eap_peer_tls_data_reassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ssl_data = type { i64, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_ssl_data*, %struct.wpabuf*, i32*)* @eap_peer_tls_data_reassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_peer_tls_data_reassemble(%struct.eap_ssl_data* %0, %struct.wpabuf* %1, i32* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_ssl_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.eap_ssl_data* %0, %struct.eap_ssl_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %11 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %14 = call i64 @wpabuf_len(%struct.wpabuf* %13)
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %18 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %17, i32 0, i32 1
  %19 = load %struct.wpabuf*, %struct.wpabuf** %18, align 8
  %20 = icmp ne %struct.wpabuf* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16, %3
  %22 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %24 = call i32 @eap_peer_tls_reassemble_fragment(%struct.eap_ssl_data* %22, %struct.wpabuf* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32*, i32** %7, align 8
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %27
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %51

33:                                               ; preds = %21
  br label %47

34:                                               ; preds = %16
  %35 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %38 = call %struct.wpabuf* @wpabuf_dup(%struct.wpabuf* %37)
  %39 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %39, i32 0, i32 1
  store %struct.wpabuf* %38, %struct.wpabuf** %40, align 8
  %41 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %41, i32 0, i32 1
  %43 = load %struct.wpabuf*, %struct.wpabuf** %42, align 8
  %44 = icmp eq %struct.wpabuf* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %51

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %33
  %48 = load %struct.eap_ssl_data*, %struct.eap_ssl_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_ssl_data, %struct.eap_ssl_data* %48, i32 0, i32 1
  %50 = load %struct.wpabuf*, %struct.wpabuf** %49, align 8
  store %struct.wpabuf* %50, %struct.wpabuf** %4, align 8
  br label %51

51:                                               ; preds = %47, %45, %32
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %52
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @eap_peer_tls_reassemble_fragment(%struct.eap_ssl_data*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_dup(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
