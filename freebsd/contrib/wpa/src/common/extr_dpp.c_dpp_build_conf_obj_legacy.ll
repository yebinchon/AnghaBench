; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_obj_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_obj_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i32 }
%struct.dpp_configuration = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"\22cred\22:{\22akm\22:\22%s\22,\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"DPP: Configuration Object (legacy)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, i32, %struct.dpp_configuration*)* @dpp_build_conf_obj_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_build_conf_obj_legacy(%struct.dpp_authentication* %0, i32 %1, %struct.dpp_configuration* %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpp_configuration*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dpp_configuration* %2, %struct.dpp_configuration** %7, align 8
  %9 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %10 = load %struct.dpp_configuration*, %struct.dpp_configuration** %7, align 8
  %11 = call %struct.wpabuf* @dpp_build_conf_start(%struct.dpp_authentication* %9, %struct.dpp_configuration* %10, i32 1000)
  store %struct.wpabuf* %11, %struct.wpabuf** %8, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %13 = icmp ne %struct.wpabuf* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %17 = load %struct.dpp_configuration*, %struct.dpp_configuration** %7, align 8
  %18 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dpp_akm_str(i32 %19)
  %21 = call i32 @wpabuf_printf(%struct.wpabuf* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %23 = load %struct.dpp_configuration*, %struct.dpp_configuration** %7, align 8
  %24 = call i32 @dpp_build_legacy_cred_params(%struct.wpabuf* %22, %struct.dpp_configuration* %23)
  %25 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %26 = call i32 @wpabuf_put_str(%struct.wpabuf* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %29 = call i32 @wpabuf_head(%struct.wpabuf* %28)
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = call i32 @wpabuf_len(%struct.wpabuf* %30)
  %32 = call i32 @wpa_hexdump_ascii_key(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %33, %struct.wpabuf** %4, align 8
  br label %34

34:                                               ; preds = %15, %14
  %35 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %35
}

declare dso_local %struct.wpabuf* @dpp_build_conf_start(%struct.dpp_authentication*, %struct.dpp_configuration*, i32) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i32) #1

declare dso_local i32 @dpp_akm_str(i32) #1

declare dso_local i32 @dpp_build_legacy_cred_params(%struct.wpabuf*, %struct.dpp_configuration*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
