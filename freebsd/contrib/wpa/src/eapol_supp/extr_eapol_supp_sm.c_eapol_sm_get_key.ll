; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAPOL: EAP key not available\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EAPOL: Failed to get eapKeyData\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"EAPOL: Requested key length (%lu) not available (len=%lu)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"EAPOL: Successfully fetched key (len=%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eapol_sm_get_key(%struct.eapol_sm* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eapol_sm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.eapol_sm* %0, %struct.eapol_sm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %11 = icmp eq %struct.eapol_sm* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %14 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @eap_key_available(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

21:                                               ; preds = %12
  %22 = load %struct.eapol_sm*, %struct.eapol_sm** %5, align 8
  %23 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @eap_get_eapKeyData(i32 %24, i64* %9)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %50

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @os_memcpy(i32* %43, i32* %44, i64 %45)
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %35, %28, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @eap_key_available(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @eap_get_eapKeyData(i32, i64*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
