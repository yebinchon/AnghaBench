; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_send_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_send_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Send OMA DM Package\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"application/vnd.syncml.dm+xml\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"HTTP error: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to send OMA DM Package\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Server response: %s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Process OMA DM Package\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Process received OMA DM Package\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to parse OMA DM response\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"OMA DM Package\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*, i32*, i8*, i8*, i8*, i8*, i8*)* @oma_dm_send_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oma_dm_send_recv(%struct.hs20_osu_client* %0, i8* %1, i32* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hs20_osu_client*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* null, i8** %21, align 8
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i8* @xml_node_to_str(i32 %25, i32* %26)
  store i8* %27, i8** %19, align 8
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @xml_node_free(i32 %30, i32* %31)
  %33 = load i8*, i8** %19, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %112

36:                                               ; preds = %8
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %40 = call i32 @write_summary(%struct.hs20_osu_client* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @os_free(i8* %43)
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @os_strdup(i8* %45)
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %50 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %19, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = call i8* @http_post(i32 %51, i8* %52, i8* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %57, i8* %58, i8* %59, i8* %60, i8* %61, i32* null)
  store i8* %62, i8** %20, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = call i32 @os_free(i8* %63)
  %65 = load i8*, i8** %21, align 8
  %66 = call i32 @os_free(i8* %65)
  store i8* null, i8** %21, align 8
  %67 = load i8*, i8** %20, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %36
  %70 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %71 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @http_get_err(i32 %72)
  store i8* %73, i8** %22, align 8
  %74 = load i8*, i8** %22, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = load i8*, i8** %22, align 8
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %81 = load i8*, i8** %22, align 8
  %82 = call i32 @write_result(%struct.hs20_osu_client* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  br label %86

83:                                               ; preds = %69
  %84 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %85 = call i32 @write_summary(%struct.hs20_osu_client* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  store i32* null, i32** %9, align 8
  br label %112

87:                                               ; preds = %36
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load i8*, i8** %20, align 8
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %94 = call i32 @write_summary(%struct.hs20_osu_client* %93, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %95 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %96 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %20, align 8
  %99 = call i32* @xml_node_from_buf(i32 %97, i8* %98)
  store i32* %99, i32** %18, align 8
  %100 = load i8*, i8** %20, align 8
  %101 = call i32 @os_free(i8* %100)
  %102 = load i32*, i32** %18, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %87
  %105 = load i32, i32* @MSG_INFO, align 4
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32* null, i32** %9, align 8
  br label %112

107:                                              ; preds = %87
  %108 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %10, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @debug_dump_node(%struct.hs20_osu_client* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32* %109)
  %111 = load i32*, i32** %18, align 8
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %107, %104, %86, %35
  %113 = load i32*, i32** %9, align 8
  ret i32* %113
}

declare dso_local i8* @xml_node_to_str(i32, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i8* @http_post(i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i8* @http_get_err(i32) #1

declare dso_local i32 @write_result(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32* @xml_node_from_buf(i32, i8*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
