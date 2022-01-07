; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_pam_conv.c_t_pam_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/t/extr_t_pam_conv.c_t_pam_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pam_message = type { i32, i32 }
%struct.pam_response = type { %struct.pam_response*, i32 }
%struct.t_pam_conv_script = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"expected %d messages, got %d\00", align 1
@PAM_CONV_ERR = common dso_local global i32 0, align 4
@PAM_MAX_NUM_MSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"message %d expected style %d got %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"message %d expected \22%s\22 got \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"[PAM_PROMPT_ECHO_OFF] %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"[PAM_PROMPT_ECHO_ON] %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"[PAM_ERROR_MSG] %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"[PAM_TEXT_INFO] %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid message style %d\00", align 1
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t_pam_conv(i32 %0, %struct.pam_message** %1, %struct.pam_response** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pam_message**, align 8
  %8 = alloca %struct.pam_response**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.t_pam_conv_script*, align 8
  %11 = alloca %struct.pam_response*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.pam_message** %1, %struct.pam_message*** %7, align 8
  store %struct.pam_response** %2, %struct.pam_response*** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.t_pam_conv_script*
  store %struct.t_pam_conv_script* %14, %struct.t_pam_conv_script** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %17 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %22 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %21, i32 0, i32 1
  %23 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %24 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i32**, i8*, i32, ...) @asprintf(i32** %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @PAM_CONV_ERR, align 4
  store i32 %28, i32* %5, align 4
  br label %256

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PAM_MAX_NUM_MSG, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %29
  %37 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %38 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @PAM_CONV_ERR, align 4
  store i32 %39, i32* %5, align 4
  br label %256

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.pam_response* @calloc(i32 %41, i32 16)
  store %struct.pam_response* %42, %struct.pam_response** %11, align 8
  %43 = icmp eq %struct.pam_response* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %230

45:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %221, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %224

50:                                               ; preds = %46
  %51 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %51, i64 %53
  %55 = load %struct.pam_message*, %struct.pam_message** %54, align 8
  %56 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %59 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %57, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %50
  %68 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %69 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %68, i32 0, i32 1
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %72 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %79, i64 %81
  %83 = load %struct.pam_message*, %struct.pam_message** %82, align 8
  %84 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32**, i8*, i32, ...) @asprintf(i32** %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %78, i32 %85)
  br label %236

87:                                               ; preds = %50
  %88 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %88, i64 %90
  %92 = load %struct.pam_message*, %struct.pam_message** %91, align 8
  %93 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %96 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %95, i32 0, i32 3
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @strcmp(i32 %94, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %125

105:                                              ; preds = %87
  %106 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %107 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %106, i32 0, i32 1
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %110 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %109, i32 0, i32 3
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %117, i64 %119
  %121 = load %struct.pam_message*, %struct.pam_message** %120, align 8
  %122 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32**, i8*, i32, ...) @asprintf(i32** %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %116, i32 %123)
  br label %236

125:                                              ; preds = %87
  %126 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %126, i64 %128
  %130 = load %struct.pam_message*, %struct.pam_message** %129, align 8
  %131 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %169 [
    i32 130, label %133
    i32 129, label %142
    i32 131, label %151
    i32 128, label %160
  ]

133:                                              ; preds = %125
  %134 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %134, i64 %136
  %138 = load %struct.pam_message*, %struct.pam_message** %137, align 8
  %139 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @t_printv(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  br label %180

142:                                              ; preds = %125
  %143 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %143, i64 %145
  %147 = load %struct.pam_message*, %struct.pam_message** %146, align 8
  %148 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @t_printv(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  br label %180

151:                                              ; preds = %125
  %152 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %152, i64 %154
  %156 = load %struct.pam_message*, %struct.pam_message** %155, align 8
  %157 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @t_printv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  br label %180

160:                                              ; preds = %125
  %161 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %161, i64 %163
  %165 = load %struct.pam_message*, %struct.pam_message** %164, align 8
  %166 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @t_printv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %180

169:                                              ; preds = %125
  %170 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %171 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %170, i32 0, i32 1
  %172 = load %struct.pam_message**, %struct.pam_message*** %7, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.pam_message*, %struct.pam_message** %172, i64 %174
  %176 = load %struct.pam_message*, %struct.pam_message** %175, align 8
  %177 = getelementptr inbounds %struct.pam_message, %struct.pam_message* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32**, i8*, i32, ...) @asprintf(i32** %171, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %236

180:                                              ; preds = %160, %151, %142, %133
  %181 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %182 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %207

190:                                              ; preds = %180
  %191 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %192 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = call %struct.pam_response* @strdup(i32* %198)
  %200 = load %struct.pam_response*, %struct.pam_response** %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %200, i64 %202
  %204 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %203, i32 0, i32 0
  store %struct.pam_response* %199, %struct.pam_response** %204, align 8
  %205 = icmp eq %struct.pam_response* %199, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %230

207:                                              ; preds = %190, %180
  %208 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %209 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %208, i32 0, i32 2
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.pam_response*, %struct.pam_response** %11, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %216, i64 %218
  %220 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %219, i32 0, i32 1
  store i32 %215, i32* %220, align 8
  br label %221

221:                                              ; preds = %207
  %222 = load i32, i32* %12, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %46

224:                                              ; preds = %46
  %225 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %226 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %225, i32 0, i32 1
  store i32* null, i32** %226, align 8
  %227 = load %struct.pam_response*, %struct.pam_response** %11, align 8
  %228 = load %struct.pam_response**, %struct.pam_response*** %8, align 8
  store %struct.pam_response* %227, %struct.pam_response** %228, align 8
  %229 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %229, i32* %5, align 4
  br label %256

230:                                              ; preds = %206, %44
  %231 = load %struct.t_pam_conv_script*, %struct.t_pam_conv_script** %10, align 8
  %232 = getelementptr inbounds %struct.t_pam_conv_script, %struct.t_pam_conv_script* %231, i32 0, i32 1
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = call i32 @strerror(i32 %233)
  %235 = call i32 (i32**, i8*, i32, ...) @asprintf(i32** %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %230, %169, %105, %67
  store i32 0, i32* %12, align 4
  br label %237

237:                                              ; preds = %249, %236
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %252

241:                                              ; preds = %237
  %242 = load %struct.pam_response*, %struct.pam_response** %11, align 8
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %242, i64 %244
  %246 = getelementptr inbounds %struct.pam_response, %struct.pam_response* %245, i32 0, i32 0
  %247 = load %struct.pam_response*, %struct.pam_response** %246, align 8
  %248 = call i32 @free(%struct.pam_response* %247)
  br label %249

249:                                              ; preds = %241
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %12, align 4
  br label %237

252:                                              ; preds = %237
  %253 = load %struct.pam_response*, %struct.pam_response** %11, align 8
  %254 = call i32 @free(%struct.pam_response* %253)
  %255 = load i32, i32* @PAM_CONV_ERR, align 4
  store i32 %255, i32* %5, align 4
  br label %256

256:                                              ; preds = %252, %224, %36, %20
  %257 = load i32, i32* %5, align 4
  ret i32 %257
}

declare dso_local i32 @asprintf(i32**, i8*, i32, ...) #1

declare dso_local %struct.pam_response* @calloc(i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @t_printv(i8*, i32) #1

declare dso_local %struct.pam_response* @strdup(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.pam_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
