; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c__passwdqc_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pam_modules/pam_passwdqc/extr_passwdqc_check.c__passwdqc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i64 }
%struct.passwd = type { i8*, i8* }

@REASON_SAME = common dso_local global i8* null, align 8
@REASON_SHORT = common dso_local global i8* null, align 8
@REASON_LONG = common dso_local global i8* null, align 8
@REASON_SIMPLESHORT = common dso_local global i8* null, align 8
@REASON_SIMPLE = common dso_local global i8* null, align 8
@REASON_ERROR = common dso_local global i8* null, align 8
@REASON_SIMILAR = common dso_local global i8* null, align 8
@REASON_PERSONAL = common dso_local global i8* null, align 8
@REASON_WORD = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_passwdqc_check(%struct.TYPE_6__* %0, i8* %1, i8* %2, %struct.passwd* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca [9 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.passwd* %3, %struct.passwd** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcmp(i8* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** @REASON_SAME, align 8
  store i8* %26, i8** %16, align 8
  br label %27

27:                                               ; preds = %25, %20, %4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %17, align 4
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %17, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** @REASON_SHORT, align 8
  store i8* %41, i8** %16, align 8
  br label %42

42:                                               ; preds = %40, %32, %27
  %43 = load i8*, i8** %16, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %17, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strncat(i8* %58, i8* %59, i32 8)
  %61 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strncmp(i8* %65, i8* %66, i32 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** @REASON_SAME, align 8
  store i8* %70, i8** %16, align 8
  br label %71

71:                                               ; preds = %69, %64, %56
  br label %74

72:                                               ; preds = %51
  %73 = load i8*, i8** @REASON_LONG, align 8
  store i8* %73, i8** %16, align 8
  br label %74

74:                                               ; preds = %72, %71
  br label %75

75:                                               ; preds = %74, %45, %42
  %76 = load i8*, i8** %16, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %106, label %78

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i64 @is_simple(%struct.TYPE_6__* %79, i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i8*, i8** @REASON_SIMPLESHORT, align 8
  store i8* %102, i8** %16, align 8
  br label %105

103:                                              ; preds = %91, %83
  %104 = load i8*, i8** @REASON_SIMPLE, align 8
  store i8* %104, i8** %16, align 8
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %78, %75
  %107 = load i8*, i8** %16, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %163, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @reverse(i8* %110)
  store i8* %111, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %136

113:                                              ; preds = %109
  %114 = load i8*, i8** %6, align 8
  %115 = call i8* @unify(i8* %114)
  store i8* %115, i8** %11, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i8* @unify(i8* %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i8*, i8** %7, align 8
  %122 = call i8* @unify(i8* %121)
  store i8* %122, i8** %13, align 8
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.passwd*, %struct.passwd** %8, align 8
  %125 = icmp ne %struct.passwd* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.passwd*, %struct.passwd** %8, align 8
  %128 = getelementptr inbounds %struct.passwd, %struct.passwd* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @unify(i8* %129)
  store i8* %130, i8** %14, align 8
  %131 = load %struct.passwd*, %struct.passwd** %8, align 8
  %132 = getelementptr inbounds %struct.passwd, %struct.passwd* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i8* @unify(i8* %133)
  store i8* %134, i8** %15, align 8
  br label %135

135:                                              ; preds = %126, %123
  br label %136

136:                                              ; preds = %135, %109
  %137 = load i8*, i8** %10, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = load i8*, i8** %12, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i8*, i8** %7, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %13, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %148, %145
  %152 = load %struct.passwd*, %struct.passwd** %8, align 8
  %153 = icmp ne %struct.passwd* %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i8*, i8** %15, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %157, %154, %148, %142, %139, %136
  %161 = load i8*, i8** @REASON_ERROR, align 8
  store i8* %161, i8** %16, align 8
  br label %162

162:                                              ; preds = %160, %157, %151
  br label %163

163:                                              ; preds = %162, %106
  %164 = load i8*, i8** %16, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %190, label %166

166:                                              ; preds = %163
  %167 = load i8*, i8** %7, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %190

169:                                              ; preds = %166
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %169
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = call i64 @is_based(%struct.TYPE_6__* %175, i8* %176, i8* %177, i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %174
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %183 = load i8*, i8** %13, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = call i64 @is_based(%struct.TYPE_6__* %182, i8* %183, i8* %184, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %181, %174
  %189 = load i8*, i8** @REASON_SIMILAR, align 8
  store i8* %189, i8** %16, align 8
  br label %190

190:                                              ; preds = %188, %181, %169, %166, %163
  %191 = load i8*, i8** %16, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %226, label %193

193:                                              ; preds = %190
  %194 = load %struct.passwd*, %struct.passwd** %8, align 8
  %195 = icmp ne %struct.passwd* %194, null
  br i1 %195, label %196, label %226

196:                                              ; preds = %193
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = load i8*, i8** %11, align 8
  %200 = load i8*, i8** %6, align 8
  %201 = call i64 @is_based(%struct.TYPE_6__* %197, i8* %198, i8* %199, i8* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %224, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %205 = load i8*, i8** %14, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = call i64 @is_based(%struct.TYPE_6__* %204, i8* %205, i8* %206, i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %224, label %210

210:                                              ; preds = %203
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = load i8*, i8** %15, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = load i8*, i8** %6, align 8
  %215 = call i64 @is_based(%struct.TYPE_6__* %211, i8* %212, i8* %213, i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %210
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = call i64 @is_based(%struct.TYPE_6__* %218, i8* %219, i8* %220, i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217, %210, %203, %196
  %225 = load i8*, i8** @REASON_PERSONAL, align 8
  store i8* %225, i8** %16, align 8
  br label %226

226:                                              ; preds = %224, %217, %193, %190
  %227 = load i8*, i8** %16, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %252, label %229

229:                                              ; preds = %226
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @strlen(i8* %230)
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %231, %236
  br i1 %237, label %238, label %252

238:                                              ; preds = %229
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = call i64 @is_word_based(%struct.TYPE_6__* %239, i8* %240, i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %238
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = load i8*, i8** %10, align 8
  %248 = call i64 @is_word_based(%struct.TYPE_6__* %245, i8* %246, i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %244, %238
  %251 = load i8*, i8** @REASON_WORD, align 8
  store i8* %251, i8** %16, align 8
  br label %252

252:                                              ; preds = %250, %244, %229, %226
  %253 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %254 = call i32 @memset(i8* %253, i32 0, i32 9)
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 @clean(i8* %255)
  %257 = load i8*, i8** %11, align 8
  %258 = call i32 @clean(i8* %257)
  %259 = load i8*, i8** %12, align 8
  %260 = call i32 @clean(i8* %259)
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @clean(i8* %261)
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 @clean(i8* %263)
  %265 = load i8*, i8** %15, align 8
  %266 = call i32 @clean(i8* %265)
  %267 = load i8*, i8** %16, align 8
  ret i8* %267
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @is_simple(%struct.TYPE_6__*, i8*) #1

declare dso_local i8* @reverse(i8*) #1

declare dso_local i8* @unify(i8*) #1

declare dso_local i64 @is_based(%struct.TYPE_6__*, i8*, i8*, i8*) #1

declare dso_local i64 @is_word_based(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @clean(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
