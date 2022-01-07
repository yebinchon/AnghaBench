; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_sub_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_sub_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"OMA-DM subscription remediation\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Update wpa_supplicant credential based on updated PPS MO and request reconnection\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"INTERWORKING_SELECT auto\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to request wpa_supplicant to reconnect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oma_dm_sub_rem(%struct.hs20_osu_client* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.hs20_osu_client*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %24 = call i32 @write_summary(%struct.hs20_osu_client* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %20, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %20, align 4
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %20, align 4
  %30 = call i32* @build_oma_dm_1_sub_rem(%struct.hs20_osu_client* %27, i8* %28, i32 %29)
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  br label %92

34:                                               ; preds = %8
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32*, i32** %17, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %35
  %39 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %40 = load i8*, i8** %19, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** %19, align 8
  br label %46

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  %48 = load i32*, i32** %17, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32* @oma_dm_send_recv(%struct.hs20_osu_client* %39, i8* %47, i32* %48, i32* null, i8* %49, i8* %50, i8* %51, i8* %52)
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %92

57:                                               ; preds = %46
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %20, align 4
  %60 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32* @oma_dm_process(%struct.hs20_osu_client* %60, i8* %61, i32* %62, i32 %63, i8** %19, i32* %64, i8* %65)
  store i32* %66, i32** %17, align 8
  %67 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %68 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @xml_node_free(i32 %69, i32* %70)
  br label %35

72:                                               ; preds = %35
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @os_free(i8* %73)
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %78 = call i32 @write_summary(%struct.hs20_osu_client* %77, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @cmd_set_pps(%struct.hs20_osu_client* %79, i8* %80)
  %82 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %83 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @wpa_command(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %90 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %9, align 8
  %91 = call i32 @write_summary(%struct.hs20_osu_client* %90, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %33, %56, %87, %72
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32* @build_oma_dm_1_sub_rem(%struct.hs20_osu_client*, i8*, i32) #1

declare dso_local i32* @oma_dm_send_recv(%struct.hs20_osu_client*, i8*, i32*, i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32* @oma_dm_process(%struct.hs20_osu_client*, i8*, i32*, i32, i8**, i32*, i8*) #1

declare dso_local i32 @xml_node_free(i32, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @cmd_set_pps(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @wpa_command(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
