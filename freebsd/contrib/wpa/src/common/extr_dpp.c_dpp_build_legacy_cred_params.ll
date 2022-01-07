; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_legacy_cred_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_build_legacy_cred_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_configuration = type { i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"\22pass\22:\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\22psk_hex\22:\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, %struct.dpp_configuration*)* @dpp_build_legacy_cred_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp_build_legacy_cred_params(%struct.wpabuf* %0, %struct.dpp_configuration* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dpp_configuration*, align 8
  %5 = alloca [379 x i8], align 16
  %6 = alloca [9 x i8], align 1
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.dpp_configuration* %1, %struct.dpp_configuration** %4, align 8
  %7 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %8 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %13 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @os_strlen(i64 %14)
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = getelementptr inbounds [379 x i8], [379 x i8]* %5, i64 0, i64 0
  %19 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %20 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %23 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @os_strlen(i64 %24)
  %26 = call i32 @json_escape_string(i8* %18, i32 379, i64 %21, i32 %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %28 = call i32 @wpabuf_put_str(%struct.wpabuf* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %30 = getelementptr inbounds [379 x i8], [379 x i8]* %5, i64 0, i64 0
  %31 = call i32 @wpabuf_put_str(%struct.wpabuf* %29, i8* %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %33 = call i32 @wpabuf_put_str(%struct.wpabuf* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %34 = getelementptr inbounds [379 x i8], [379 x i8]* %5, i64 0, i64 0
  %35 = call i32 @os_memset(i8* %34, i32 0, i32 379)
  br label %57

36:                                               ; preds = %11, %2
  %37 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %38 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %43 = load %struct.dpp_configuration*, %struct.dpp_configuration** %4, align 8
  %44 = getelementptr inbounds %struct.dpp_configuration, %struct.dpp_configuration* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @wpa_snprintf_hex(i8* %42, i32 9, i32 %45, i32 4)
  %47 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %48 = call i32 @wpabuf_put_str(%struct.wpabuf* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %50 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %51 = call i32 @wpabuf_put_str(%struct.wpabuf* %49, i8* %50)
  %52 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %53 = call i32 @wpabuf_put_str(%struct.wpabuf* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = getelementptr inbounds [9 x i8], [9 x i8]* %6, i64 0, i64 0
  %55 = call i32 @os_memset(i8* %54, i32 0, i32 9)
  br label %56

56:                                               ; preds = %41, %36
  br label %57

57:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i32 @json_escape_string(i8*, i32, i64, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
