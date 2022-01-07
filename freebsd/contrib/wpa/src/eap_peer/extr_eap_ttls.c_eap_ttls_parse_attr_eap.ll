; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_attr_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_parse_attr_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttls_parse_avp = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-TTLS: AVP - EAP Message\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"EAP-TTLS: Failed to allocate memory for Phase 2 EAP data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.ttls_parse_avp*)* @eap_ttls_parse_attr_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_parse_attr_eap(i32* %0, i64 %1, %struct.ttls_parse_avp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ttls_parse_avp*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ttls_parse_avp* %2, %struct.ttls_parse_avp** %7, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %12 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32* @os_memdup(i32* %16, i64 %17)
  %19 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %20 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %22 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @MSG_WARNING, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

28:                                               ; preds = %15
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %31 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %34 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %37 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add i64 %38, %39
  %41 = call i32* @os_realloc(i32* %35, i64 %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @MSG_WARNING, align 4
  %46 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %65

47:                                               ; preds = %32
  %48 = load i32*, i32** %8, align 8
  %49 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %50 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @os_memcpy(i32* %52, i32* %53, i64 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %58 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %7, align 8
  %61 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %47, %28
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %44, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i32* @os_realloc(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
