; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_basic_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_basic_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_basic_body = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MKA Basic Parameter Set\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\09MKA Version Identifier: %d\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Key Server Priority: %d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"\09Key Server: %d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09MACsec Desired: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\09MACsec Capability: %d\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09Parameter set body length: %zu\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\09SCI: %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\09Actor's Member Identifier: %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\09Actor's Message Number: %d\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09Algorithm Agility: %s\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\09CAK Name\00", align 1
@MKA_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802_1x_mka_basic_body*)* @ieee802_1x_mka_dump_basic_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_mka_dump_basic_body(%struct.ieee802_1x_mka_basic_body* %0) #0 {
  %2 = alloca %struct.ieee802_1x_mka_basic_body*, align 8
  %3 = alloca i64, align 8
  store %struct.ieee802_1x_mka_basic_body* %0, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %4 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %5 = icmp ne %struct.ieee802_1x_mka_basic_body* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %72

7:                                                ; preds = %1
  %8 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %9 = call i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_basic_body* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %14 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %29 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %34 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %42 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %41, i32 0, i32 9
  %43 = call i64 @sci_txt(i32* %42)
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %43)
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %47 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @mi_txt(i32 %48)
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %53 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @be_to_host32(i32 %54)
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %59 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @algo_agility_txt(i32 %60)
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.ieee802_1x_mka_basic_body*, %struct.ieee802_1x_mka_basic_body** %2, align 8
  %65 = getelementptr inbounds %struct.ieee802_1x_mka_basic_body, %struct.ieee802_1x_mka_basic_body* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @MKA_HDR_LEN, align 8
  %69 = add i64 %67, %68
  %70 = sub i64 %69, 64
  %71 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %66, i64 %70)
  br label %72

72:                                               ; preds = %7, %6
  ret void
}

declare dso_local i64 @get_mka_param_body_len(%struct.ieee802_1x_mka_basic_body*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @sci_txt(i32*) #1

declare dso_local i64 @mi_txt(i32) #1

declare dso_local i64 @be_to_host32(i32) #1

declare dso_local i64 @algo_agility_txt(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
