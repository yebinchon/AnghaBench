; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_skip_comments.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_skip_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i64, i32, i32, %struct.ucl_chunk* }
%struct.ucl_chunk = type { i8*, i32, i8* }

@UCL_STATE_SCOMMENT = common dso_local global i64 0, align 8
@UCL_STATE_MCOMMENT = common dso_local global i64 0, align 8
@UCL_PARSER_SAVE_COMMENTS = common dso_local global i32 0, align 4
@UCL_ENESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unfinished multiline comment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*)* @ucl_skip_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_skip_comments(%struct.ucl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca %struct.ucl_chunk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  %9 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %10 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %9, i32 0, i32 3
  %11 = load %struct.ucl_chunk*, %struct.ucl_chunk** %10, align 8
  store %struct.ucl_chunk* %11, %struct.ucl_chunk** %4, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %13 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %164, %67, %1
  %16 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %17 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %25, label %77

25:                                               ; preds = %20
  %26 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %27 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCL_STATE_SCOMMENT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %25
  %32 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %33 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UCL_STATE_MCOMMENT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %71, %37
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %42 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ult i8* %40, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %52 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @UCL_PARSER_SAVE_COMMENTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ucl_save_comment(%struct.ucl_parser* %58, i8* %59, i32 %65)
  store i8* null, i8** %6, align 8
  br label %67

67:                                               ; preds = %57, %50
  %68 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %68, i8* %69)
  br label %15

71:                                               ; preds = %45
  %72 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %72, i8* %73)
  br label %39

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75, %31, %25
  br label %217

77:                                               ; preds = %20, %15
  %78 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %79 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %80, 2
  br i1 %81, label %82, label %216

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %216

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 42
  br i1 %92, label %93, label %215

93:                                               ; preds = %87
  %94 = load i8*, i8** %5, align 8
  store i8* %94, i8** %6, align 8
  %95 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %95, i8* %96)
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  %100 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %100, i8* %101)
  br label %103

103:                                              ; preds = %201, %190, %93
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %106 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ult i8* %104, %107
  br i1 %108, label %109, label %205

109:                                              ; preds = %103
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %112, 34
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 92
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %120, %114, %109
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %201, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 42
  br i1 %132, label %133, label %173

133:                                              ; preds = %128
  %134 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %134, i8* %135)
  %137 = load i8*, i8** %5, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 47
  br i1 %140, label %141, label %169

141:                                              ; preds = %133
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %141
  %147 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %148 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @UCL_PARSER_SAVE_COMMENTS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %146
  %154 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %155 = load i8*, i8** %6, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = ptrtoint i8* %156 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = add nsw i64 %160, 1
  %162 = trunc i64 %161 to i32
  %163 = call i32 @ucl_save_comment(%struct.ucl_parser* %154, i8* %155, i32 %162)
  store i8* null, i8** %6, align 8
  br label %164

164:                                              ; preds = %153, %146
  %165 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %165, i8* %166)
  br label %15

168:                                              ; preds = %141
  br label %169

169:                                              ; preds = %168, %133
  %170 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %170, i8* %171)
  br label %200

173:                                              ; preds = %128
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 47
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %181 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %182, 2
  br i1 %183, label %184, label %199

184:                                              ; preds = %179
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp eq i32 %188, 42
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  %193 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %193, i8* %194)
  %196 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %196, i8* %197)
  br label %103

199:                                              ; preds = %184, %179, %173
  br label %200

200:                                              ; preds = %199, %169
  br label %201

201:                                              ; preds = %200, %125
  %202 = load %struct.ucl_chunk*, %struct.ucl_chunk** %4, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %202, i8* %203)
  br label %103

205:                                              ; preds = %103
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %210 = load i32, i32* @UCL_ENESTED, align 4
  %211 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %212 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %211, i32 0, i32 2
  %213 = call i32 @ucl_set_err(%struct.ucl_parser* %209, i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %212)
  store i32 0, i32* %2, align 4
  br label %242

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214, %87
  br label %216

216:                                              ; preds = %215, %82, %77
  br label %217

217:                                              ; preds = %216, %76
  %218 = load i8*, i8** %6, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %241

220:                                              ; preds = %217
  %221 = load i8*, i8** %5, align 8
  %222 = load i8*, i8** %6, align 8
  %223 = icmp ugt i8* %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %220
  %225 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %226 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @UCL_PARSER_SAVE_COMMENTS, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %224
  %232 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = load i8*, i8** %5, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = call i32 @ucl_save_comment(%struct.ucl_parser* %232, i8* %233, i32 %239)
  br label %241

241:                                              ; preds = %231, %224, %220, %217
  store i32 1, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %208
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @ucl_save_comment(%struct.ucl_parser*, i8*, i32) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
