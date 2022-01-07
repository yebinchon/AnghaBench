; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec_browser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Item/Data\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No Data node found\00", align 1
@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Invalid data\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Data: %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Launch browser to URI '%s'\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"User response in browser completed successfully\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to receive user response\00", align 1
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*)* @oma_dm_exec_browser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_exec_browser(%struct.hs20_osu_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @get_node(i32 %11, i32* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_INFO, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %22 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @xml_node_get_text(i32 %23, i32* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %20
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @hs20_web_browser(i8* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %45 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @xml_node_get_text_free(i32 %46, i8* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %55 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %32
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %61 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %51, %28, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, ...) #1

declare dso_local i32 @hs20_web_browser(i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
