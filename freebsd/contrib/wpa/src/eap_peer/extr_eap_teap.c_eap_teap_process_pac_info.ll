; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_pac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_pac = type { i64, i32, i32, i32*, i32 }
%struct.pac_attr_hdr = type { i32, i32 }

@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"EAP-TEAP: PAC-Info overrun (type=%d len=%lu left=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"EAP-TEAP: PAC-Info does not include all the required fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_pac*)* @eap_teap_process_pac_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_process_pac_info(%struct.eap_teap_pac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_teap_pac*, align 8
  %4 = alloca %struct.pac_attr_hdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.eap_teap_pac* %0, %struct.eap_teap_pac** %3, align 8
  %9 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %10 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %11 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %13 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %16 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %55, %1
  %19 = load i64, i64* %6, align 8
  %20 = icmp ugt i64 %19, 8
  br i1 %20, label %21, label %62

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to %struct.pac_attr_hdr*
  store %struct.pac_attr_hdr* %23, %struct.pac_attr_hdr** %4, align 8
  %24 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %4, align 8
  %25 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @be_to_host16(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be_to_host16(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32* %35, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 8
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %21
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44, i64 %45)
  store i32 -1, i32* %2, align 4
  br label %76

47:                                               ; preds = %21
  %48 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @eap_teap_parse_pac_info(%struct.eap_teap_pac* %48, i32 %49, i32* %50, i64 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %76

55:                                               ; preds = %47
  %56 = load i64, i64* %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %18

62:                                               ; preds = %18
  %63 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %64 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %3, align 8
  %69 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %72, %54, %41
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_teap_parse_pac_info(%struct.eap_teap_pac*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
