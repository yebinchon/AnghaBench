; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_oma_dm_client.c_oma_dm_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Item/Target/LocURI\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No Target LocURI node found\00", align 1
@DM_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"No LocURI node text found\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Target LocURI: %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"./Wi-Fi/\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unsupported Add Target LocURI\00", align 1
@DM_RESP_PERMISSION_DENIED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"Item/Data\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No Data node found\00", align 1
@DM_RESP_OK = common dso_local global i32 0, align 4
@DM_RESP_ALREADY_EXISTS = common dso_local global i32 0, align 4
@DM_RESP_COMMAND_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Updating wpa_supplicant credentials\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Requesting reconnection with updated configuration\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"INTERWORKING_SELECT auto\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Failed to request wpa_supplicant to reconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i32*, i32*, i8*)* @oma_dm_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oma_dm_add(%struct.hs20_osu_client* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hs20_osu_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [300 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %15 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @get_node(i32 %16, i32* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %24, i32* %5, align 4
  br label %160

25:                                               ; preds = %4
  %26 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %27 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i8* @xml_node_get_text(i32 %28, i32* %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %36, i32* %5, align 4
  br label %160

37:                                               ; preds = %25
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @os_strncasecmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %48 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @xml_node_get_text_free(i32 %49, i8* %50)
  %52 = load i32, i32* @DM_RESP_PERMISSION_DENIED, align 4
  store i32 %52, i32* %5, align 4
  br label %160

53:                                               ; preds = %37
  %54 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %55 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32* @get_node(i32 %56, i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %64 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %65 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @xml_node_get_text_free(i32 %66, i8* %67)
  %69 = load i32, i32* @DM_RESP_BAD_REQUEST, align 4
  store i32 %69, i32* %5, align 4
  br label %160

70:                                               ; preds = %53
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @os_file_exists(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %73
  %78 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @oma_dm_run_add(%struct.hs20_osu_client* %78, i8* %79, i32* %80, i32* %81, i8* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @DM_RESP_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %89 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @xml_node_get_text_free(i32 %90, i8* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %160

94:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  %95 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @os_strlcpy(i8* %95, i8* %96, i32 300)
  br label %104

98:                                               ; preds = %73, %70
  %99 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %103 = call i32 @hs20_add_pps_mo(%struct.hs20_osu_client* %99, i8* %100, i32* %101, i8* %102, i32 300)
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %106 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @xml_node_get_text_free(i32 %107, i8* %108)
  %110 = load i32, i32* %13, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %104
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %113, -2
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @DM_RESP_ALREADY_EXISTS, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @DM_RESP_COMMAND_FAILED, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %5, align 4
  br label %160

121:                                              ; preds = %104
  %122 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %123 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %128 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %131 = call i32 @os_snprintf(i32 %129, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %130)
  %132 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %133 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %132, i32 0, i32 1
  store i32 1, i32* %133, align 4
  %134 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %134, i32* %5, align 4
  br label %160

135:                                              ; preds = %121
  %136 = load i32, i32* @MSG_INFO, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %138 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %139 = getelementptr inbounds [300 x i8], [300 x i8]* %12, i64 0, i64 0
  %140 = call i32 @cmd_set_pps(%struct.hs20_osu_client* %138, i8* %139)
  %141 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %142 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %146, i32* %5, align 4
  br label %160

147:                                              ; preds = %135
  %148 = load i32, i32* @MSG_INFO, align 4
  %149 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %150 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %6, align 8
  %151 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @wpa_command(i32 %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @MSG_INFO, align 4
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %147
  %159 = load i32, i32* @DM_RESP_OK, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %145, %126, %119, %87, %61, %44, %33, %21
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32* @get_node(i32, i32*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @xml_node_get_text(i32, i32*) #1

declare dso_local i64 @os_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @xml_node_get_text_free(i32, i8*) #1

declare dso_local i64 @os_file_exists(i8*) #1

declare dso_local i32 @oma_dm_run_add(%struct.hs20_osu_client*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @hs20_add_pps_mo(%struct.hs20_osu_client*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @os_snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @cmd_set_pps(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @wpa_command(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
