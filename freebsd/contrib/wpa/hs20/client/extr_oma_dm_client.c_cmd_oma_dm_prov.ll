; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_prov.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_cmd_oma_dm_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i64, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid prov command (missing URL)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"OMA-DM credential provisioning requested\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"OMA-DM credential provisioning\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_oma_dm_prov(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %19 = call i32 @write_summary(%struct.hs20_osu_client* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @build_oma_dm_1_sub_reg(%struct.hs20_osu_client* %22, i8* %23, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %70

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @oma_dm_send_recv(%struct.hs20_osu_client* %34, i8* %42, i32* %43, i32* null, i32* null, i32* null, i32* null, i32* null)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %70

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32* @oma_dm_process(%struct.hs20_osu_client* %51, i8* %52, i32* %53, i32 %54, i8** %8, i32* null, i32* null)
  store i32* %55, i32** %6, align 8
  %56 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %57 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @xml_node_free(i32 %58, i32* %59)
  br label %30

61:                                               ; preds = %30
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @os_free(i8* %62)
  %64 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %65 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 -1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %47, %28, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32* @build_oma_dm_1_sub_reg(%struct.hs20_osu_client*, i8*, i32) #1

declare dso_local i32* @oma_dm_send_recv(%struct.hs20_osu_client*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @oma_dm_process(%struct.hs20_osu_client*, i8*, i32*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
