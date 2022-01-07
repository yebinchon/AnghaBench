; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process_icv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ikev2.c_eap_ikev2_process_icv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ikev2_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wpabuf = type { i32 }

@IKEV2_FLAGS_ICV_INCLUDED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"EAP-IKEV2: The message should have included integrity checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_ikev2_data*, %struct.wpabuf*, i32, i32*, i32**, i32)* @eap_ikev2_process_icv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ikev2_process_icv(%struct.eap_ikev2_data* %0, %struct.wpabuf* %1, i32 %2, i32* %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_ikev2_data*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.eap_ikev2_data* %0, %struct.eap_ikev2_data** %8, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @IKEV2_FLAGS_ICV_INCLUDED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %6
  %20 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32**, i32*** %12, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @eap_ikev2_validate_icv(i32 %24, i32* %27, i32 1, %struct.wpabuf* %28, i32* %29, i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %56

36:                                               ; preds = %19
  %37 = load i32, i32* %14, align 4
  %38 = load i32**, i32*** %12, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = sext i32 %37 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %38, align 8
  br label %55

43:                                               ; preds = %6
  %44 = load %struct.eap_ikev2_data*, %struct.eap_ikev2_data** %8, align 8
  %45 = getelementptr inbounds %struct.eap_ikev2_data, %struct.eap_ikev2_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %56

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %36
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %51, %35
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @eap_ikev2_validate_icv(i32, i32*, i32, %struct.wpabuf*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
