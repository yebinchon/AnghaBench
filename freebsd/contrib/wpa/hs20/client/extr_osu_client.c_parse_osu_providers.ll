; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_parse_osu_providers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_osu_client.c_parse_osu_providers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osu_data = type { i64, i64, i64, %struct.osu_icon*, %struct.osu_lang_text*, %struct.osu_lang_text*, i32, i32, i32, i32, i32, i32, i32 }
%struct.osu_icon = type { i32, i32, i32, i32 }
%struct.osu_lang_text = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Could not open %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"OSU-PROVIDER \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uri=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"methods=\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"osu_ssid=\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"osu_ssid2=\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"osu_nai=\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"osu_nai2=\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"friendly_name=\00", align 1
@MAX_OSU_VALS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"desc=\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"icon=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.osu_data* (i8*, i64*)* @parse_osu_providers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.osu_data* @parse_osu_providers(i8* %0, i64* %1) #0 {
  %3 = alloca %struct.osu_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1000 x i8], align 16
  %8 = alloca %struct.osu_data*, align 8
  %9 = alloca %struct.osu_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.osu_lang_text*, align 8
  %14 = alloca %struct.osu_lang_text*, align 8
  %15 = alloca %struct.osu_icon*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.osu_data* null, %struct.osu_data** %8, align 8
  store %struct.osu_data* null, %struct.osu_data** %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store %struct.osu_data* null, %struct.osu_data** %3, align 8
  br label %311

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %304, %298, %288, %264, %256, %249, %242, %223, %190, %183, %150, %143, %126, %115, %104, %93, %83, %72, %67, %50, %24
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @fgets(i8* %26, i32 1000, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %305

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %32 = call i8* @strchr(i8* %31, i8 signext 10)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.osu_data*, %struct.osu_data** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  %45 = mul i64 %44, 80
  %46 = call %struct.osu_data* @realloc(%struct.osu_data* %42, i64 %45)
  store %struct.osu_data* %46, %struct.osu_data** %9, align 8
  %47 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %48 = icmp eq %struct.osu_data* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %305

50:                                               ; preds = %41
  %51 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  store %struct.osu_data* %51, %struct.osu_data** %8, align 8
  %52 = load %struct.osu_data*, %struct.osu_data** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %52, i64 %53
  store %struct.osu_data* %55, %struct.osu_data** %9, align 8
  %56 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %57 = call i32 @memset(%struct.osu_data* %56, i32 0, i32 80)
  %58 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %59 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 13
  %63 = call i32 @snprintf(i32 %60, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %25

64:                                               ; preds = %37
  %65 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %66 = icmp ne %struct.osu_data* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %25

68:                                               ; preds = %64
  %69 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %74 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = call i32 @snprintf(i32 %75, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %25

79:                                               ; preds = %68
  %80 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %81 = call i64 @strncmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %85 = getelementptr inbounds i8, i8* %84, i64 8
  %86 = call i32 @strtol(i8* %85, i32* null, i32 16)
  %87 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %88 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 8
  br label %25

89:                                               ; preds = %79
  %90 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 9)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %95 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %98 = getelementptr inbounds i8, i8* %97, i64 9
  %99 = call i32 @snprintf(i32 %96, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %25

100:                                              ; preds = %89
  %101 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %102 = call i64 @strncmp(i8* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 10)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %106 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 10
  %110 = call i32 @snprintf(i32 %107, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %25

111:                                              ; preds = %100
  %112 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %113 = call i64 @os_strncmp(i8* %112, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %117 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 8
  %121 = call i32 @os_snprintf(i32 %118, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %25

122:                                              ; preds = %111
  %123 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %124 = call i64 @os_strncmp(i8* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %128 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %131 = getelementptr inbounds i8, i8* %130, i64 9
  %132 = call i32 @os_snprintf(i32 %129, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %131)
  br label %25

133:                                              ; preds = %122
  %134 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %135 = call i64 @strncmp(i8* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 14)
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %139 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MAX_OSU_VALS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %25

144:                                              ; preds = %137
  %145 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %146 = getelementptr inbounds i8, i8* %145, i64 14
  %147 = call i8* @strchr(i8* %146, i8 signext 58)
  store i8* %147, i8** %11, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = icmp eq i8* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %25

151:                                              ; preds = %144
  %152 = load i8*, i8** %11, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %11, align 8
  store i8 0, i8* %152, align 1
  %154 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %155 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %154, i32 0, i32 5
  %156 = load %struct.osu_lang_text*, %struct.osu_lang_text** %155, align 8
  %157 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %158 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %158, align 8
  %161 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %156, i64 %159
  store %struct.osu_lang_text* %161, %struct.osu_lang_text** %13, align 8
  %162 = load %struct.osu_lang_text*, %struct.osu_lang_text** %13, align 8
  %163 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %166 = getelementptr inbounds i8, i8* %165, i64 14
  %167 = call i32 @snprintf(i32 %164, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  %168 = load %struct.osu_lang_text*, %struct.osu_lang_text** %13, align 8
  %169 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @snprintf(i32 %170, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %151, %133
  %174 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %175 = call i64 @strncmp(i8* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %213

177:                                              ; preds = %173
  %178 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %179 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MAX_OSU_VALS, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %25

184:                                              ; preds = %177
  %185 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %186 = getelementptr inbounds i8, i8* %185, i64 5
  %187 = call i8* @strchr(i8* %186, i8 signext 58)
  store i8* %187, i8** %11, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %25

191:                                              ; preds = %184
  %192 = load i8*, i8** %11, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %11, align 8
  store i8 0, i8* %192, align 1
  %194 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %195 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %194, i32 0, i32 4
  %196 = load %struct.osu_lang_text*, %struct.osu_lang_text** %195, align 8
  %197 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %198 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %199, 1
  store i64 %200, i64* %198, align 8
  %201 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %196, i64 %199
  store %struct.osu_lang_text* %201, %struct.osu_lang_text** %14, align 8
  %202 = load %struct.osu_lang_text*, %struct.osu_lang_text** %14, align 8
  %203 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %206 = getelementptr inbounds i8, i8* %205, i64 5
  %207 = call i32 @snprintf(i32 %204, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %206)
  %208 = load %struct.osu_lang_text*, %struct.osu_lang_text** %14, align 8
  %209 = getelementptr inbounds %struct.osu_lang_text, %struct.osu_lang_text* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 @snprintf(i32 %210, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %211)
  br label %213

213:                                              ; preds = %191, %173
  %214 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %215 = call i64 @strncmp(i8* %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %304

217:                                              ; preds = %213
  %218 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %219 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @MAX_OSU_VALS, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %25

224:                                              ; preds = %217
  %225 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %226 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %225, i32 0, i32 3
  %227 = load %struct.osu_icon*, %struct.osu_icon** %226, align 8
  %228 = load %struct.osu_data*, %struct.osu_data** %9, align 8
  %229 = getelementptr inbounds %struct.osu_data, %struct.osu_data* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %227, i64 %230
  store %struct.osu_icon* %232, %struct.osu_icon** %15, align 8
  %233 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %234 = getelementptr inbounds i8, i8* %233, i64 5
  %235 = call i32 @atoi(i8* %234)
  %236 = load %struct.osu_icon*, %struct.osu_icon** %15, align 8
  %237 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %239 = call i8* @strchr(i8* %238, i8 signext 58)
  store i8* %239, i8** %11, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %224
  br label %25

243:                                              ; preds = %224
  %244 = load i8*, i8** %11, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  %246 = call i8* @strchr(i8* %245, i8 signext 58)
  store i8* %246, i8** %11, align 8
  %247 = load i8*, i8** %11, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  br label %25

250:                                              ; preds = %243
  %251 = load i8*, i8** %11, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = call i8* @strchr(i8* %252, i8 signext 58)
  store i8* %253, i8** %11, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = icmp eq i8* %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  br label %25

257:                                              ; preds = %250
  %258 = load i8*, i8** %11, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %11, align 8
  %260 = load i8*, i8** %11, align 8
  %261 = call i8* @strchr(i8* %260, i8 signext 58)
  store i8* %261, i8** %12, align 8
  %262 = load i8*, i8** %12, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %25

265:                                              ; preds = %257
  %266 = load i8*, i8** %12, align 8
  store i8 0, i8* %266, align 1
  %267 = load %struct.osu_icon*, %struct.osu_icon** %15, align 8
  %268 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load i8*, i8** %11, align 8
  %271 = call i32 @snprintf(i32 %269, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %270)
  %272 = load i8*, i8** %12, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  store i8* %273, i8** %11, align 8
  %274 = load i8*, i8** %11, align 8
  %275 = call i8* @strchr(i8* %274, i8 signext 58)
  store i8* %275, i8** %12, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %265
  %279 = load i8*, i8** %12, align 8
  store i8 0, i8* %279, align 1
  br label %280

280:                                              ; preds = %278, %265
  %281 = load %struct.osu_icon*, %struct.osu_icon** %15, align 8
  %282 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load i8*, i8** %11, align 8
  %285 = call i32 @snprintf(i32 %283, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %284)
  %286 = load i8*, i8** %11, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %289, label %288

288:                                              ; preds = %280
  br label %25

289:                                              ; preds = %280
  %290 = load i8*, i8** %12, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  store i8* %291, i8** %11, align 8
  %292 = load i8*, i8** %11, align 8
  %293 = call i8* @strchr(i8* %292, i8 signext 58)
  store i8* %293, i8** %12, align 8
  %294 = load i8*, i8** %12, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %298

296:                                              ; preds = %289
  %297 = load i8*, i8** %12, align 8
  store i8 0, i8* %297, align 1
  br label %298

298:                                              ; preds = %296, %289
  %299 = load %struct.osu_icon*, %struct.osu_icon** %15, align 8
  %300 = getelementptr inbounds %struct.osu_icon, %struct.osu_icon* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i8*, i8** %11, align 8
  %303 = call i32 @snprintf(i32 %301, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %302)
  br label %25

304:                                              ; preds = %213
  br label %25

305:                                              ; preds = %49, %25
  %306 = load i32*, i32** %6, align 8
  %307 = call i32 @fclose(i32* %306)
  %308 = load i64, i64* %10, align 8
  %309 = load i64*, i64** %5, align 8
  store i64 %308, i64* %309, align 8
  %310 = load %struct.osu_data*, %struct.osu_data** %8, align 8
  store %struct.osu_data* %310, %struct.osu_data** %3, align 8
  br label %311

311:                                              ; preds = %305, %20
  %312 = load %struct.osu_data*, %struct.osu_data** %3, align 8
  ret %struct.osu_data* %312
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.osu_data* @realloc(%struct.osu_data*, i64) #1

declare dso_local i32 @memset(%struct.osu_data*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @os_snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
