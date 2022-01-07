; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_build_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_build_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"DevId from devinfo.xml is not available - cannot use OMA DM\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"SYNCML:SYNCML1.2\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SyncML\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SyncHdr\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VerDTD\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"VerProto\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"DM/1.2\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SessionID\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"MsgID\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Target\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hs20_osu_client*, i8*, i32)* @oma_dm_build_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oma_dm_build_hdr(%struct.hs20_osu_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %20 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @xml_node_create_root(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null, i32** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %24 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @xml_node_create(i32 %25, i32* %26, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %29 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @xml_node_create_text(i32 %30, i32* %31, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %33 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %34 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @xml_node_create_text(i32 %35, i32* %36, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %39 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @xml_node_create_text(i32 %40, i32* %41, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @int2str(i32 %47)
  %49 = call i32 @xml_node_create_text(i32 %45, i32* %46, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %48)
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @oma_dm_add_locuri(%struct.hs20_osu_client* %50, i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %52)
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %57 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @oma_dm_add_locuri(%struct.hs20_osu_client* %54, i32* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %4, align 8
  br label %61

61:                                               ; preds = %18, %15
  %62 = load i32*, i32** %4, align 8
  ret i32* %62
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @xml_node_create_root(i32, i8*, i32*, i32**, i8*) #1

declare dso_local i32* @xml_node_create(i32, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_create_text(i32, i32*, i32*, i8*, i8*) #1

declare dso_local i8* @int2str(i32) #1

declare dso_local i32 @oma_dm_add_locuri(%struct.hs20_osu_client*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
