; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { i32, i32 }
%struct.pac_attr_hdr = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"EAP-TEAP: PAC TLV overrun (type=%d len=%lu left=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"EAP-TEAP: PAC TLV does not include all the required fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_pac*, i32*, i64)* @eap_teap_process_pac_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_process_pac_tlv(%struct.eap_teap_pac* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_teap_pac*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pac_attr_hdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %45, %3
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %17, 8
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.pac_attr_hdr*
  store %struct.pac_attr_hdr* %21, %struct.pac_attr_hdr** %8, align 8
  %22 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %8, align 8
  %23 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be_to_host16(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be_to_host16(i32 %29)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  store i32* %33, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %19
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %42, i64 %43)
  store i32 -1, i32* %4, align 4
  br label %74

45:                                               ; preds = %19
  %46 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @eap_teap_parse_pac_tlv(%struct.eap_teap_pac* %46, i32 %47, i32* %48, i64 %49, i32* %13)
  %51 = load i64, i64* %11, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 %51
  store i32* %53, i32** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %16

57:                                               ; preds = %16
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %5, align 8
  %62 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %5, align 8
  %67 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %60, %57
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %74

73:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %70, %39
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i8* @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_parse_pac_tlv(%struct.eap_teap_pac*, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
