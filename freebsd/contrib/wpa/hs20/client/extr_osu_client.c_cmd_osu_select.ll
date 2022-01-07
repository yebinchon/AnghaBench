; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_osu_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_cmd_osu_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i64, i64, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.osu_data = type { i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"OSU provider selection\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Missing dir parameter to osu_select\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s/osu-providers.txt\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not find any OSU providers from %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No OSU providers available\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Requested operator friendly name '%s' not found in the list of available providers\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"OSU Provider selected based on requested operator friendly name '%s'\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s/osu-providers.html\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Could not open %s\00", align 1
@.str.10 = private unnamed_addr constant [163 x i8] c"<html><head><meta http-equiv=\22Content-type\22 content=\22text/html; charset=utf-8\22<title>Select service operator</title></head><body><h1>Select service operator</h1>\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"No online signup available\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"<p>\0A<a href=\22osu://%d\22><table><tr><td>\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"<img src=\22osu-icon-%d.%s\22>\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"<td>\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"<small>[%s]</small> %s<br>\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"<tr><td colspan=2>\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"</table></a><br><small>BSSID: %s<br>\0ASSID: %s<br>\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"SSID2: %s<br>\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"NAI: %s<br>\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"NAI2: %s<br>\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"URL: %s<br>\0Amethods:%s%s<br>\0A</small></p>\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c" OMA-DM\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [14 x i8] c" SOAP-XML-SPP\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"</body></html>\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"file://%s/osu-providers.html\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Start web browser with OSU provider selection page\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"Selected OSU id=%d\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"BSSID: %s\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"SSID: %s\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"SSID2: %s\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"URL: %s\00", align 1
@.str.36 = private unnamed_addr constant [52 x i8] c"Selected OSU provider id=%d BSSID=%s SSID=%s URL=%s\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"FRIENDLY_NAME: [%s]%s\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%s/osu-icon-%d.%s\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"ICON: %s (%s)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [37 x i8] c"Calling cmd_prov from cmd_osu_select\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"Calling cmd_oma_dm_prov from cmd_osu_select\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"No supported OSU provisioning method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hs20_osu_client*, i8*, i32, i32, i8*)* @cmd_osu_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_osu_select(%struct.hs20_osu_client* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hs20_osu_client*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [255 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca %struct.osu_data*, align 8
  %15 = alloca %struct.osu_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [256 x i8], align 16
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.osu_data* null, %struct.osu_data** %14, align 8
  store %struct.osu_data* null, %struct.osu_data** %15, align 8
  store i64 0, i64* %16, align 8
  %23 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %24 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @MSG_INFO, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %584

30:                                               ; preds = %5
  %31 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @snprintf(i8* %31, i32 255, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %35 = call %struct.osu_data* @parse_osu_providers(i8* %34, i64* %16)
  store %struct.osu_data* %35, %struct.osu_data** %14, align 8
  %36 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %37 = icmp eq %struct.osu_data* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %43 = call i32 @write_result(%struct.hs20_osu_client* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %584

44:                                               ; preds = %30
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  store i64 0, i64* %17, align 8
  br label %48

48:                                               ; preds = %86, %47
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %53, i64 %54
  store %struct.osu_data* %55, %struct.osu_data** %15, align 8
  store i64 0, i64* %18, align 8
  br label %56

56:                                               ; preds = %75, %52
  %57 = load i64, i64* %18, align 8
  %58 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %59 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %64 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %63, i32 0, i32 11
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i64, i64* %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @os_strcmp(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %78

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %18, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %18, align 8
  br label %56

78:                                               ; preds = %73, %56
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %81 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %89

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %17, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %17, align 8
  br label %48

89:                                               ; preds = %84, %48
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %16, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %97, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.5, i64 0, i64 0), i8* %98)
  %100 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %101 = call i32 @free(%struct.osu_data* %100)
  store i32 -1, i32* %6, align 4
  br label %584

102:                                              ; preds = %89
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %106, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load i64, i64* %17, align 8
  %110 = add i64 %109, 1
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  br label %318

112:                                              ; preds = %44
  %113 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @snprintf(i8* %113, i32 255, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %114)
  %116 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %117 = call i32* @fopen(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %117, i32** %13, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load i32, i32* @MSG_INFO, align 4
  %122 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %123 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %122)
  %124 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %125 = call i32 @free(%struct.osu_data* %124)
  store i32 -1, i32* %6, align 4
  br label %584

126:                                              ; preds = %112
  %127 = load i32*, i32** %13, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  %129 = load i64, i64* %16, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126
  store i64 0, i64* %17, align 8
  br label %135

135:                                              ; preds = %303, %134
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* %16, align 8
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %306

139:                                              ; preds = %135
  %140 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %140, i64 %141
  store %struct.osu_data* %142, %struct.osu_data** %15, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i64, i64* %17, align 8
  %145 = trunc i64 %144 to i32
  %146 = add nsw i32 %145, 1
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %146)
  store i64 0, i64* %18, align 8
  br label %148

148:                                              ; preds = %175, %139
  %149 = load i64, i64* %18, align 8
  %150 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %151 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %149, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %148
  %155 = load i32*, i32** %13, align 8
  %156 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %157 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %156, i32 0, i32 10
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = load i64, i64* %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %164 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %163, i32 0, i32 10
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = load i64, i64* %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @strcasecmp(i32 %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %174 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %162, i8* %173)
  br label %175

175:                                              ; preds = %154
  %176 = load i64, i64* %18, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %18, align 8
  br label %148

178:                                              ; preds = %148
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  br label %181

181:                                              ; preds = %204, %178
  %182 = load i64, i64* %18, align 8
  %183 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %184 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ult i64 %182, %185
  br i1 %186, label %187, label %207

187:                                              ; preds = %181
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %190 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %189, i32 0, i32 11
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i64, i64* %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %197 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %196, i32 0, i32 11
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i64, i64* %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %195, i8* %202)
  br label %204

204:                                              ; preds = %187
  %205 = load i64, i64* %18, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %18, align 8
  br label %181

207:                                              ; preds = %181
  %208 = load i32*, i32** %13, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  br label %210

210:                                              ; preds = %233, %207
  %211 = load i64, i64* %18, align 8
  %212 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %213 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ult i64 %211, %214
  br i1 %215, label %216, label %236

216:                                              ; preds = %210
  %217 = load i32*, i32** %13, align 8
  %218 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %219 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %218, i32 0, i32 12
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = load i64, i64* %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %226 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %225, i32 0, i32 12
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = load i64, i64* %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %224, i8* %231)
  br label %233

233:                                              ; preds = %216
  %234 = load i64, i64* %18, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %18, align 8
  br label %210

236:                                              ; preds = %210
  %237 = load i32*, i32** %13, align 8
  %238 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %239 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %238, i32 0, i32 3
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %242 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %241, i32 0, i32 4
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32*, i8*, ...) @fprintf(i32* %237, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i64 0, i64 0), i8* %240, i8* %243)
  %245 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %246 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 0
  %249 = load i8, i8* %248, align 1
  %250 = icmp ne i8 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %236
  %252 = load i32*, i32** %13, align 8
  %253 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %254 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %253, i32 0, i32 5
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 (i32*, i8*, ...) @fprintf(i32* %252, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* %255)
  br label %257

257:                                              ; preds = %251, %236
  %258 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %259 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %258, i32 0, i32 6
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = icmp ne i8 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i32*, i32** %13, align 8
  %266 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %267 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %266, i32 0, i32 6
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i32*, i8*, ...) @fprintf(i32* %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %268)
  br label %270

270:                                              ; preds = %264, %257
  %271 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %272 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %271, i32 0, i32 7
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 0
  %275 = load i8, i8* %274, align 1
  %276 = icmp ne i8 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %270
  %278 = load i32*, i32** %13, align 8
  %279 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %280 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %279, i32 0, i32 7
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 (i32*, i8*, ...) @fprintf(i32* %278, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %281)
  br label %283

283:                                              ; preds = %277, %270
  %284 = load i32*, i32** %13, align 8
  %285 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %286 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %285, i32 0, i32 8
  %287 = load i8*, i8** %286, align 8
  %288 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %289 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %295 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %296 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 8
  %298 = and i32 %297, 2
  %299 = icmp ne i32 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %302 = call i32 (i32*, i8*, ...) @fprintf(i32* %284, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i8* %287, i8* %294, i8* %301)
  br label %303

303:                                              ; preds = %283
  %304 = load i64, i64* %17, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %17, align 8
  br label %135

306:                                              ; preds = %135
  %307 = load i32*, i32** %13, align 8
  %308 = call i32 (i32*, i8*, ...) @fprintf(i32* %307, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %309 = load i32*, i32** %13, align 8
  %310 = call i32 @fclose(i32* %309)
  %311 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %312 = load i8*, i8** %8, align 8
  %313 = call i32 @snprintf(i8* %311, i32 255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0), i8* %312)
  %314 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %315 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %314, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0))
  %316 = getelementptr inbounds [255 x i8], [255 x i8]* %12, i64 0, i64 0
  %317 = call i32 @hs20_web_browser(i8* %316)
  store i32 %317, i32* %19, align 4
  br label %318

318:                                              ; preds = %306, %102
  %319 = load i32, i32* %19, align 4
  %320 = icmp sgt i32 %319, 0
  br i1 %320, label %321, label %579

321:                                              ; preds = %318
  %322 = load i32, i32* %19, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %16, align 8
  %325 = icmp ule i64 %323, %324
  br i1 %325, label %326, label %579

326:                                              ; preds = %321
  %327 = load i32, i32* @MSG_INFO, align 4
  %328 = load i32, i32* %19, align 4
  %329 = call i32 (i32, i8*, ...) @wpa_printf(i32 %327, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %328)
  %330 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %331 = load i32, i32* %19, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %330, i64 %333
  store %struct.osu_data* %334, %struct.osu_data** %15, align 8
  store i32 0, i32* %19, align 4
  %335 = load i32, i32* @MSG_INFO, align 4
  %336 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %337 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %336, i32 0, i32 3
  %338 = load i8*, i8** %337, align 8
  %339 = call i32 (i32, i8*, ...) @wpa_printf(i32 %335, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8* %338)
  %340 = load i32, i32* @MSG_INFO, align 4
  %341 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %342 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %341, i32 0, i32 4
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 (i32, i8*, ...) @wpa_printf(i32 %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* %343)
  %345 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %346 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %345, i32 0, i32 5
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 0
  %349 = load i8, i8* %348, align 1
  %350 = icmp ne i8 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %326
  %352 = load i32, i32* @MSG_INFO, align 4
  %353 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %354 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %353, i32 0, i32 5
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 (i32, i8*, ...) @wpa_printf(i32 %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %351, %326
  %358 = load i32, i32* @MSG_INFO, align 4
  %359 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %360 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %359, i32 0, i32 8
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 (i32, i8*, ...) @wpa_printf(i32 %358, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* %361)
  %363 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %364 = load i32, i32* %19, align 4
  %365 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %366 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %365, i32 0, i32 3
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %369 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %368, i32 0, i32 4
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %372 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %371, i32 0, i32 8
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (%struct.hs20_osu_client*, i8*, ...) @write_summary(%struct.hs20_osu_client* %363, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.36, i64 0, i64 0), i32 %364, i8* %367, i8* %370, i8* %373)
  %375 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %376 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %379 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %378, i32 0, i32 0
  store i64 %377, i64* %379, align 8
  store i64 0, i64* %18, align 8
  br label %380

380:                                              ; preds = %433, %357
  %381 = load i64, i64* %18, align 8
  %382 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %383 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp ult i64 %381, %384
  br i1 %385, label %386, label %436

386:                                              ; preds = %380
  %387 = load i32, i32* @MSG_INFO, align 4
  %388 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %389 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %388, i32 0, i32 11
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = load i64, i64* %18, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 1
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %396 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %395, i32 0, i32 11
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %396, align 8
  %398 = load i64, i64* %18, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 (i32, i8*, ...) @wpa_printf(i32 %387, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i64 0, i64 0), i8* %394, i8* %401)
  %403 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %404 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %403, i32 0, i32 4
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %404, align 8
  %406 = load i64, i64* %18, align 8
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %411 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %410, i32 0, i32 11
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %411, align 8
  %413 = load i64, i64* %18, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 1
  %416 = load i8*, i8** %415, align 8
  %417 = call i32 @os_strlcpy(i32 %409, i8* %416, i32 4)
  %418 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %419 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %418, i32 0, i32 4
  %420 = load %struct.TYPE_6__*, %struct.TYPE_6__** %419, align 8
  %421 = load i64, i64* %18, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %426 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %425, i32 0, i32 11
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %426, align 8
  %428 = load i64, i64* %18, align 8
  %429 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 0
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @os_strlcpy(i32 %424, i8* %431, i32 4)
  br label %433

433:                                              ; preds = %386
  %434 = load i64, i64* %18, align 8
  %435 = add i64 %434, 1
  store i64 %435, i64* %18, align 8
  br label %380

436:                                              ; preds = %380
  %437 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %438 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %441 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %440, i32 0, i32 1
  store i64 %439, i64* %441, align 8
  store i64 0, i64* %18, align 8
  br label %442

442:                                              ; preds = %510, %436
  %443 = load i64, i64* %18, align 8
  %444 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %445 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  %447 = icmp ult i64 %443, %446
  br i1 %447, label %448, label %513

448:                                              ; preds = %442
  %449 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %450 = load i8*, i8** %8, align 8
  %451 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %452 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %451, i32 0, i32 10
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %452, align 8
  %454 = load i64, i64* %18, align 8
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %459 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %458, i32 0, i32 10
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %459, align 8
  %461 = load i64, i64* %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = call i64 @strcasecmp(i32 %464, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %466 = icmp eq i64 %465, 0
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %469 = call i32 @os_snprintf(i8* %449, i32 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0), i8* %450, i32 %457, i8* %468)
  %470 = load i32, i32* @MSG_INFO, align 4
  %471 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %472 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %473 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %472, i32 0, i32 10
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %473, align 8
  %475 = load i64, i64* %18, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 1
  %478 = load i8*, i8** %477, align 8
  %479 = call i32 (i32, i8*, ...) @wpa_printf(i32 %470, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* %471, i8* %478)
  %480 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %481 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %480, i32 0, i32 3
  %482 = load i32*, i32** %481, align 8
  %483 = load i64, i64* %18, align 8
  %484 = getelementptr inbounds i32, i32* %482, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %487 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %486, i32 0, i32 10
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %487, align 8
  %489 = load i64, i64* %18, align 8
  %490 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 1
  %492 = load i8*, i8** %491, align 8
  %493 = call i32 @os_strlcpy(i32 %485, i8* %492, i32 4)
  %494 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %495 = call i8* @os_readfile(i8* %494, i64* %21)
  store i8* %495, i8** %20, align 8
  %496 = load i8*, i8** %20, align 8
  %497 = icmp ne i8* %496, null
  br i1 %497, label %498, label %509

498:                                              ; preds = %448
  %499 = bitcast i8** %20 to i32**
  %500 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %501 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %500, i32 0, i32 2
  %502 = load i32*, i32** %501, align 8
  %503 = load i64, i64* %18, align 8
  %504 = getelementptr inbounds i32, i32* %502, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @sha256_vector(i32 1, i32** %499, i64* %21, i32 %505)
  %507 = load i8*, i8** %20, align 8
  %508 = call i32 @os_free(i8* %507)
  br label %509

509:                                              ; preds = %498, %448
  br label %510

510:                                              ; preds = %509
  %511 = load i64, i64* %18, align 8
  %512 = add i64 %511, 1
  store i64 %512, i64* %18, align 8
  br label %442

513:                                              ; preds = %442
  %514 = load i32, i32* %9, align 4
  %515 = icmp eq i32 %514, 2
  br i1 %515, label %516, label %549

516:                                              ; preds = %513
  %517 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %518 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %517, i32 0, i32 9
  %519 = load i32, i32* %518, align 8
  %520 = and i32 %519, 2
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %530

522:                                              ; preds = %516
  %523 = load i32, i32* @MSG_DEBUG, align 4
  %524 = call i32 (i32, i8*, ...) @wpa_printf(i32 %523, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0))
  %525 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %526 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %527 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %526, i32 0, i32 8
  %528 = load i8*, i8** %527, align 8
  %529 = call i32 @cmd_prov(%struct.hs20_osu_client* %525, i8* %528)
  store i32 %529, i32* %19, align 4
  br label %548

530:                                              ; preds = %516
  %531 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %532 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %531, i32 0, i32 9
  %533 = load i32, i32* %532, align 8
  %534 = and i32 %533, 1
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %544

536:                                              ; preds = %530
  %537 = load i32, i32* @MSG_DEBUG, align 4
  %538 = call i32 (i32, i8*, ...) @wpa_printf(i32 %537, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.41, i64 0, i64 0))
  %539 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %540 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %541 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %540, i32 0, i32 8
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 @cmd_oma_dm_prov(%struct.hs20_osu_client* %539, i8* %542)
  store i32 %543, i32* %19, align 4
  br label %547

544:                                              ; preds = %530
  %545 = load i32, i32* @MSG_DEBUG, align 4
  %546 = call i32 (i32, i8*, ...) @wpa_printf(i32 %545, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0))
  store i32 -1, i32* %19, align 4
  br label %547

547:                                              ; preds = %544, %536
  br label %548

548:                                              ; preds = %547, %522
  br label %578

549:                                              ; preds = %513
  %550 = load i32, i32* %9, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %577

552:                                              ; preds = %549
  %553 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %7, align 8
  %554 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %555 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %554, i32 0, i32 3
  %556 = load i8*, i8** %555, align 8
  %557 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %558 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %557, i32 0, i32 4
  %559 = load i8*, i8** %558, align 8
  %560 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %561 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %560, i32 0, i32 5
  %562 = load i8*, i8** %561, align 8
  %563 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %564 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %563, i32 0, i32 8
  %565 = load i8*, i8** %564, align 8
  %566 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %567 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %566, i32 0, i32 9
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* %10, align 4
  %570 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %571 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %570, i32 0, i32 6
  %572 = load i8*, i8** %571, align 8
  %573 = load %struct.osu_data*, %struct.osu_data** %15, align 8
  %574 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %573, i32 0, i32 7
  %575 = load i8*, i8** %574, align 8
  %576 = call i32 @osu_connect(%struct.hs20_osu_client* %553, i8* %556, i8* %559, i8* %562, i8* %565, i32 %568, i32 %569, i8* %572, i8* %575)
  store i32 %576, i32* %19, align 4
  br label %577

577:                                              ; preds = %552, %549
  br label %578

578:                                              ; preds = %577, %548
  br label %580

579:                                              ; preds = %321, %318
  store i32 -1, i32* %19, align 4
  br label %580

580:                                              ; preds = %579, %578
  %581 = load %struct.osu_data*, %struct.osu_data** %14, align 8
  %582 = call i32 @free(%struct.osu_data* %581)
  %583 = load i32, i32* %19, align 4
  store i32 %583, i32* %6, align 4
  br label %584

584:                                              ; preds = %580, %120, %93, %38, %27
  %585 = load i32, i32* %6, align 4
  ret i32 %585
}

declare dso_local i32 @write_summary(%struct.hs20_osu_client*, i8*, ...) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct.osu_data* @parse_osu_providers(i8*, i64*) #1

declare dso_local i32 @write_result(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @free(%struct.osu_data*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @hs20_web_browser(i8*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @os_readfile(i8*, i64*) #1

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @cmd_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @cmd_oma_dm_prov(%struct.hs20_osu_client*, i8*) #1

declare dso_local i32 @osu_connect(%struct.hs20_osu_client*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
