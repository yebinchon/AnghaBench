; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i8*, i32 }

@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Get command target LocURI: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Do not allow Get outside ./Wi-Fi\00", align 1
@DM_RESP_PERMISSION_DENIED = common dso_local global i32 0, align 4
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Do not allow Get outside ./Wi-Fi/%s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"PerProviderSubscription/\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Do not allow Get outside ./Wi-Fi/%s/PerProviderSubscription\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Get command for PPS node %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Specified PPS node not found\00", align 1
@DM_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Get command returned node with name '%s'\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Password\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Do not allow Get for Password node\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i32*, i8*, i8**)* @oma_dm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_get(%struct.hs20_osu_client* %0, i32* %1, i32* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hs20_osu_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %17 = load i8**, i8*** %11, align 8
  store i8* null, i8** %17, align 8
  %18 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client* %18, i32* %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %24, i32* %6, align 4
  br label %145

25:                                               ; preds = %5
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %12, align 8
  %30 = call i64 @os_strncasecmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @os_free(i8* %35)
  %37 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %37, i32* %6, align 4
  br label %145

38:                                               ; preds = %25
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %13, align 8
  %41 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %42 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %46, i32* %6, align 4
  br label %145

47:                                               ; preds = %38
  %48 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %49 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @os_strlen(i8* %50)
  store i64 %51, i64* %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %54 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @os_strncasecmp(i8* %52, i8* %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %47
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %14, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 47
  br i1 %66, label %67, label %76

67:                                               ; preds = %60, %47
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %70 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @os_free(i8* %73)
  %75 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %75, i32* %6, align 4
  br label %145

76:                                               ; preds = %60
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %77, 1
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i64 @os_strncasecmp(i8* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 24)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32, i32* @MSG_INFO, align 4
  %86 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %87 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %88)
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @os_free(i8* %90)
  %92 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %92, i32* %6, align 4
  br label %145

93:                                               ; preds = %76
  %94 = load i8*, i8** %13, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 24
  store i8* %95, i8** %13, align 8
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %100 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i32* @get_node(i32 %101, i32* %102, i8* %103)
  store i32* %104, i32** %15, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load i32, i32* @MSG_INFO, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @os_free(i8* %110)
  %112 = load i32, i32* @DM_RESP_NOT_FOUND, align 4
  store i32 %112, i32* %6, align 4
  br label %145

113:                                              ; preds = %93
  %114 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %115 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = call i8* @xml_node_get_localname(i32 %116, i32* %117)
  store i8* %118, i8** %16, align 8
  %119 = load i32, i32* @MSG_INFO, align 4
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  %122 = load i8*, i8** %16, align 8
  %123 = call i64 @os_strcasecmp(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %113
  %126 = load i32, i32* @MSG_INFO, align 4
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @os_free(i8* %128)
  %130 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %130, i32* %6, align 4
  br label %145

131:                                              ; preds = %113
  %132 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %133 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i8* @xml_node_get_text(i32 %134, i32* %135)
  %137 = load i8**, i8*** %11, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i8**, i8*** %11, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  store i32 %142, i32* %6, align 4
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %141, %125, %107, %84, %67, %45, %32, %23
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i8* @oma_dm_get_target_locuri(%struct.hs20_osu_client*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i8* @xml_node_get_localname(i32, i32*) #1

declare dso_local i64 @os_strcasecmp(i8*, i8*) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
