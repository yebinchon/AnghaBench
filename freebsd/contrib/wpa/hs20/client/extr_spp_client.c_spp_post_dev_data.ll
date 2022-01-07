; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_spp_post_dev_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_spp_post_dev_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"HTTP error: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to send SOAP message\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sppPostDevDataResponse\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"SPP validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32, i8*, i8*, i32*)* @spp_post_dev_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spp_post_dev_data(%struct.hs20_osu_client* %0, i32 %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hs20_osu_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32* @build_spp_post_dev_data(%struct.hs20_osu_client* %15, i32* null, i32* null, i8* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %67

21:                                               ; preds = %5
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %23 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @soap_send_receive(i32 %24, i32* %25)
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %21
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @http_get_err(i32 %32)
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @write_result(%struct.hs20_osu_client* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %46

43:                                               ; preds = %29
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %45 = call i32 @write_summary(%struct.hs20_osu_client* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  store i32 -1, i32* %6, align 4
  br label %67

47:                                               ; preds = %21
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @hs20_spp_validate(%struct.hs20_osu_client* %48, i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @xml_node_free(i32 %57, i32* %58)
  store i32 -1, i32* %6, align 4
  br label %67

60:                                               ; preds = %47
  %61 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @process_spp_post_dev_data_response(%struct.hs20_osu_client* %61, i32 %62, i32* %63, i8* %64, i32* %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %60, %52, %46, %20
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32* @build_spp_post_dev_data(%struct.hs20_osu_client*, i32*, i32*, i8*) #1

declare dso_local i32* @soap_send_receive(i32, i32*) #1

declare dso_local i8* @http_get_err(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @write_result(%struct.hs20_osu_client*, i8*, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @hs20_spp_validate(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @process_spp_post_dev_data_response(%struct.hs20_osu_client*, i32, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
