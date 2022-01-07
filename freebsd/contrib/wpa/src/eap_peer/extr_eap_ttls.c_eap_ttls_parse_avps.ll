; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_avps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_avps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.ttls_parse_avp = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-TTLS: Decrypted Phase 2 AVPs\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"EAP-TTLS: Too short Phase 2 AVP frame len=%lu expected %lu or more - dropped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.ttls_parse_avp*)* @eap_ttls_parse_avps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_parse_avps(%struct.wpabuf* %0, %struct.ttls_parse_avp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.ttls_parse_avp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.ttls_parse_avp* %1, %struct.ttls_parse_avp** %5, align 8
  %10 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %11 = call i32* @wpabuf_mhead(%struct.wpabuf* %10)
  store i32* %11, i32** %6, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call i64 @wpabuf_len(%struct.wpabuf* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @wpa_hexdump(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %15, i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_WARNING, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 4)
  store i32 -1, i32* %3, align 4
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %5, align 8
  %26 = call i32 @os_memset(%struct.ttls_parse_avp* %25, i32 0, i32 4)
  br label %27

27:                                               ; preds = %64, %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %5, align 8
  %34 = call i32 @eap_ttls_parse_avp(i32* %31, i64 %32, %struct.ttls_parse_avp* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %66

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 3
  %41 = sub nsw i32 4, %40
  %42 = and i32 %41, 3
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %47
  store i32* %49, i32** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  br label %64

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %7, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %57, %56
  br label %27

65:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %37, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @os_memset(%struct.ttls_parse_avp*, i32, i32) #1

declare dso_local i32 @eap_ttls_parse_avp(i32*, i64, %struct.ttls_parse_avp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
