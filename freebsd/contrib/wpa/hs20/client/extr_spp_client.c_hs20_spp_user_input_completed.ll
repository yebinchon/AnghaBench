; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_user_input_completed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_spp_user_input_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"User input completed\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Try to finish with re-opened connection\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Continue with new connection\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"sppPostDevDataResponse\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"SPP validation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*)* @hs20_spp_user_input_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hs20_spp_user_input_completed(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32* @build_spp_post_dev_data(%struct.hs20_osu_client* %8, i32* null, i8* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %16 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @soap_send_receive(i32 %17, i32* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %14
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @soap_reinit_client(i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %65

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32* @build_spp_post_dev_data(%struct.hs20_osu_client* %32, i32* null, i8* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %65

38:                                               ; preds = %29
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %40 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @soap_send_receive(i32 %41, i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32* null, i32** %3, align 8
  br label %65

47:                                               ; preds = %38
  %48 = load i32, i32* @MSG_INFO, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %14
  %51 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i64 @hs20_spp_validate(%struct.hs20_osu_client* %51, i32* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %59 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @xml_node_free(i32 %60, i32* %61)
  store i32* null, i32** %3, align 8
  br label %65

63:                                               ; preds = %50
  %64 = load i32*, i32** %7, align 8
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %63, %55, %46, %37, %28, %13
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32* @build_spp_post_dev_data(%struct.hs20_osu_client*, i32*, i8*, i8*) #1

declare dso_local i32* @soap_send_receive(i32, i32*) #1

declare dso_local i64 @soap_reinit_client(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hs20_spp_validate(%struct.hs20_osu_client*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
