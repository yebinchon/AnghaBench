; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_process_linenos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_process_linenos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i8*, %struct.subfile* }
%struct.subfile = type { %struct.linetable* }
%struct.linetable = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.linetable*, %struct.linetable* }
%struct.coff_symfile_info = type { i32 }
%struct.symloc = type { i32 }
%struct.TYPE_10__ = type { i32 }

@this_symtab_psymtab = common dso_local global %struct.TYPE_7__* null, align 8
@inclIndx = common dso_local global i32 0, align 4
@inclTable = common dso_local global %struct.TYPE_8__* null, align 8
@current_subfile = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @process_linenos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_linenos(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.subfile, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.subfile*, align 8
  %13 = alloca %struct.linetable*, align 8
  %14 = alloca %struct.linetable*, align 8
  %15 = alloca %struct.linetable*, align 8
  %16 = alloca %struct.linetable*, align 8
  %17 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_symtab_psymtab, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.coff_symfile_info*
  %24 = getelementptr inbounds %struct.coff_symfile_info, %struct.coff_symfile_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_symtab_psymtab, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.symloc*
  %30 = getelementptr inbounds %struct.symloc, %struct.symloc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %272

35:                                               ; preds = %2
  %36 = call i32 @memset(%struct.subfile* %8, i8 signext 0, i32 8)
  %37 = load i32, i32* @inclIndx, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @enter_line_range(%struct.subfile* %8, i32 %40, i32 0, i32 %41, i32 %42, i32* %9)
  br label %143

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @this_symtab_psymtab, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_10__* @coff_data(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %127, %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @inclIndx, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %130

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %58, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @enter_line_range(%struct.subfile* %8, i32 %67, i32 %75, i32 %76, i32 0, i32* %9)
  br label %78

78:                                               ; preds = %66, %57
  %79 = call i64 @xmalloc(i32 8)
  %80 = inttoptr i64 %79 to %struct.subfile*
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  store %struct.subfile* %80, %struct.subfile** %85, align 8
  store %struct.subfile* %80, %struct.subfile** %12, align 8
  %86 = load %struct.subfile*, %struct.subfile** %12, align 8
  %87 = call i32 @memset(%struct.subfile* %86, i8 signext 0, i32 8)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32* %92, i32** %10, align 8
  %93 = load %struct.subfile*, %struct.subfile** %12, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @enter_line_range(%struct.subfile* %93, i32 %99, i32 %105, i32 %106, i32 0, i32* %107)
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp sle i32 %109, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %78
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %123, %124
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %117, %78
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %53

130:                                              ; preds = %53
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @enter_line_range(%struct.subfile* %8, i32 %138, i32 0, i32 %139, i32 %140, i32* %9)
  br label %142

142:                                              ; preds = %137, %130
  br label %143

143:                                              ; preds = %142, %39
  %144 = getelementptr inbounds %struct.subfile, %struct.subfile* %8, i32 0, i32 0
  %145 = load %struct.linetable*, %struct.linetable** %144, align 8
  %146 = icmp ne %struct.linetable* %145, null
  br i1 %146, label %147, label %182

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.subfile, %struct.subfile* %8, i32 0, i32 0
  %149 = load %struct.linetable*, %struct.linetable** %148, align 8
  store %struct.linetable* %149, %struct.linetable** %14, align 8
  %150 = load %struct.linetable*, %struct.linetable** %14, align 8
  %151 = call %struct.linetable* @arrange_linetable(%struct.linetable* %150)
  store %struct.linetable* %151, %struct.linetable** %13, align 8
  %152 = load %struct.linetable*, %struct.linetable** %14, align 8
  %153 = load %struct.linetable*, %struct.linetable** %13, align 8
  %154 = icmp eq %struct.linetable* %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %147
  %156 = load %struct.linetable*, %struct.linetable** %14, align 8
  %157 = load %struct.linetable*, %struct.linetable** %14, align 8
  %158 = getelementptr inbounds %struct.linetable, %struct.linetable* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = add i64 4, %161
  %163 = trunc i64 %162 to i32
  %164 = call i64 @xrealloc(%struct.linetable* %156, i32 %163)
  %165 = inttoptr i64 %164 to %struct.linetable*
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  store %struct.linetable* %165, %struct.linetable** %167, align 8
  br label %174

168:                                              ; preds = %147
  %169 = load %struct.linetable*, %struct.linetable** %14, align 8
  %170 = call i32 @xfree(%struct.linetable* %169)
  %171 = load %struct.linetable*, %struct.linetable** %13, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  store %struct.linetable* %171, %struct.linetable** %173, align 8
  br label %174

174:                                              ; preds = %168, %155
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.linetable*, %struct.linetable** %176, align 8
  %178 = getelementptr inbounds %struct.linetable, %struct.linetable* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %174, %143
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %268, %182
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @inclIndx, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %271

187:                                              ; preds = %183
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  %193 = load %struct.subfile*, %struct.subfile** %192, align 8
  %194 = getelementptr inbounds %struct.subfile, %struct.subfile* %193, i32 0, i32 0
  %195 = load %struct.linetable*, %struct.linetable** %194, align 8
  %196 = icmp ne %struct.linetable* %195, null
  br i1 %196, label %197, label %267

197:                                              ; preds = %187
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 4
  %203 = load %struct.subfile*, %struct.subfile** %202, align 8
  %204 = getelementptr inbounds %struct.subfile, %struct.subfile* %203, i32 0, i32 0
  %205 = load %struct.linetable*, %struct.linetable** %204, align 8
  store %struct.linetable* %205, %struct.linetable** %16, align 8
  %206 = load %struct.linetable*, %struct.linetable** %16, align 8
  %207 = call %struct.linetable* @arrange_linetable(%struct.linetable* %206)
  store %struct.linetable* %207, %struct.linetable** %15, align 8
  %208 = call i32 (...) @push_subfile()
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i8* @strrchr(i8* %214, i8 signext 46)
  store i8* %215, i8** %17, align 8
  %216 = load i8*, i8** %17, align 8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %197
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %219

219:                                              ; preds = %218, %197
  %220 = load i8*, i8** %17, align 8
  %221 = call i32 @start_subfile(i8* %220, i8* null)
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load %struct.linetable*, %struct.linetable** %223, align 8
  %225 = call i32 @xfree(%struct.linetable* %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** @inclTable, align 8
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = call %struct.linetable* @xstrdup(i8* %231)
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  store %struct.linetable* %232, %struct.linetable** %234, align 8
  %235 = load %struct.linetable*, %struct.linetable** %16, align 8
  %236 = load %struct.linetable*, %struct.linetable** %15, align 8
  %237 = icmp eq %struct.linetable* %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %219
  %239 = load %struct.linetable*, %struct.linetable** %16, align 8
  %240 = load %struct.linetable*, %struct.linetable** %16, align 8
  %241 = getelementptr inbounds %struct.linetable, %struct.linetable* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = add i64 4, %244
  %246 = trunc i64 %245 to i32
  %247 = call i64 @xrealloc(%struct.linetable* %239, i32 %246)
  %248 = inttoptr i64 %247 to %struct.linetable*
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store %struct.linetable* %248, %struct.linetable** %250, align 8
  br label %257

251:                                              ; preds = %219
  %252 = load %struct.linetable*, %struct.linetable** %16, align 8
  %253 = call i32 @xfree(%struct.linetable* %252)
  %254 = load %struct.linetable*, %struct.linetable** %15, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  store %struct.linetable* %254, %struct.linetable** %256, align 8
  br label %257

257:                                              ; preds = %251, %238
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load %struct.linetable*, %struct.linetable** %259, align 8
  %261 = getelementptr inbounds %struct.linetable, %struct.linetable* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current_subfile, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = call i8* (...) @pop_subfile()
  %266 = call i32 @start_subfile(i8* %265, i8* null)
  br label %267

267:                                              ; preds = %257, %187
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %6, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %6, align 4
  br label %183

271:                                              ; preds = %183
  br label %272

272:                                              ; preds = %271, %34
  store i32 0, i32* @inclIndx, align 4
  %273 = call i32 @memset(%struct.subfile* %8, i8 signext 0, i32 8)
  ret void
}

declare dso_local i32 @memset(%struct.subfile*, i8 signext, i32) #1

declare dso_local i32 @enter_line_range(%struct.subfile*, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @coff_data(i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local %struct.linetable* @arrange_linetable(%struct.linetable*) #1

declare dso_local i64 @xrealloc(%struct.linetable*, i32) #1

declare dso_local i32 @xfree(%struct.linetable*) #1

declare dso_local i32 @push_subfile(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @start_subfile(i8*, i8*) #1

declare dso_local %struct.linetable* @xstrdup(i8*) #1

declare dso_local i8* @pop_subfile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
