; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"wi-fi.org\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"PPS file %s could not be parsed\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Add file %s could not be parsed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"oma_dm_add --> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_oma_dm_add(%struct.hs20_osu_client* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call i32 @os_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %12 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %14 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @node_from_file(i32 %15, i8* %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %26 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @node_from_file(i32 %27, i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  %36 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %37 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @xml_node_free(i32 %38, i32* %39)
  br label %60

41:                                               ; preds = %24
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @oma_dm_add(%struct.hs20_osu_client* %42, i32* %43, i32* %44, i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %51 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @xml_node_free(i32 %52, i32* %53)
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @xml_node_free(i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %41, %32, %20
  ret void
}

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i32* @node_from_file(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @oma_dm_add(%struct.hs20_osu_client*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
