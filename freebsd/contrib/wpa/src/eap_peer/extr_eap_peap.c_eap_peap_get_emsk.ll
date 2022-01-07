; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64, i64, i32 }

@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_peap_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_peap_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %11, %struct.eap_peap_data** %8, align 8
  %12 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %18 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %3
  store i32* null, i32** %4, align 8
  br label %43

22:                                               ; preds = %16
  %23 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %24 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %30 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @EAP_EMSK_LEN, align 8
  %35 = call i32* @os_memdup(i64 %33, i64 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store i32* null, i32** %4, align 8
  br label %43

39:                                               ; preds = %28
  %40 = load i64, i64* @EAP_EMSK_LEN, align 8
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %9, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %39, %38, %27, %21
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32* @os_memdup(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
