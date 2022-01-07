; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_tnc.c_eap_tnc_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tnc_data = type { i32* }

@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-TNC: No Message Length field in a fragmented packet\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-TNC: No memory for message\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-TNC: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_tnc_data*, i32, i32, i32*, i64)* @eap_tnc_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tnc_process_fragment(%struct.eap_tnc_data* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_tnc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_tnc_data* %0, %struct.eap_tnc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %13 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %56

24:                                               ; preds = %16, %5
  %25 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @wpabuf_alloc(i32 %30)
  %32 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %33 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %35 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %56

41:                                               ; preds = %29
  %42 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @wpabuf_put_data(i32* %44, i32* %45, i64 %46)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %7, align 8
  %51 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @wpabuf_tailroom(i32* %52)
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %49, i64 %53)
  br label %55

55:                                               ; preds = %41, %24
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %38, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i64) #1

declare dso_local i64 @wpabuf_tailroom(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
