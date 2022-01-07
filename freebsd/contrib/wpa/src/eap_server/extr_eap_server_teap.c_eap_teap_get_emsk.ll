; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_get_emsk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_get_emsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i64, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_teap_get_emsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_teap_get_emsk(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %11, %struct.eap_teap_data** %8, align 8
  %12 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load i64, i64* @EAP_EMSK_LEN, align 8
  %20 = call i32* @os_malloc(i64 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %38

24:                                               ; preds = %18
  %25 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i64 @eap_teap_derive_eap_emsk(i32 %27, i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @os_free(i32* %32)
  store i32* null, i32** %4, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load i64, i64* @EAP_EMSK_LEN, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32*, i32** %9, align 8
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %34, %31, %23, %17
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @eap_teap_derive_eap_emsk(i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
