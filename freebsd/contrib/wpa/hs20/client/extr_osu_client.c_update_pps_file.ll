; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_update_pps_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_update_pps_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Credential/DigitalCertificate/CertSHA256Fingerprint\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Cert/est_cert.der\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"EST certificate update processing failed on PPS MO update\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Updating PPS MO %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"No node found\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"[hs20] Updated PPS: '%s'\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s.bak\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Could not write PPS\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_pps_file(%struct.hs20_osu_client* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hs20_osu_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [300 x i8], align 16
  %11 = alloca i32*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %13 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %18 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @get_child_node(i32 %19, i32* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %16
  %25 = call i64 @os_file_exists(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %31 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @process_est_cert(%struct.hs20_osu_client* %28, i32* %29, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @MSG_INFO, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

38:                                               ; preds = %27, %24, %16
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %5, align 8
  %44 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @xml_node_to_str(i32 %45, i32* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @MSG_ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %83

53:                                               ; preds = %39
  %54 = load i32, i32* @MSG_MSGDUMP, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @snprintf(i8* %57, i32 300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %62 = call i32 @rename(i8* %60, i8* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = call i32* @fopen(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %70 = getelementptr inbounds [300 x i8], [300 x i8]* %10, i64 0, i64 0
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @rename(i8* %70, i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @free(i8* %73)
  store i32 -1, i32* %4, align 4
  br label %83

75:                                               ; preds = %53
  %76 = load i32*, i32** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @fprintf(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @fclose(i32* %79)
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free(i8* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %75, %67, %50, %35
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32* @get_child_node(i32, i32*, i8*) #1

declare dso_local i64 @os_file_exists(i8*) #1

declare dso_local i64 @process_est_cert(%struct.hs20_osu_client*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_to_str(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
