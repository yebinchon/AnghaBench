; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_update_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_update_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Building sppUpdateResponse sppStatus='%s' error_code='%s'\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Try to finish with re-opened connection\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Continue with new connection\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sppExchangeComplete\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SPP validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i8*, i8*)* @hs20_spp_update_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hs20_spp_update_response(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @write_summary(%struct.hs20_osu_client* %13, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32* @build_spp_update_response(%struct.hs20_osu_client* %17, i8* %18, i8* %19, i8* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %86

25:                                               ; preds = %4
  %26 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %27 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32* @soap_send_receive(i32 %28, i32* %29)
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %25
  %34 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %35 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @soap_reinit_client(i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %86

40:                                               ; preds = %33
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32* @build_spp_update_response(%struct.hs20_osu_client* %43, i8* %44, i8* %45, i8* %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %86

51:                                               ; preds = %40
  %52 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %53 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call i32* @soap_send_receive(i32 %54, i32* %55)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %86

60:                                               ; preds = %51
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %25
  %64 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i64 @hs20_spp_validate(%struct.hs20_osu_client* %64, i32* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %72 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @xml_node_free(i32 %73, i32* %74)
  store i32 -1, i32* %5, align 4
  br label %86

76:                                               ; preds = %63
  %77 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @process_spp_exchange_complete(%struct.hs20_osu_client* %77, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %81 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @xml_node_free(i32 %82, i32* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %76, %68, %59, %50, %39, %24
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32* @build_spp_update_response(%struct.hs20_osu_client*, i8*, i8*, i8*) #1

declare dso_local i32* @soap_send_receive(i32, i32*) #1

declare dso_local i64 @soap_reinit_client(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hs20_spp_validate(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @process_spp_exchange_complete(%struct.hs20_osu_client*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
