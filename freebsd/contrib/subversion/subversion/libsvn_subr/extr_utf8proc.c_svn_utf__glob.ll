; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_svn_utf__glob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_svn_utf__glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@SVN_ERR_UTF8_GLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Cannot use a custom escape token in glob matching mode\00", align 1
@SVN_UTF__UNKNOWN_LENGTH = common dso_local global i64 0, align 8
@UTF8PROC_NULLTERM = common dso_local global i32 0, align 4
@UTF8PROC_DECOMPOSE = common dso_local global i32 0, align 4
@UTF8PROC_STABLE = common dso_local global i32 0, align 4
@SVN_ERR_UTF8PROC_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Escape token must be one character\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Invalid escape character U+%04lX\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf__glob(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7, %struct.TYPE_10__* %8, %struct.TYPE_10__* %9, %struct.TYPE_10__* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca %struct.TYPE_10__*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i64 %2, i64* %15, align 8
  store i8* %3, i8** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %23, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %11
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @SVN_ERR_UTF8_GLOB, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %41 = call i32* @svn_error_create(i32 %39, i32* null, i32 %40)
  store i32* %41, i32** %12, align 8
  br label %258

42:                                               ; preds = %35, %11
  %43 = load i8*, i8** %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %46 = call i32 @decompose_normalized(i64* %25, i8* %43, i64 %44, %struct.TYPE_10__* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %25, align 8
  %56 = call i32 @svn_utf__encode_ucs4_string(%struct.TYPE_10__* %51, i32* %54, i64 %55, i64* %24)
  %57 = call i32 @SVN_ERR(i32 %56)
  br label %233

58:                                               ; preds = %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %26, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 -1, i32* %27, align 4
  br label %112

65:                                               ; preds = %58
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* @SVN_UTF__UNKNOWN_LENGTH, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @UTF8PROC_NULLTERM, align 4
  br label %72

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  store i32 %73, i32* %30, align 4
  %74 = load i8*, i8** %18, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i32, i32* @UTF8PROC_DECOMPOSE, align 4
  %77 = load i32, i32* @UTF8PROC_STABLE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %30, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @utf8proc_decompose(i8* %74, i64 %75, i32* %27, i32 1, i32 %80)
  store i32 %81, i32* %31, align 4
  %82 = load i32, i32* %31, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load i32, i32* @SVN_ERR_UTF8PROC_ERROR, align 4
  %86 = load i32, i32* %31, align 4
  %87 = call i32 @utf8proc_errmsg(i32 %86)
  %88 = call i32 @gettext(i32 %87)
  %89 = call i32* @svn_error_create(i32 %85, i32* null, i32 %88)
  store i32* %89, i32** %12, align 8
  br label %258

90:                                               ; preds = %72
  %91 = load i32, i32* %31, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %31, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %90
  %97 = load i32, i32* @SVN_ERR_UTF8_GLOB, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %99 = call i32* @svn_error_create(i32 %97, i32* null, i32 %98)
  store i32* %99, i32** %12, align 8
  br label %258

100:                                              ; preds = %93
  %101 = load i32, i32* %27, align 4
  %102 = and i32 %101, 255
  %103 = load i32, i32* %27, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @SVN_ERR_UTF8_GLOB, align 4
  %107 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* %27, align 4
  %109 = sext i32 %108 to i64
  %110 = call i32* @svn_error_createf(i32 %106, i32* null, i32 %107, i64 %109)
  store i32* %110, i32** %12, align 8
  br label %258

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %64
  store i64 0, i64* %24, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %114 = load i64, i64* %25, align 8
  %115 = add nsw i64 %114, 1
  %116 = call i32 @svn_membuf__ensure(%struct.TYPE_10__* %113, i64 %115)
  store i64 0, i64* %29, align 8
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %28, align 4
  br label %118

118:                                              ; preds = %217, %112
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %25, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %222

122:                                              ; preds = %118
  %123 = load i32*, i32** %26, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %27, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load i32, i32* %28, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %132 = load i64, i64* %24, align 8
  %133 = add nsw i64 %132, 1
  %134 = call i32 @svn_membuf__resize(%struct.TYPE_10__* %131, i64 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = bitcast i32* %137 to i8*
  %139 = load i64, i64* %24, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %24, align 8
  %141 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 92, i8* %141, align 1
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %28, align 4
  br label %216

143:                                              ; preds = %127, %122
  %144 = load i32, i32* %28, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %148 = load i32*, i32** %26, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @encode_ucs4(%struct.TYPE_10__* %147, i32 %149, i64* %24)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %28, align 4
  br label %215

153:                                              ; preds = %143
  %154 = load i32*, i32** %26, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 91
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32*, i32** %26, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 92
  br i1 %160, label %161, label %181

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %28, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %166 = load i64, i64* %24, align 8
  %167 = add nsw i64 %166, 1
  %168 = call i32 @svn_membuf__resize(%struct.TYPE_10__* %165, i64 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = bitcast i32* %171 to i8*
  %173 = load i64, i64* %24, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %24, align 8
  %175 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 92, i8* %175, align 1
  %176 = load i32, i32* @TRUE, align 4
  store i32 %176, i32* %28, align 4
  %177 = load i64, i64* %29, align 8
  %178 = add nsw i64 %177, -1
  store i64 %178, i64* %29, align 8
  %179 = load i32*, i32** %26, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 -1
  store i32* %180, i32** %26, align 8
  br label %217

181:                                              ; preds = %161, %157
  %182 = load i32*, i32** %26, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 37
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32*, i32** %26, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 95
  br i1 %188, label %189, label %208

189:                                              ; preds = %185, %181
  %190 = load i32*, i32** %26, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 37
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 42, i32 63
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %32, align 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %197 = load i64, i64* %24, align 8
  %198 = add nsw i64 %197, 1
  %199 = call i32 @svn_membuf__resize(%struct.TYPE_10__* %196, i64 %198)
  %200 = load i8, i8* %32, align 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = bitcast i32* %203 to i8*
  %205 = load i64, i64* %24, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %24, align 8
  %207 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %200, i8* %207, align 1
  br label %214

208:                                              ; preds = %185
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %210 = load i32*, i32** %26, align 8
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @encode_ucs4(%struct.TYPE_10__* %209, i32 %211, i64* %24)
  %213 = call i32 @SVN_ERR(i32 %212)
  br label %214

214:                                              ; preds = %208, %189
  br label %215

215:                                              ; preds = %214, %146
  br label %216

216:                                              ; preds = %215, %130
  br label %217

217:                                              ; preds = %216, %164
  %218 = load i64, i64* %29, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %29, align 8
  %220 = load i32*, i32** %26, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %26, align 8
  br label %118

222:                                              ; preds = %118
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %224 = load i64, i64* %24, align 8
  %225 = add nsw i64 %224, 1
  %226 = call i32 @svn_membuf__resize(%struct.TYPE_10__* %223, i64 %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = bitcast i32* %229 to i8*
  %231 = load i64, i64* %24, align 8
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8 0, i8* %232, align 1
  br label %233

233:                                              ; preds = %222, %50
  %234 = load i8*, i8** %16, align 8
  %235 = load i64, i64* %17, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %237 = call i32 @decompose_normalized(i64* %25, i8* %234, i64 %235, %struct.TYPE_10__* %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i64, i64* %25, align 8
  %244 = call i32 @svn_utf__encode_ucs4_string(%struct.TYPE_10__* %239, i32* %242, i64 %243, i64* %25)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @apr_fnmatch(i32* %248, i32* %251, i32 0)
  %253 = icmp ne i32 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load i32*, i32** %13, align 8
  store i32 %255, i32* %256, align 4
  %257 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %257, i32** %12, align 8
  br label %258

258:                                              ; preds = %233, %105, %96, %84, %38
  %259 = load i32*, i32** %12, align 8
  ret i32* %259
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @decompose_normalized(i64*, i8*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @svn_utf__encode_ucs4_string(%struct.TYPE_10__*, i32*, i64, i64*) #1

declare dso_local i32 @utf8proc_decompose(i8*, i64, i32*, i32, i32) #1

declare dso_local i32 @gettext(i32) #1

declare dso_local i32 @utf8proc_errmsg(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @svn_membuf__ensure(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @svn_membuf__resize(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @encode_ucs4(%struct.TYPE_10__*, i32, i64*) #1

declare dso_local i32 @apr_fnmatch(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
