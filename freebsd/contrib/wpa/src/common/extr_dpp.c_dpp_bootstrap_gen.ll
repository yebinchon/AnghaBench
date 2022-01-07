; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_bootstrap_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_global = type { i32 }
%struct.dpp_bootstrap_info = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"type=qrcode\00", align 1
@DPP_BOOTSTRAP_QR_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"type=pkex\00", align 1
@DPP_BOOTSTRAP_PKEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" chan=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" mac=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" info=\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" curve=\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" key=\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"DPP:%s%s%s%s%s%s%s%s%sK:%s;;\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"C:\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"M:\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"I:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_bootstrap_gen(%struct.dpp_global* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_global*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpp_bootstrap_info*, align 8
  store %struct.dpp_global* %0, %struct.dpp_global** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 -1, i32* %15, align 4
  %17 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %18 = icmp ne %struct.dpp_global* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %232

20:                                               ; preds = %2
  %21 = call %struct.dpp_bootstrap_info* @os_zalloc(i32 24)
  store %struct.dpp_bootstrap_info* %21, %struct.dpp_bootstrap_info** %16, align 8
  %22 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %23 = icmp ne %struct.dpp_bootstrap_info* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %213

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @os_strstr(i8* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @DPP_BOOTSTRAP_QR_CODE, align 4
  %31 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %32 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %43

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @os_strstr(i8* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @DPP_BOOTSTRAP_PKEX, align 4
  %39 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %40 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  br label %42

41:                                               ; preds = %33
  br label %213

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @get_param(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @get_param(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i8* @get_param(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @get_param(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @get_param(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %74

56:                                               ; preds = %43
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @os_strlen(i8* %57)
  %59 = sdiv i32 %58, 2
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i8* @os_malloc(i64 %61)
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i8*, i8** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @hexstr2bin(i8* %67, i32* %68, i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66, %56
  br label %213

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i8* @dpp_keygen(%struct.dpp_bootstrap_info* %75, i8* %76, i32* %77, i64 %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  br label %213

83:                                               ; preds = %74
  store i64 4, i64* %14, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i64 @dpp_parse_uri_chan_list(%struct.dpp_bootstrap_info* %87, i8* %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %213

92:                                               ; preds = %86
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @os_strlen(i8* %93)
  %95 = add nsw i32 3, %94
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %92, %83
  %100 = load i8*, i8** %7, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @dpp_parse_uri_mac(%struct.dpp_bootstrap_info* %103, i8* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %213

108:                                              ; preds = %102
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @os_strlen(i8* %109)
  %111 = add nsw i32 3, %110
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %14, align 8
  br label %115

115:                                              ; preds = %108, %99
  %116 = load i8*, i8** %8, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @dpp_parse_uri_info(%struct.dpp_bootstrap_info* %119, i8* %120)
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %213

124:                                              ; preds = %118
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @os_strlen(i8* %125)
  %127 = add nsw i32 3, %126
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %124, %115
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @os_strlen(i8* %132)
  %134 = add nsw i32 4, %133
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %14, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %14, align 8
  %138 = load i64, i64* %14, align 8
  %139 = add i64 %138, 1
  %140 = call i8* @os_malloc(i64 %139)
  %141 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %142 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %144 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %131
  br label %213

148:                                              ; preds = %131
  %149 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %150 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, 1
  %154 = load i8*, i8** %6, align 8
  %155 = icmp ne i8* %154, null
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %158 = load i8*, i8** %6, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = load i8*, i8** %6, align 8
  br label %163

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %160
  %164 = phi i8* [ %161, %160 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %162 ]
  %165 = load i8*, i8** %6, align 8
  %166 = icmp ne i8* %165, null
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %169 = load i8*, i8** %7, align 8
  %170 = icmp ne i8* %169, null
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %173 = load i8*, i8** %7, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %177

175:                                              ; preds = %163
  %176 = load i8*, i8** %7, align 8
  br label %178

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i8* [ %176, %175 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %177 ]
  %180 = load i8*, i8** %7, align 8
  %181 = icmp ne i8* %180, null
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %188 = load i8*, i8** %8, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i8*, i8** %8, align 8
  br label %193

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i8* [ %191, %190 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %192 ]
  %195 = load i8*, i8** %8, align 8
  %196 = icmp ne i8* %195, null
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 @os_snprintf(i8* %151, i64 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %157, i8* %164, i8* %168, i8* %172, i8* %179, i8* %183, i8* %187, i8* %194, i8* %198, i8* %199)
  %201 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %202 = call i32 @dpp_next_id(%struct.dpp_global* %201)
  %203 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %204 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.dpp_global*, %struct.dpp_global** %4, align 8
  %206 = getelementptr inbounds %struct.dpp_global, %struct.dpp_global* %205, i32 0, i32 0
  %207 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %208 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %207, i32 0, i32 1
  %209 = call i32 @dl_list_add(i32* %206, i32* %208)
  %210 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %211 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %15, align 4
  store %struct.dpp_bootstrap_info* null, %struct.dpp_bootstrap_info** %16, align 8
  br label %213

213:                                              ; preds = %193, %147, %123, %107, %91, %82, %72, %41, %24
  %214 = load i8*, i8** %10, align 8
  %215 = call i32 @os_free(i8* %214)
  %216 = load i8*, i8** %9, align 8
  %217 = call i32 @os_free(i8* %216)
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @os_free(i8* %218)
  %220 = load i8*, i8** %7, align 8
  %221 = call i32 @os_free(i8* %220)
  %222 = load i8*, i8** %8, align 8
  %223 = call i32 @os_free(i8* %222)
  %224 = load i8*, i8** %11, align 8
  %225 = call i32 @str_clear_free(i8* %224)
  %226 = load i32*, i32** %12, align 8
  %227 = load i64, i64* %13, align 8
  %228 = call i32 @bin_clear_free(i32* %226, i64 %227)
  %229 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %16, align 8
  %230 = call i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info* %229)
  %231 = load i32, i32* %15, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %213, %19
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local %struct.dpp_bootstrap_info* @os_zalloc(i32) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i8* @get_param(i8*, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local i8* @dpp_keygen(%struct.dpp_bootstrap_info*, i8*, i32*, i64) #1

declare dso_local i64 @dpp_parse_uri_chan_list(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_mac(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i64 @dpp_parse_uri_info(%struct.dpp_bootstrap_info*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dpp_next_id(%struct.dpp_global*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @str_clear_free(i8*) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

declare dso_local i32 @dpp_bootstrap_info_free(%struct.dpp_bootstrap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
