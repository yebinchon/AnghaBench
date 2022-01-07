; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_get_authtok.c_pam_get_authtok.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openpam/lib/libpam/extr_pam_get_authtok.c_pam_get_authtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAM_AUTHTOK_PROMPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"authtok_prompt\00", align 1
@authtok_prompt = common dso_local global i8* null, align 8
@PAM_RHOST = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@PAM_HOST = common dso_local global i32 0, align 4
@authtok_prompt_remote = common dso_local global i8* null, align 8
@newauthtok_prompt = common dso_local global i8* null, align 8
@PAM_OLDAUTHTOK_PROMPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"oldauthtok_prompt\00", align 1
@oldauthtok_prompt = common dso_local global i8* null, align 8
@PAM_BAD_CONSTANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"try_first_pass\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"use_first_pass\00", align 1
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"echo_pass\00", align 1
@PAM_PROMPT_ECHO_ON = common dso_local global i32 0, align 4
@PAM_PROMPT_ECHO_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Retype %s\00", align 1
@PAM_MAX_RESP_SIZE = common dso_local global i32 0, align 4
@PAM_TRY_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pam_get_authtok(i32* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = call i32 (...) @ENTER()
  %26 = load i8**, i8*** %8, align 8
  store i8* null, i8** %26, align 8
  store i32 0, i32* %24, align 4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %74 [
    i32 129, label %28
    i32 128, label %71
  ]

28:                                               ; preds = %4
  %29 = load i32, i32* @PAM_AUTHTOK_PROMPT, align 4
  store i32 %29, i32* %21, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %30 = load i8*, i8** @authtok_prompt, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @PAM_RHOST, align 4
  %33 = call i32 @pam_get_item(i32* %31, i32 %32, i8** %18)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = load i32, i32* @PAM_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %28
  %38 = load i8*, i8** %18, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @PAM_HOST, align 4
  %43 = call i32 @pam_get_item(i32* %41, i32 %42, i8** %17)
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32, i32* @PAM_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i8*, i8** %18, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** @authtok_prompt_remote, align 8
  store i8* %56, i8** %16, align 8
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57, %47, %40
  br label %59

59:                                               ; preds = %58, %37, %28
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @pam_get_item(i32* %60, i32 128, i8** %12)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* @PAM_SUCCESS, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** @newauthtok_prompt, align 8
  store i8* %69, i8** %16, align 8
  store i32 1, i32* %24, align 4
  br label %70

70:                                               ; preds = %68, %65, %59
  br label %77

71:                                               ; preds = %4
  %72 = load i32, i32* @PAM_OLDAUTHTOK_PROMPT, align 4
  store i32 %72, i32* %21, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %73 = load i8*, i8** @oldauthtok_prompt, align 8
  store i8* %73, i8** %16, align 8
  store i32 0, i32* %24, align 4
  br label %77

74:                                               ; preds = %4
  %75 = load i32, i32* @PAM_BAD_CONSTANT, align 4
  %76 = call i32 @RETURNC(i32 %75)
  br label %77

77:                                               ; preds = %74, %71, %70
  %78 = load i32*, i32** %6, align 8
  %79 = call i8* @openpam_get_option(i32* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i8* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @openpam_get_option(i32* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @pam_get_item(i32* %86, i32 %87, i8** %13)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* @PAM_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** %13, align 8
  %97 = load i8**, i8*** %8, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* @PAM_SUCCESS, align 4
  %99 = call i32 @RETURNC(i32 %98)
  br label %116

100:                                              ; preds = %92, %85
  %101 = load i32*, i32** %6, align 8
  %102 = call i8* @openpam_get_option(i32* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* @PAM_SUCCESS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @PAM_AUTH_ERR, align 4
  br label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %22, align 4
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i32 [ %109, %108 ], [ %111, %110 ]
  %114 = call i32 @RETURNC(i32 %113)
  br label %115

115:                                              ; preds = %112, %100
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %81
  %118 = load i32*, i32** %6, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = call i8* @openpam_get_option(i32* %118, i8* %119)
  store i8* %120, i8** %14, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** %14, align 8
  store i8* %123, i8** %9, align 8
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i8*, i8** %9, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @pam_get_item(i32* %128, i32 %129, i8** %14)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* @PAM_SUCCESS, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i8*, i8** %14, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i8*, i8** %14, align 8
  store i8* %138, i8** %9, align 8
  br label %139

139:                                              ; preds = %137, %134, %127
  br label %140

140:                                              ; preds = %139, %124
  %141 = load i8*, i8** %9, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i8*, i8** %16, align 8
  store i8* %144, i8** %9, align 8
  br label %145

145:                                              ; preds = %143, %140
  store i64 1024, i64* %11, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %148 = load i8*, i8** %9, align 8
  %149 = call i32 @openpam_subst(i32* %146, i8* %147, i64* %11, i8* %148)
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* @PAM_SUCCESS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %145
  %154 = load i64, i64* %11, align 8
  %155 = icmp ule i64 %154, 1024
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %157, i8** %9, align 8
  br label %158

158:                                              ; preds = %156, %153, %145
  %159 = load i32*, i32** %6, align 8
  %160 = call i8* @openpam_get_option(i32* %159, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @PAM_PROMPT_ECHO_ON, align 4
  br label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @PAM_PROMPT_ECHO_OFF, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %23, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %23, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @pam_prompt(i32* %168, i32 %169, i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* @PAM_SUCCESS, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %166
  %176 = load i32, i32* %22, align 4
  %177 = call i32 @RETURNC(i32 %176)
  br label %178

178:                                              ; preds = %175, %166
  %179 = load i32, i32* %24, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %23, align 4
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @pam_prompt(i32* %182, i32 %183, i8** %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %184)
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* @PAM_SUCCESS, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %181
  %190 = load i8*, i8** %19, align 8
  %191 = load i32, i32* @PAM_MAX_RESP_SIZE, align 4
  %192 = call i32 @strlset(i8* %190, i32 0, i32 %191)
  %193 = load i8*, i8** %19, align 8
  %194 = call i32 @FREE(i8* %193)
  %195 = load i32, i32* %22, align 4
  %196 = call i32 @RETURNC(i32 %195)
  br label %197

197:                                              ; preds = %189, %181
  %198 = load i8*, i8** %19, align 8
  %199 = load i8*, i8** %20, align 8
  %200 = call i64 @strcmp(i8* %198, i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i8*, i8** %19, align 8
  %204 = load i32, i32* @PAM_MAX_RESP_SIZE, align 4
  %205 = call i32 @strlset(i8* %203, i32 0, i32 %204)
  %206 = load i8*, i8** %19, align 8
  %207 = call i32 @FREE(i8* %206)
  br label %208

208:                                              ; preds = %202, %197
  %209 = load i8*, i8** %20, align 8
  %210 = load i32, i32* @PAM_MAX_RESP_SIZE, align 4
  %211 = call i32 @strlset(i8* %209, i32 0, i32 %210)
  %212 = load i8*, i8** %20, align 8
  %213 = call i32 @FREE(i8* %212)
  br label %214

214:                                              ; preds = %208, %178
  %215 = load i8*, i8** %19, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* @PAM_TRY_AGAIN, align 4
  %219 = call i32 @RETURNC(i32 %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i8*, i8** %19, align 8
  %224 = call i32 @pam_set_item(i32* %221, i32 %222, i8* %223)
  store i32 %224, i32* %22, align 4
  %225 = load i8*, i8** %19, align 8
  %226 = load i32, i32* @PAM_MAX_RESP_SIZE, align 4
  %227 = call i32 @strlset(i8* %225, i32 0, i32 %226)
  %228 = load i8*, i8** %19, align 8
  %229 = call i32 @FREE(i8* %228)
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* @PAM_SUCCESS, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %220
  %234 = load i32, i32* %22, align 4
  %235 = call i32 @RETURNC(i32 %234)
  br label %236

236:                                              ; preds = %233, %220
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %7, align 4
  %239 = load i8**, i8*** %8, align 8
  %240 = call i32 @pam_get_item(i32* %237, i32 %238, i8** %239)
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %22, align 4
  %242 = call i32 @RETURNC(i32 %241)
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pam_get_item(i32*, i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @RETURNC(i32) #1

declare dso_local i8* @openpam_get_option(i32*, i8*) #1

declare dso_local i32 @openpam_subst(i32*, i8*, i64*, i8*) #1

declare dso_local i32 @pam_prompt(i32*, i32, i8**, i8*, i8*) #1

declare dso_local i32 @strlset(i8*, i32, i32) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @pam_set_item(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
