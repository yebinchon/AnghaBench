; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pax.c_eap_pax_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pax_data = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@EAP_PAX_MK_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Extended Master Session Key\00", align 1
@EAP_PAX_RAND_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_pax_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_pax_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_pax_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_pax_data*
  store %struct.eap_pax_data* %11, %struct.eap_pax_data** %8, align 8
  %12 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %44

18:                                               ; preds = %3
  %19 = load i64, i64* @EAP_EMSK_LEN, align 8
  %20 = call i32* @os_malloc(i64 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %44

24:                                               ; preds = %18
  %25 = load i64, i64* @EAP_EMSK_LEN, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %28 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %31 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %34 = load %struct.eap_pax_data*, %struct.eap_pax_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_pax_data, %struct.eap_pax_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %39 = mul nsw i32 2, %38
  %40 = load i64, i64* @EAP_EMSK_LEN, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @eap_pax_kdf(i32 %29, i32 %32, i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39, i64 %40, i32* %41)
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %24, %23, %17
  %45 = load i32*, i32** %4, align 8
  ret i32* %45
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @eap_pax_kdf(i32, i32, i32, i8*, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
