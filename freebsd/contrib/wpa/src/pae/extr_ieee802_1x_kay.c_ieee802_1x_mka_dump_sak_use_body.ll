; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_sak_use_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/pae/extr_ieee802_1x_kay.c_ieee802_1x_mka_dump_sak_use_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_mka_sak_use_body = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MACsec SAK Use parameter set\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09Latest Key AN....: %d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\09Latest Key Tx....: %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"\09Latest Key Rx....: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09Old Key AN.......: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\09Old Key Tx.......: %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\09Old Key Rx.......: %s\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"\09Plain Tx.........: %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\09Plain Rx.........: %s\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\09Delay Protect....: %s\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09Body Length......: %d\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"\09Key Server MI....: %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\09Key Number.......: %u\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\09Lowest PN........: %u\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\09Old Key Server MI: %s\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"\09Old Key Number...: %u\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\09Old Lowest PN....: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802_1x_mka_sak_use_body*)* @ieee802_1x_mka_dump_sak_use_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_mka_dump_sak_use_body(%struct.ieee802_1x_mka_sak_use_body* %0) #0 {
  %2 = alloca %struct.ieee802_1x_mka_sak_use_body*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee802_1x_mka_sak_use_body* %0, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %4 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %5 = icmp eq %struct.ieee802_1x_mka_sak_use_body* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %107

7:                                                ; preds = %1
  %8 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %9 = call i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_sak_use_body* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %14 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %19 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @yes_no(i32 %20)
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %25 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @yes_no(i32 %26)
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %31 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %36 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @yes_no(i32 %37)
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %42 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @yes_no(i32 %43)
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %48 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @yes_no(i32 %49)
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %54 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @yes_no(i32 %55)
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %60 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @yes_no(i32 %61)
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %7
  br label %107

70:                                               ; preds = %7
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %73 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mi_txt(i32 %74)
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %79 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be_to_host32(i32 %80)
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %85 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be_to_host32(i32 %86)
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %91 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mi_txt(i32 %92)
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %97 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be_to_host32(i32 %98)
  %100 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = load %struct.ieee802_1x_mka_sak_use_body*, %struct.ieee802_1x_mka_sak_use_body** %2, align 8
  %103 = getelementptr inbounds %struct.ieee802_1x_mka_sak_use_body, %struct.ieee802_1x_mka_sak_use_body* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @be_to_host32(i32 %104)
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %70, %69, %6
  ret void
}

declare dso_local i32 @get_mka_param_body_len(%struct.ieee802_1x_mka_sak_use_body*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @mi_txt(i32) #1

declare dso_local i32 @be_to_host32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
