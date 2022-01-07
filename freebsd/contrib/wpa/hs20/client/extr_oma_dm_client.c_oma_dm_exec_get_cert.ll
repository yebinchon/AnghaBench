; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec_get_cert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_exec_get_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Client certificate enrollment\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Item/Data\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"No Data node found\00", align 1
@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid data\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Data: %s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not parse Item/Data node contents\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"OMA-DM getCertificate\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"getCertificate\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Unexpected getCertificate node name '%s'\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*)* @oma_dm_exec_get_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_exec_get_cert(%struct.hs20_osu_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @MSG_INFO, align 4
  %12 = call i32 (i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %14 = call i32 @write_summary(%struct.hs20_osu_client* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %16 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @get_node(i32 %17, i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %2
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @xml_node_get_text(i32 %29, i32* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %37, i32* %3, align 4
  br label %95

38:                                               ; preds = %26
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %43 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32* @xml_node_from_buf(i32 %44, i8* %45)
  store i32* %46, i32** %7, align 8
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @xml_node_get_text_free(i32 %49, i8* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %57, i32* %3, align 4
  br label %95

58:                                               ; preds = %38
  %59 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @debug_dump_node(%struct.hs20_osu_client* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32* %60)
  %62 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %63 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @xml_node_get_localname(i32 %64, i32* %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i8*, i8** %9, align 8
  %71 = call i64 @os_strcasecmp(i8* %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %58
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %77, i32* %3, align 4
  br label %95

78:                                               ; preds = %69
  %79 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @osu_get_certificate(%struct.hs20_osu_client* %79, i32* %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %83 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @xml_node_free(i32 %84, i32* %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @DM_RESP_OK, align 4
  br label %93

91:                                               ; preds = %78
  %92 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %73, %54, %34, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i8* @xml_node_get_localname(i32, i32*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i32 @osu_get_certificate(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
