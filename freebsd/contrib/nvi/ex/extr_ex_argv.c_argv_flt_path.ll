; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_flt_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_argv.c_argv_flt_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.dirent = type { i8*, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@argv_comp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @argv_flt_path(i32* %0, %struct.TYPE_8__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dirent*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %23, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call %struct.TYPE_7__* @EXP(i32* %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %12, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @v_wstrdup(i32* %29, i8* %30, i64 %31)
  store i8* %32, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %269

35:                                               ; preds = %4
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @STRRCHR(i8* %36, i8 signext 47)
  store i8* %37, i8** %18, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 126
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @argv_flt_user(i32* %45, %struct.TYPE_8__* %46, i8* %47, i64 %48)
  store i32 %49, i32* %26, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i32, i32* %26, align 4
  store i32 %52, i32* %5, align 4
  br label %269

53:                                               ; preds = %39
  %54 = call i8* @L(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %54, i8** %17, align 8
  store i64 0, i64* %14, align 8
  %55 = load i8*, i8** %8, align 8
  store i8* %55, i8** %19, align 8
  br label %73

56:                                               ; preds = %35
  %57 = load i8*, i8** %18, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i8* @L(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %61, i8** %17, align 8
  store i64 1, i64* %14, align 8
  br label %70

62:                                               ; preds = %56
  %63 = load i8*, i8** %18, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %8, align 8
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %62, %60
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8* %72, i8** %19, align 8
  br label %73

73:                                               ; preds = %70, %53
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, 1
  %78 = load i8*, i8** %22, align 8
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @INT2CHAR(i32* %74, i8* %75, i64 %77, i8* %78, i64 %79)
  %81 = load i8*, i8** %22, align 8
  %82 = call i8* @expanduser(i8* %81)
  store i8* %82, i8** %23, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i8*, i8** %23, align 8
  store i8* %85, i8** %22, align 8
  br label %86

86:                                               ; preds = %84, %73
  %87 = load i8*, i8** %22, align 8
  %88 = call i32* @opendir(i8* %87)
  store i32* %88, i32** %11, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i8*, i8** %23, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @free(i8* %93)
  store i32 1, i32* %5, align 4
  br label %269

95:                                               ; preds = %86
  %96 = load i8*, i8** %23, align 8
  %97 = call i32 @free(i8* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = call i64 @STRLEN(i8* %100)
  %102 = load i8*, i8** %22, align 8
  %103 = load i64, i64* %16, align 8
  %104 = call i32 @INT2CHAR(i32* %98, i8* %99, i64 %101, i8* %102, i64 %103)
  %105 = load i32*, i32** %6, align 8
  %106 = load i8*, i8** %22, align 8
  %107 = load i64, i64* %16, align 8
  %108 = call i8* @v_strdup(i32* %105, i8* %106, i64 %107)
  store i8* %108, i8** %21, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @free(i8* %111)
  store i32 1, i32* %5, align 4
  br label %269

113:                                              ; preds = %95
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %215, %152, %132, %113
  %118 = load i32*, i32** %11, align 8
  %119 = call %struct.dirent* @readdir(i32* %118)
  store %struct.dirent* %119, %struct.dirent** %10, align 8
  %120 = icmp ne %struct.dirent* %119, null
  br i1 %120, label %121, label %249

121:                                              ; preds = %117
  %122 = load i64, i64* %16, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load %struct.dirent*, %struct.dirent** %10, align 8
  %126 = getelementptr inbounds %struct.dirent, %struct.dirent* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 46
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %117

133:                                              ; preds = %124
  %134 = load %struct.dirent*, %struct.dirent** %10, align 8
  %135 = getelementptr inbounds %struct.dirent, %struct.dirent* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %15, align 8
  br label %154

137:                                              ; preds = %121
  %138 = load %struct.dirent*, %struct.dirent** %10, align 8
  %139 = getelementptr inbounds %struct.dirent, %struct.dirent* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %137
  %145 = load %struct.dirent*, %struct.dirent** %10, align 8
  %146 = getelementptr inbounds %struct.dirent, %struct.dirent* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %21, align 8
  %149 = load i64, i64* %16, align 8
  %150 = call i64 @memcmp(i8* %147, i8* %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %137
  br label %117

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153, %133
  %155 = load i32*, i32** %6, align 8
  %156 = load %struct.dirent*, %struct.dirent** %10, align 8
  %157 = getelementptr inbounds %struct.dirent, %struct.dirent* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load i64, i64* %15, align 8
  %160 = add i64 %159, 1
  %161 = load i8*, i8** %24, align 8
  %162 = load i64, i64* %25, align 8
  %163 = call i32 @CHAR2INT(i32* %155, i8* %158, i64 %160, i8* %161, i64 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i64, i64* %14, align 8
  %166 = load i64, i64* %25, align 8
  %167 = add i64 %165, %166
  %168 = add i64 %167, 1
  %169 = call i32 @argv_alloc(i32* %164, i64 %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %172, i64 %176
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %20, align 8
  %181 = load i64, i64* %14, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %154
  %184 = load i8*, i8** %20, align 8
  %185 = load i8*, i8** %17, align 8
  %186 = load i64, i64* %14, align 8
  %187 = call i32 @MEMCPY(i8* %184, i8* %185, i64 %186)
  %188 = load i64, i64* %14, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 %188
  store i8* %190, i8** %20, align 8
  %191 = load i64, i64* %14, align 8
  %192 = icmp ugt i64 %191, 1
  br i1 %192, label %199, label %193

193:                                              ; preds = %183
  %194 = load i8*, i8** %17, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 0
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 47
  br i1 %198, label %199, label %202

199:                                              ; preds = %193, %183
  %200 = load i8*, i8** %20, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %20, align 8
  store i8 47, i8* %200, align 1
  br label %202

202:                                              ; preds = %199, %193
  %203 = load i64, i64* %14, align 8
  %204 = add i64 %203, 1
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %207, i64 %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i64 %204, i64* %214, align 8
  br label %215

215:                                              ; preds = %202, %154
  %216 = load i8*, i8** %20, align 8
  %217 = load i8*, i8** %24, align 8
  %218 = load i64, i64* %25, align 8
  %219 = call i32 @MEMCPY(i8* %216, i8* %217, i64 %218)
  %220 = load i64, i64* %25, align 8
  %221 = sub i64 %220, 1
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %223, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %224, i64 %228
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %232, %221
  store i64 %233, i64* %231, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %239, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  store %struct.TYPE_9__** %240, %struct.TYPE_9__*** %242, align 8
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  br label %117

249:                                              ; preds = %117
  %250 = load i32*, i32** %11, align 8
  %251 = call i32 @closedir(i32* %250)
  %252 = load i8*, i8** %21, align 8
  %253 = call i32 @free(i8* %252)
  %254 = load i8*, i8** %8, align 8
  %255 = call i32 @free(i8* %254)
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %258, i64 %260
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sub nsw i32 %264, %265
  %267 = load i32, i32* @argv_comp, align 4
  %268 = call i32 @qsort(%struct.TYPE_9__** %261, i32 %266, i32 8, i32 %267)
  store i32 0, i32* %5, align 4
  br label %269

269:                                              ; preds = %249, %110, %90, %44, %34
  %270 = load i32, i32* %5, align 4
  ret i32 %270
}

declare dso_local %struct.TYPE_7__* @EXP(i32*) #1

declare dso_local i8* @v_wstrdup(i32*, i8*, i64) #1

declare dso_local i8* @STRRCHR(i8*, i8 signext) #1

declare dso_local i32 @argv_flt_user(i32*, %struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @L(i8*) #1

declare dso_local i32 @INT2CHAR(i32*, i8*, i64, i8*, i64) #1

declare dso_local i8* @expanduser(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i64 @STRLEN(i8*) #1

declare dso_local i8* @v_strdup(i32*, i8*, i64) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @CHAR2INT(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @argv_alloc(i32*, i64) #1

declare dso_local i32 @MEMCPY(i8*, i8*, i64) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_9__**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
