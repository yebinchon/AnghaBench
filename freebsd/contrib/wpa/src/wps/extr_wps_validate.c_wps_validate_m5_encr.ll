; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m5_encr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_validate.c_wps_validate_m5_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M5 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M5 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M5 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m5_encr(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wps_parse_attr, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_INFO, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %14 = call i64 @wps_parse_msg(%struct.wpabuf* %13, %struct.wps_parse_attr* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %33

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @wps_validate_e_snonce1(i32 %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @wps_validate_key_wrap_auth(i32 %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %16, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_e_snonce1(i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
