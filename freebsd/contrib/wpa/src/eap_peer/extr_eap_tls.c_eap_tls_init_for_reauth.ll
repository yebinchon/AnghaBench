; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_init_for_reauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tls.c_eap_tls_init_for_reauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_tls_data = type { i32, %struct.eap_tls_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eap_sm*, i8*)* @eap_tls_init_for_reauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eap_tls_init_for_reauth(%struct.eap_sm* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.eap_tls_data*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.eap_tls_data*
  store %struct.eap_tls_data* %8, %struct.eap_tls_data** %6, align 8
  %9 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %10 = call i32 @eap_tls_free_key(%struct.eap_tls_data* %9)
  %11 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %12 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %11, i32 0, i32 1
  %13 = load %struct.eap_tls_data*, %struct.eap_tls_data** %12, align 8
  %14 = call i32 @os_free(%struct.eap_tls_data* %13)
  %15 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %16 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %15, i32 0, i32 1
  store %struct.eap_tls_data* null, %struct.eap_tls_data** %16, align 8
  %17 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %18 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %19 = getelementptr inbounds %struct.eap_tls_data, %struct.eap_tls_data* %18, i32 0, i32 0
  %20 = call i64 @eap_peer_tls_reauth_init(%struct.eap_sm* %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.eap_tls_data*, %struct.eap_tls_data** %6, align 8
  %24 = call i32 @os_free(%struct.eap_tls_data* %23)
  store i8* null, i8** %3, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @eap_tls_free_key(%struct.eap_tls_data*) #1

declare dso_local i32 @os_free(%struct.eap_tls_data*) #1

declare dso_local i64 @eap_peer_tls_reauth_init(%struct.eap_sm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
