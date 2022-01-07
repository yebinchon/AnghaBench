; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_set_anon_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_eapol_test.c_eapol_test_set_anon_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_test_data = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"EAP method updated anonymous_identity\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"anonymous_identity\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @eapol_test_set_anon_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_test_set_anon_id(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.eapol_test_data*, align 8
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.eapol_test_data*
  store %struct.eapol_test_data* %12, %struct.eapol_test_data** %7, align 8
  %13 = load %struct.eapol_test_data*, %struct.eapol_test_data** %7, align 8
  %14 = getelementptr inbounds %struct.eapol_test_data, %struct.eapol_test_data* %13, i32 0, i32 0
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %8, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @wpa_hexdump_ascii(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %17, i64 %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %64

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @wpa_config_set(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %64

35:                                               ; preds = %28
  br label %64

36:                                               ; preds = %25
  %37 = load i64, i64* %6, align 8
  %38 = mul i64 %37, 2
  %39 = add i64 %38, 1
  %40 = call i8* @os_malloc(i64 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %64

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 %46, 2
  %48 = add i64 %47, 1
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @wpa_snprintf_hex(i8* %45, i64 %48, i32* %49, i64 %50)
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @wpa_config_set(i32* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @os_free(i8* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %64

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %24, %34, %43, %62, %63, %35
  ret void
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i64 @wpa_config_set(i32*, i8*, i8*, i32) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i32*, i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
