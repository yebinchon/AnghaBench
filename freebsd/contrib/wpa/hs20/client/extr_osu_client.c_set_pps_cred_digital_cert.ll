; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_digital_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_digital_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"- Credential/DigitalCertificate\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set username\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s/SP/%s/client-cert.pem\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"client_cert\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to set client_cert\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s/SP/%s/client-key.pem\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"private_key\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Failed to set private_key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*, i8*)* @set_pps_cred_digital_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_digital_cert(%struct.hs20_osu_client* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [200 x i8], align 16
  %10 = alloca [200 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @MSG_INFO, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %15 = call i32* @getcwd(i8* %14, i32 200)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %78

18:                                               ; preds = %4
  %19 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %20 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @set_cred_quoted(i32 %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18
  %29 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @os_snprintf(i8* %29, i32 200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %30, i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @os_snprintf_error(i32 200, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %78

37:                                               ; preds = %28
  %38 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %39 = call i64 @os_file_exists(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %43 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %47 = call i64 @set_cred_quoted(i32 %44, i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %37
  %54 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %55 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @os_snprintf(i8* %54, i32 200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @os_snprintf_error(i32 200, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %78

62:                                               ; preds = %53
  %63 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %64 = call i64 @os_file_exists(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %68 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %72 = call i64 @set_cred_quoted(i32 %69, i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %17, %36, %61, %77, %62
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @os_file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
