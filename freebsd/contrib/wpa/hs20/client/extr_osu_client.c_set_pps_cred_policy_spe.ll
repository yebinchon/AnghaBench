; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_spe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_policy_spe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"- Policy/SPExclusionList/<X+>/SSID = %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"excluded_ssid\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set cred excluded_ssid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_policy_spe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_policy_spe(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @get_node(i32 %11, i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %19 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i8* @xml_node_get_text(i32 %20, i32* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %46

26:                                               ; preds = %17
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @set_cred_quoted(i32 %32, i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @xml_node_get_text_free(i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %40, %25, %16
  ret void
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
