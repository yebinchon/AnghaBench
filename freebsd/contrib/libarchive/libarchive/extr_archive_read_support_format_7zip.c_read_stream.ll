; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct._7zip = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_9__, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Malformed 7-Zip archive\00", align 1
@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Truncated 7-Zip file body\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i8**, i64, i64)* @read_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_stream(%struct.archive_read* %0, i8** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct._7zip*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._7zip*
  store %struct._7zip* %19, %struct._7zip** %10, align 8
  store i64 0, i64* %11, align 8
  %20 = load %struct._7zip*, %struct._7zip** %10, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %62

24:                                               ; preds = %4
  %25 = load %struct._7zip*, %struct._7zip** %10, align 8
  %26 = getelementptr inbounds %struct._7zip, %struct._7zip* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %31 = call i64 @extract_pack_stream(%struct.archive_read* %30, i32 0)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %12, align 8
  store i64 %35, i64* %5, align 8
  br label %251

36:                                               ; preds = %29
  %37 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @get_uncompressed_data(%struct.archive_read* %37, i8** %38, i64 %39, i64 %40)
  store i64 %41, i64* %5, align 8
  br label %251

42:                                               ; preds = %24
  %43 = load %struct._7zip*, %struct._7zip** %10, align 8
  %44 = getelementptr inbounds %struct._7zip, %struct._7zip* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %49 = call i64 @extract_pack_stream(%struct.archive_read* %48, i32 0)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %12, align 8
  store i64 %53, i64* %5, align 8
  br label %251

54:                                               ; preds = %47
  %55 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @get_uncompressed_data(%struct.archive_read* %55, i8** %56, i64 %57, i64 %58)
  store i64 %59, i64* %5, align 8
  br label %251

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  br label %68

62:                                               ; preds = %4
  %63 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @get_uncompressed_data(%struct.archive_read* %63, i8** %64, i64 %65, i64 %66)
  store i64 %67, i64* %5, align 8
  br label %251

68:                                               ; preds = %61
  %69 = load %struct._7zip*, %struct._7zip** %10, align 8
  %70 = getelementptr inbounds %struct._7zip, %struct._7zip* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %167

73:                                               ; preds = %68
  %74 = load %struct._7zip*, %struct._7zip** %10, align 8
  %75 = getelementptr inbounds %struct._7zip, %struct._7zip* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %80 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %79, i32 0, i32 0
  %81 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %82 = call i32 @archive_set_error(i32* %80, i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %83 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %83, i64* %5, align 8
  br label %251

84:                                               ; preds = %73
  %85 = load %struct._7zip*, %struct._7zip** %10, align 8
  %86 = getelementptr inbounds %struct._7zip, %struct._7zip* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %84
  %90 = load %struct._7zip*, %struct._7zip** %10, align 8
  %91 = getelementptr inbounds %struct._7zip, %struct._7zip* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct._7zip*, %struct._7zip** %10, align 8
  %96 = getelementptr inbounds %struct._7zip, %struct._7zip* %95, i32 0, i32 7
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %89
  %105 = load %struct._7zip*, %struct._7zip** %10, align 8
  %106 = getelementptr inbounds %struct._7zip, %struct._7zip* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct._7zip*, %struct._7zip** %10, align 8
  %109 = getelementptr inbounds %struct._7zip, %struct._7zip* %108, i32 0, i32 7
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %107, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %104, %89
  %115 = load %struct._7zip*, %struct._7zip** %10, align 8
  %116 = getelementptr inbounds %struct._7zip, %struct._7zip* %115, i32 0, i32 7
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct._7zip*, %struct._7zip** %10, align 8
  %121 = getelementptr inbounds %struct._7zip, %struct._7zip* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct._7zip*, %struct._7zip** %10, align 8
  %123 = getelementptr inbounds %struct._7zip, %struct._7zip* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load %struct._7zip*, %struct._7zip** %10, align 8
  %128 = getelementptr inbounds %struct._7zip, %struct._7zip* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %11, align 8
  br label %133

133:                                              ; preds = %114, %104, %84
  %134 = load %struct._7zip*, %struct._7zip** %10, align 8
  %135 = getelementptr inbounds %struct._7zip, %struct._7zip* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct._7zip*, %struct._7zip** %10, align 8
  %138 = getelementptr inbounds %struct._7zip, %struct._7zip* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp uge i64 %136, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i8**, i8*** %7, align 8
  store i8* null, i8** %144, align 8
  store i64 0, i64* %5, align 8
  br label %251

145:                                              ; preds = %133
  %146 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %147 = load %struct._7zip*, %struct._7zip** %10, align 8
  %148 = getelementptr inbounds %struct._7zip, %struct._7zip* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = load %struct._7zip*, %struct._7zip** %10, align 8
  %153 = getelementptr inbounds %struct._7zip, %struct._7zip* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i64 %154
  %156 = call i64 @setup_decode_folder(%struct.archive_read* %146, %struct.TYPE_10__* %155, i32 0)
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @ARCHIVE_OK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %161, i64* %5, align 8
  br label %251

162:                                              ; preds = %145
  %163 = load %struct._7zip*, %struct._7zip** %10, align 8
  %164 = getelementptr inbounds %struct._7zip, %struct._7zip* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %162, %68
  %168 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %169 = call i64 @seek_pack(%struct.archive_read* %168)
  store i64 %169, i64* %12, align 8
  %170 = load i64, i64* %12, align 8
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i64, i64* %12, align 8
  store i64 %173, i64* %5, align 8
  br label %251

174:                                              ; preds = %167
  %175 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %176 = call i64 @extract_pack_stream(%struct.archive_read* %175, i32 0)
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %12, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i64, i64* %12, align 8
  store i64 %180, i64* %5, align 8
  br label %251

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %244, %181
  %183 = load i64, i64* %11, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %245

185:                                              ; preds = %182
  %186 = load %struct._7zip*, %struct._7zip** %10, align 8
  %187 = getelementptr inbounds %struct._7zip, %struct._7zip* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %224

190:                                              ; preds = %185
  %191 = load %struct._7zip*, %struct._7zip** %10, align 8
  %192 = getelementptr inbounds %struct._7zip, %struct._7zip* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %197 = call i64 @extract_pack_stream(%struct.archive_read* %196, i32 0)
  store i64 %197, i64* %12, align 8
  %198 = load i64, i64* %12, align 8
  %199 = icmp slt i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i64, i64* %12, align 8
  store i64 %201, i64* %5, align 8
  br label %251

202:                                              ; preds = %195
  br label %223

203:                                              ; preds = %190
  %204 = load %struct._7zip*, %struct._7zip** %10, align 8
  %205 = getelementptr inbounds %struct._7zip, %struct._7zip* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %210 = call i64 @extract_pack_stream(%struct.archive_read* %209, i32 0)
  store i64 %210, i64* %12, align 8
  %211 = load i64, i64* %12, align 8
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = load i64, i64* %12, align 8
  store i64 %214, i64* %5, align 8
  br label %251

215:                                              ; preds = %208
  br label %222

216:                                              ; preds = %203
  %217 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %218 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %217, i32 0, i32 0
  %219 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %220 = call i32 @archive_set_error(i32* %218, i32 %219, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %221 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %221, i64* %5, align 8
  br label %251

222:                                              ; preds = %215
  br label %223

223:                                              ; preds = %222, %202
  br label %224

224:                                              ; preds = %223, %185
  %225 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %226 = load i8**, i8*** %7, align 8
  %227 = load i64, i64* %11, align 8
  %228 = call i64 @get_uncompressed_data(%struct.archive_read* %225, i8** %226, i64 %227, i64 0)
  store i64 %228, i64* %13, align 8
  %229 = load i64, i64* %13, align 8
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = load i64, i64* %13, align 8
  store i64 %232, i64* %5, align 8
  br label %251

233:                                              ; preds = %224
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* %11, align 8
  %236 = sub nsw i64 %235, %234
  store i64 %236, i64* %11, align 8
  %237 = load %struct._7zip*, %struct._7zip** %10, align 8
  %238 = getelementptr inbounds %struct._7zip, %struct._7zip* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %243 = call i32 @read_consume(%struct.archive_read* %242)
  br label %244

244:                                              ; preds = %241, %233
  br label %182

245:                                              ; preds = %182
  %246 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %247 = load i8**, i8*** %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = load i64, i64* %9, align 8
  %250 = call i64 @get_uncompressed_data(%struct.archive_read* %246, i8** %247, i64 %248, i64 %249)
  store i64 %250, i64* %5, align 8
  br label %251

251:                                              ; preds = %245, %231, %216, %213, %200, %179, %172, %160, %143, %78, %62, %54, %52, %36, %34
  %252 = load i64, i64* %5, align 8
  ret i64 %252
}

declare dso_local i64 @extract_pack_stream(%struct.archive_read*, i32) #1

declare dso_local i64 @get_uncompressed_data(%struct.archive_read*, i8**, i64, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @setup_decode_folder(%struct.archive_read*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @seek_pack(%struct.archive_read*) #1

declare dso_local i32 @read_consume(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
