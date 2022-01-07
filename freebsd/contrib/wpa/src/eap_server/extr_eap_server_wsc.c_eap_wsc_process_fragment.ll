; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_wsc_data = type { i32, i32* }

@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"EAP-WSC: No Message Length field in a fragmented packet\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-WSC: No memory for message\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-WSC: Received %lu bytes in first fragment, waiting for %lu bytes more\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_wsc_data*, i32, i32, i32, i32*, i64)* @eap_wsc_process_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_wsc_process_fragment(%struct.eap_wsc_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_wsc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_wsc_data* %0, %struct.eap_wsc_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %15 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @WSC_FLAGS_LF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %61

26:                                               ; preds = %18, %6
  %27 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %28 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = call i32* @wpabuf_alloc(i32 %32)
  %34 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %35 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %61

43:                                               ; preds = %31
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %46 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %48 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @wpabuf_put_data(i32* %49, i32* %50, i64 %51)
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %8, align 8
  %56 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @wpabuf_tailroom(i32* %57)
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %58)
  br label %60

60:                                               ; preds = %43, %26
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %40, %23
  %62 = load i32, i32* %7, align 4
  ret i32 %62
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
