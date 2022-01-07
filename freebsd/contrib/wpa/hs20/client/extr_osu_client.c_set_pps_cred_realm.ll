; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_realm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"- Credential/Realm = %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set cred realm\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/SP/%s/aaa-ca.pem\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ca_cert\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed to set CA cert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*, i8*, i32)* @set_pps_cred_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_realm(%struct.hs20_osu_client* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [200 x i8], align 16
  %13 = alloca [200 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %16 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @xml_node_get_text(i32 %17, i32* %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %76

23:                                               ; preds = %5
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %28 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @set_cred_quoted(i32 %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %23
  %38 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %39 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @xml_node_get_text_free(i32 %40, i8* %41)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %76

46:                                               ; preds = %37
  %47 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %48 = call i32* @getcwd(i8* %47, i32 200)
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %76

51:                                               ; preds = %46
  %52 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %53 = getelementptr inbounds [200 x i8], [200 x i8]* %13, i64 0, i64 0
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @os_snprintf(i8* %52, i32 200, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i64 @os_snprintf_error(i32 200, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %76

60:                                               ; preds = %51
  %61 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %62 = call i64 @os_file_exists(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %66 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = getelementptr inbounds [200 x i8], [200 x i8]* %12, i64 0, i64 0
  %70 = call i64 @set_cred_quoted(i32 %67, i32 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @MSG_INFO, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %22, %45, %50, %59, %75, %60
  ret void
}

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i64 @os_file_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
