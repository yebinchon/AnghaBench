; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_id_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_id_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_gpsk_data = type { i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Too short GPSK-1 packet\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"EAP-GPSK: ID_Server overflow\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-GPSK: No memory for ID_Server\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"EAP-GPSK: ID_Server\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_gpsk_data*, i32*, i32*)* @eap_gpsk_process_id_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_process_id_server(%struct.eap_gpsk_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_gpsk_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = ptrtoint i32* %9 to i64
  %12 = ptrtoint i32* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  %15 = icmp slt i64 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %70

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @WPA_GET_BE16(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = ptrtoint i32* %24 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %70

36:                                               ; preds = %19
  %37 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %38 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @os_free(i32* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32* @os_memdup(i32* %41, i32 %42)
  %44 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  %46 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %47 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %70

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %56 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %59 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %62 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wpa_hexdump_ascii(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %60, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %53, %50, %33, %16
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
