; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { i8* }
%struct.dpp_configuration = type { i32, i64 }

@.str = private unnamed_addr constant [35 x i8] c"{\22wi-fi_tech\22:\22infra\22,\22discovery\22:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"{\22ssid\22:\22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\22},\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, %struct.dpp_configuration*, i64)* @dpp_build_conf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_build_conf_start(%struct.dpp_authentication* %0, %struct.dpp_configuration* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca %struct.dpp_configuration*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca [49 x i8], align 16
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store %struct.dpp_configuration* %1, %struct.dpp_configuration** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = add i64 200, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.wpabuf* @wpabuf_alloc(i32 %12)
  store %struct.wpabuf* %13, %struct.wpabuf** %8, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %15 = icmp ne %struct.wpabuf* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %19 = call i32 @wpabuf_put_str(%struct.wpabuf* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %21 = call i32 @wpabuf_put_str(%struct.wpabuf* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = getelementptr inbounds [49 x i8], [49 x i8]* %9, i64 0, i64 0
  %23 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %24 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %28 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @json_escape_string(i8* %22, i32 49, i8* %26, i32 %29)
  %31 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %32 = getelementptr inbounds [49 x i8], [49 x i8]* %9, i64 0, i64 0
  %33 = call i32 @wpabuf_put_str(%struct.wpabuf* %31, i8* %32)
  %34 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %35 = call i32 @wpabuf_put_str(%struct.wpabuf* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %36, %struct.wpabuf** %4, align 8
  br label %37

37:                                               ; preds = %17, %16
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %38
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @json_escape_string(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
