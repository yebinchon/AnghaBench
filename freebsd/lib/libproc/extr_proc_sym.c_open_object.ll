; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_open_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_sym.c_open_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { %struct.TYPE_7__, %struct.file_info* }
%struct.TYPE_7__ = type { i8* }
%struct.file_info = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ERROR: open %s failed\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ERROR: elf_begin() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: elf_getehdr() failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ERROR: gelf_getshdr failed: %s\00", align 1
@SHT_PROGBITS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"ERROR: elf_getshdrstrndx failed: %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c".gnu_debuglink\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ERROR: elf_getdata failed: %s\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"ERROR: debuglink section is too small (%zd bytes)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"ERROR: no null-terminator in gnu_debuglink section\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"/.debug\00", align 1
@PATH_DEBUG_DIR = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"ERROR: elf_begin failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*)* @open_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_object(%struct.map_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.file_info*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load %struct.map_info*, %struct.map_info** %3, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

33:                                               ; preds = %1
  %34 = load %struct.map_info*, %struct.map_info** %3, align 8
  %35 = getelementptr inbounds %struct.map_info, %struct.map_info* %34, i32 0, i32 1
  %36 = load %struct.file_info*, %struct.file_info** %35, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

41:                                               ; preds = %33
  %42 = load %struct.map_info*, %struct.map_info** %3, align 8
  %43 = getelementptr inbounds %struct.map_info, %struct.map_info* %42, i32 0, i32 1
  %44 = load %struct.file_info*, %struct.file_info** %43, align 8
  store %struct.file_info* %44, %struct.file_info** %11, align 8
  %45 = load %struct.map_info*, %struct.map_info** %3, align 8
  %46 = getelementptr inbounds %struct.map_info, %struct.map_info* %45, i32 0, i32 0
  store %struct.TYPE_7__* %46, %struct.TYPE_7__** %12, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* @O_RDONLY, align 4
  %51 = load i32, i32* @O_CLOEXEC, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @open(i8* %49, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

60:                                               ; preds = %41
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @ELF_C_READ, align 4
  %63 = call i32* @elf_begin(i32 %61, i32 %62, i32* null)
  store i32* %63, i32** %7, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = call i32 @elf_errmsg(i32 -1)
  %67 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %246

68:                                               ; preds = %60
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.file_info*, %struct.file_info** %11, align 8
  %71 = getelementptr inbounds %struct.file_info, %struct.file_info* %70, i32 0, i32 2
  %72 = call i32* @gelf_getehdr(i32* %69, i32* %71)
  %73 = load %struct.file_info*, %struct.file_info** %11, align 8
  %74 = getelementptr inbounds %struct.file_info, %struct.file_info* %73, i32 0, i32 2
  %75 = icmp ne i32* %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = call i32 @elf_errmsg(i32 -1)
  %78 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %246

79:                                               ; preds = %68
  store i32* null, i32** %10, align 8
  br label %80

80:                                               ; preds = %118, %112, %97, %79
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32* @elf_nextscn(i32* %81, i32* %82)
  store i32* %83, i32** %10, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  %86 = load i32*, i32** %10, align 8
  %87 = call %struct.TYPE_8__* @gelf_getshdr(i32* %86, %struct.TYPE_8__* %6)
  %88 = icmp ne %struct.TYPE_8__* %87, %6
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = call i32 @elf_errmsg(i32 -1)
  %91 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %246

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SHT_PROGBITS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %80

98:                                               ; preds = %92
  %99 = load i32*, i32** %7, align 8
  %100 = call i64 @elf_getshdrstrndx(i32* %99, i64* %15)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = call i32 @elf_errmsg(i32 -1)
  %104 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %246

105:                                              ; preds = %98
  %106 = load i32*, i32** %7, align 8
  %107 = load i64, i64* %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @elf_strptr(i32* %106, i64 %107, i32 %109)
  store i8* %110, i8** %14, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %80

113:                                              ; preds = %105
  %114 = load i8*, i8** %14, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %119

118:                                              ; preds = %113
  br label %80

119:                                              ; preds = %117, %80
  %120 = load i32*, i32** %10, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %214

123:                                              ; preds = %119
  %124 = load i32*, i32** %10, align 8
  %125 = call %struct.TYPE_9__* @elf_getdata(i32* %124, i32* null)
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %9, align 8
  %126 = icmp eq %struct.TYPE_9__* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = call i32 @elf_errmsg(i32 -1)
  %129 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  br label %246

130:                                              ; preds = %123
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = icmp ult i64 %134, 5
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  br label %214

141:                                              ; preds = %130
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @strnlen(i8* %144, i32 %147)
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = sub i64 %153, 4
  %155 = icmp uge i64 %149, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %141
  %157 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %214

158:                                              ; preds = %141
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %13, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = getelementptr inbounds i8, i8* %169, i64 -4
  %171 = call i32 @memcpy(i32* %16, i8* %170, i32 4)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = trunc i64 %21 to i32
  %176 = call i32 @strlcpy(i8* %23, i8* %174, i32 %175)
  %177 = call i32 @dirname(i8* %23)
  %178 = load i8*, i8** %13, align 8
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @open_debug_file(i8* %23, i8* %178, i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %158
  br label %223

183:                                              ; preds = %158
  %184 = trunc i64 %21 to i32
  %185 = call i32 @strlcat(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  %186 = sext i32 %185 to i64
  %187 = icmp ult i64 %186, %21
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i8*, i8** %13, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @open_debug_file(i8* %23, i8* %189, i32 %190)
  store i32 %191, i32* %18, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %223

194:                                              ; preds = %188, %183
  %195 = trunc i64 %21 to i32
  %196 = load i8*, i8** @PATH_DEBUG_DIR, align 8
  %197 = call i32 @snprintf(i8* %23, i32 %195, i8* %196)
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = trunc i64 %21 to i32
  %202 = call i32 @strlcat(i8* %23, i8* %200, i32 %201)
  %203 = sext i32 %202 to i64
  %204 = icmp ult i64 %203, %21
  br i1 %204, label %205, label %213

205:                                              ; preds = %194
  %206 = call i32 @dirname(i8* %23)
  %207 = load i8*, i8** %13, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @open_debug_file(i8* %23, i8* %207, i32 %208)
  store i32 %209, i32* %18, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %223

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %194
  br label %214

214:                                              ; preds = %213, %156, %136, %122
  %215 = load i32*, i32** %7, align 8
  %216 = load %struct.file_info*, %struct.file_info** %11, align 8
  %217 = getelementptr inbounds %struct.file_info, %struct.file_info* %216, i32 0, i32 1
  store i32* %215, i32** %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load %struct.file_info*, %struct.file_info** %11, align 8
  %220 = getelementptr inbounds %struct.file_info, %struct.file_info* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.file_info*, %struct.file_info** %11, align 8
  %222 = call i32 @load_symtabs(%struct.file_info* %221)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

223:                                              ; preds = %211, %193, %182
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* @ELF_C_READ, align 4
  %226 = call i32* @elf_begin(i32 %224, i32 %225, i32* null)
  store i32* %226, i32** %8, align 8
  %227 = icmp eq i32* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = call i32 @elf_errmsg(i32 -1)
  %230 = call i32 (i8*, ...) @DPRINTFX(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @close(i32 %231)
  br label %246

233:                                              ; preds = %223
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @elf_end(i32* %234)
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @close(i32 %236)
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.file_info*, %struct.file_info** %11, align 8
  %240 = getelementptr inbounds %struct.file_info, %struct.file_info* %239, i32 0, i32 1
  store i32* %238, i32** %240, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load %struct.file_info*, %struct.file_info** %11, align 8
  %243 = getelementptr inbounds %struct.file_info, %struct.file_info* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.file_info*, %struct.file_info** %11, align 8
  %245 = call i32 @load_symtabs(%struct.file_info* %244)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

246:                                              ; preds = %228, %127, %102, %89, %76, %65
  %247 = load i32*, i32** %7, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32*, i32** %7, align 8
  %251 = call i32 @elf_end(i32* %250)
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %17, align 4
  %254 = call i32 @close(i32 %253)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %255

255:                                              ; preds = %252, %233, %214, %55, %40, %32
  %256 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @DPRINTF(i8*, i8*) #2

declare dso_local i32* @elf_begin(i32, i32, i32*) #2

declare dso_local i32 @DPRINTFX(i8*, ...) #2

declare dso_local i32 @elf_errmsg(i32) #2

declare dso_local i32* @gelf_getehdr(i32*, i32*) #2

declare dso_local i32* @elf_nextscn(i32*, i32*) #2

declare dso_local %struct.TYPE_8__* @gelf_getshdr(i32*, %struct.TYPE_8__*) #2

declare dso_local i64 @elf_getshdrstrndx(i32*, i64*) #2

declare dso_local i8* @elf_strptr(i32*, i64, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local %struct.TYPE_9__* @elf_getdata(i32*, i32*) #2

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @dirname(i8*) #2

declare dso_local i32 @open_debug_file(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @load_symtabs(%struct.file_info*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @elf_end(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
