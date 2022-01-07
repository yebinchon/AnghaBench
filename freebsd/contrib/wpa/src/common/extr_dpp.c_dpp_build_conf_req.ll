; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DPP: No configuration request data available\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"DPP: GAS Config Request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dpp_build_conf_req(%struct.dpp_authentication* %0, i8* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.wpabuf* @dpp_build_conf_req_attr(%struct.dpp_authentication* %8, i8* %9)
  store %struct.wpabuf* %10, %struct.wpabuf** %7, align 8
  %11 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %12 = icmp ne %struct.wpabuf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %18 = call i64 @wpabuf_len(%struct.wpabuf* %17)
  %19 = add nsw i64 12, %18
  %20 = call %struct.wpabuf* @gas_build_initial_req(i32 0, i64 %19)
  store %struct.wpabuf* %20, %struct.wpabuf** %6, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %22 = icmp ne %struct.wpabuf* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %25 = call i32 @wpabuf_free(%struct.wpabuf* %24)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %28 = call i32 @dpp_write_adv_proto(%struct.wpabuf* %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %31 = call i32 @dpp_write_gas_query(%struct.wpabuf* %29, %struct.wpabuf* %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %33 = call i32 @wpabuf_free(%struct.wpabuf* %32)
  %34 = load i32, i32* @MSG_MSGDUMP, align 4
  %35 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %36 = call i32 @wpa_hexdump_buf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.wpabuf* %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %37, %struct.wpabuf** %3, align 8
  br label %38

38:                                               ; preds = %26, %23, %13
  %39 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %39
}

declare dso_local %struct.wpabuf* @dpp_build_conf_req_attr(%struct.dpp_authentication*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @gas_build_initial_req(i32, i64) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @dpp_write_adv_proto(%struct.wpabuf*) #1

declare dso_local i32 @dpp_write_gas_query(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
