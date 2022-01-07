; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_upload_mo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_upload_mo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"moURN\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"No URN included\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Upload MO request - URN=%s\00", align 1
@URN_HS20_PPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Unsupported moURN\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"PPS file name no known\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MO upload\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Received response to MO upload\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"sppPostDevDataResponse\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SPP validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i32*, i8*, i8*)* @hs20_spp_upload_mo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hs20_spp_upload_mo(%struct.hs20_osu_client* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %15 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i8* @get_spp_attr_value(i32 %16, i32* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %93

24:                                               ; preds = %4
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* @URN_HS20_PPS, align 4
  %30 = call i64 @strcasecmp(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %36 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @xml_node_get_attr_value_free(i32 %37, i8* %38)
  store i32* null, i32** %5, align 8
  br label %93

40:                                               ; preds = %24
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @xml_node_get_attr_value_free(i32 %43, i8* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %93

51:                                               ; preds = %40
  %52 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32* @build_spp_post_dev_data(%struct.hs20_osu_client* %52, i32** %10, i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32* null, i32** %5, align 8
  br label %93

58:                                               ; preds = %51
  %59 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %60 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @URN_HS20_PPS, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @add_mo_container(i32 %61, i32* %62, i32* %63, i32 %64, i8* %65)
  %67 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %68 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @soap_send_receive(i32 %69, i32* %70)
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  store i32* null, i32** %5, align 8
  br label %93

75:                                               ; preds = %58
  %76 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @debug_dump_node(%struct.hs20_osu_client* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32* %77)
  %79 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i64 @hs20_spp_validate(%struct.hs20_osu_client* %79, i32* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %86 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %87 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @xml_node_free(i32 %88, i32* %89)
  store i32* null, i32** %5, align 8
  br label %93

91:                                               ; preds = %75
  %92 = load i32*, i32** %12, align 8
  store i32* %92, i32** %5, align 8
  br label %93

93:                                               ; preds = %91, %83, %74, %57, %48, %32, %21
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i8* @get_spp_attr_value(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i32 @xml_node_get_attr_value_free(i32, i8*) #1

declare dso_local i32* @build_spp_post_dev_data(%struct.hs20_osu_client*, i32**, i8*, i8*) #1

declare dso_local i32 @add_mo_container(i32, i32*, i32*, i32, i8*) #1

declare dso_local i32* @soap_send_receive(i32, i32*) #1

declare dso_local i32 @debug_dump_node(%struct.hs20_osu_client*, i8*, i32*) #1

declare dso_local i64 @hs20_spp_validate(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
