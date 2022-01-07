; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_signup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_signup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8* }
%struct.wpa_ctrl = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s/osu-info\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mkdir(%s) failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SET osu_dir %s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to configure osu_dir to wpa_supplicant\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Starting OSU fetch\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Starting OSU provider information fetch\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"FETCH_OSU\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not start OSU fetch\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"OSU provider fetch completed\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"OSU fetch did not complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32, i8*)* @cmd_signup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_signup(%struct.hs20_osu_client* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca [300 x i8], align 16
  %10 = alloca [400 x i8], align 16
  %11 = alloca %struct.wpa_ctrl*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %15 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %12, align 8
  %17 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %18 = call i32* @getcwd(i8* %17, i32 255)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %109

21:                                               ; preds = %3
  %22 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %24 = call i32 @snprintf(i8* %22, i32 300, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %26 = load i32, i32* @S_IRWXU, align 4
  %27 = load i32, i32* @S_IRWXG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @S_IROTH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IXOTH, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @mkdir(i8* %25, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %21
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EEXIST, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %42 = load i64, i64* @errno, align 8
  %43 = call i32 @strerror(i64 %42)
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %43)
  store i32 -1, i32* %4, align 4
  br label %109

45:                                               ; preds = %35, %21
  %46 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %47 = load i32, i32* @S_IRWXU, align 4
  %48 = load i32, i32* @S_IRWXG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IROTH, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @S_IXOTH, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @android_update_permission(i8* %46, i32 %53)
  %55 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %57 = call i32 @snprintf(i8* %55, i32 400, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %60 = call i64 @wpa_command(i8* %58, i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %109

65:                                               ; preds = %45
  %66 = load i8*, i8** %12, align 8
  %67 = call %struct.wpa_ctrl* @open_wpa_mon(i8* %66)
  store %struct.wpa_ctrl* %67, %struct.wpa_ctrl** %11, align 8
  %68 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %69 = icmp eq %struct.wpa_ctrl* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %109

71:                                               ; preds = %65
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %75 = call i32 @write_summary(%struct.hs20_osu_client* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i8*, i8** %12, align 8
  %77 = call i64 @wpa_command(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %83 = call i32 @wpa_ctrl_detach(%struct.wpa_ctrl* %82)
  %84 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %85 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %84)
  store i32 -1, i32* %4, align 4
  br label %109

86:                                               ; preds = %71
  %87 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %88 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %89 = call i32 @get_wpa_cli_event(%struct.wpa_ctrl* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %88, i32 400)
  store i32 %89, i32* %13, align 4
  %90 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %91 = call i32 @wpa_ctrl_detach(%struct.wpa_ctrl* %90)
  %92 = load %struct.wpa_ctrl*, %struct.wpa_ctrl** %11, align 8
  %93 = call i32 @wpa_ctrl_close(%struct.wpa_ctrl* %92)
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = load i32, i32* @MSG_INFO, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %99 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %100 = call i32 @write_summary(%struct.hs20_osu_client* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %109

101:                                              ; preds = %86
  %102 = load i32, i32* @MSG_INFO, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %104 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %105 = getelementptr inbounds [300 x i8], [300 x i8]* %9, i64 0, i64 0
  %106 = load i32, i32* %6, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @cmd_osu_select(%struct.hs20_osu_client* %104, i8* %105, i32 1, i32 %106, i8* %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %101, %96, %79, %70, %62, %39, %20
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @android_update_permission(i8*, i32) #1

declare dso_local i64 @wpa_command(i8*, i8*) #1

declare dso_local %struct.wpa_ctrl* @open_wpa_mon(i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @wpa_ctrl_detach(%struct.wpa_ctrl*) #1

declare dso_local i32 @wpa_ctrl_close(%struct.wpa_ctrl*) #1

declare dso_local i32 @get_wpa_cli_event(%struct.wpa_ctrl*, i8*, i8*, i32) #1

declare dso_local i32 @cmd_osu_select(%struct.hs20_osu_client*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
