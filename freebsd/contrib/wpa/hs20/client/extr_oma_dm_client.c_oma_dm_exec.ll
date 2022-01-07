; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No Target LocURI node found\00", align 1
@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Target LocURI: %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"./DevDetail/Ext/org.wi-fi/Wi-Fi/Ops/launchBrowserToURI\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"./DevDetail/Ext/org.wi-fi/Wi-Fi/Ops/getCertificate\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unsupported exec Target LocURI\00", align 1
@DM_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*)* @oma_dm_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_exec(%struct.hs20_osu_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client* %8, i32* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @os_strcasecmp(i8* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @oma_dm_exec_browser(%struct.hs20_osu_client* %25, i32* %26)
  store i32 %27, i32* %7, align 4
  br label %41

28:                                               ; preds = %17
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @os_strcasecmp(i8* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @oma_dm_exec_get_cert(%struct.hs20_osu_client* %33, i32* %34)
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @DM_RESP_NOT_FOUND, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @os_free(i8* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @oma_dm_exec_browser(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @oma_dm_exec_get_cert(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
