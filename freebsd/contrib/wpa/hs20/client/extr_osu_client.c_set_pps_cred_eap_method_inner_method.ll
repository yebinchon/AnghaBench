; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_eap_method_inner_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_set_pps_cred_eap_method_inner_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"- Credential/UsernamePassword/EAPMethod/InnerMethod = %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PAP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"auth=PAP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"auth=CHAP\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"MS-CHAP\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"auth=MSCHAP\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"MS-CHAP-V2\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"auth=MSCHAPV2\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Unknown InnerMethod value\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"phase2\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to set cred phase2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i32, i32*)* @set_pps_cred_eap_method_inner_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pps_cred_eap_method_inner_method(%struct.hs20_osu_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.hs20_osu_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %10 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @xml_node_get_text(i32 %11, i32* %12)
  store i8* %13, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @os_strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %43

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @os_strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %42

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @os_strcmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %41

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @os_strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %45 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @xml_node_get_text_free(i32 %46, i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %65

54:                                               ; preds = %43
  %55 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %4, align 8
  %56 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i64 @set_cred_quoted(i32 %57, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %65

65:                                               ; preds = %16, %51, %62, %54
  ret void
}

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @set_cred_quoted(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
