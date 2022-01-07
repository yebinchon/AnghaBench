; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_conf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_authentication = type { %struct.dpp_configuration*, %struct.dpp_configuration*, i64 }
%struct.dpp_configuration = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"DPP: No configuration available for Enrollee(%s) - reject configuration request\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_authentication*, i32)* @dpp_build_conf_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_build_conf_obj(%struct.dpp_authentication* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpp_configuration*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %11 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %10, i32 0, i32 1
  %12 = load %struct.dpp_configuration*, %struct.dpp_configuration** %11, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %15 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %14, i32 0, i32 0
  %16 = load %struct.dpp_configuration*, %struct.dpp_configuration** %15, align 8
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi %struct.dpp_configuration* [ %12, %9 ], [ %16, %13 ]
  store %struct.dpp_configuration* %18, %struct.dpp_configuration** %6, align 8
  %19 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %20 = icmp ne %struct.dpp_configuration* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %26)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %44

28:                                               ; preds = %17
  %29 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %30 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @dpp_akm_dpp(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %38 = call %struct.wpabuf* @dpp_build_conf_obj_dpp(%struct.dpp_authentication* %35, i32 %36, %struct.dpp_configuration* %37)
  store %struct.wpabuf* %38, %struct.wpabuf** %3, align 8
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dpp_configuration*, %struct.dpp_configuration** %6, align 8
  %43 = call %struct.wpabuf* @dpp_build_conf_obj_legacy(%struct.dpp_authentication* %40, i32 %41, %struct.dpp_configuration* %42)
  store %struct.wpabuf* %43, %struct.wpabuf** %3, align 8
  br label %44

44:                                               ; preds = %39, %34, %21
  %45 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %45
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @dpp_akm_dpp(i32) #1

declare dso_local %struct.wpabuf* @dpp_build_conf_obj_dpp(%struct.dpp_authentication*, i32, %struct.dpp_configuration*) #1

declare dso_local %struct.wpabuf* @dpp_build_conf_obj_legacy(%struct.dpp_authentication*, i32, %struct.dpp_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
