; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32*, i64, i64, i32, i64, i32, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Interworking: Start scan for network selection\00", align 1
@interworking_scan_res_handler = common dso_local global i32 0, align 4
@MANUAL_SCAN_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interworking_select(%struct.wpa_supplicant* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = call i32 @interworking_stop_fetch_anqp(%struct.wpa_supplicant* %7)
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 10
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_msg(%struct.wpa_supplicant* %24, i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @interworking_scan_res_handler, align 4
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @MANUAL_SCAN_REQ, align 4
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @os_free(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %47 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %46, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @interworking_stop_fetch_anqp(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
