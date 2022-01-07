; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_regcache.c_regcache_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regcache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.gdbarch* }
%struct.gdbarch = type { i32 }
%struct.ui_file = type { i32 }
%struct.cleanup = type { i32 }
%struct.reggroup = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" %-10s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %4s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Nr\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Rel\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" %6s  \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %6ld\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"*%d\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c" %5s \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %5ld\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@regcache_dump.blt = internal constant [13 x i8] c"builtin_type\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c" %-15s\00", align 1
@regcache_dump_raw = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"Raw value\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"<cooked>\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@TARGET_BYTE_ORDER = common dso_local global i32 0, align 4
@regcache_dump_cooked = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"Cooked value\00", align 1
@regcache_dump_groups = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"Groups\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"*%d: Inconsistent register sizes.\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"*%d: Inconsistent register offsets.\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"*%d: Register type's name NULL.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regcache*, %struct.ui_file*, i32)* @regcache_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regcache_dump(%struct.regcache* %0, %struct.ui_file* %1, i32 %2) #0 {
  %4 = alloca %struct.regcache*, align 8
  %5 = alloca %struct.ui_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.gdbarch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.reggroup*, align 8
  store %struct.regcache* %0, %struct.regcache** %4, align 8
  store %struct.ui_file* %1, %struct.ui_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i32, i32* @null_cleanup, align 4
  %23 = call %struct.cleanup* @make_cleanup(i32 %22, i8* null)
  store %struct.cleanup* %23, %struct.cleanup** %7, align 8
  %24 = load %struct.regcache*, %struct.regcache** %4, align 8
  %25 = getelementptr inbounds %struct.regcache, %struct.regcache* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load %struct.gdbarch*, %struct.gdbarch** %27, align 8
  store %struct.gdbarch* %28, %struct.gdbarch** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %29 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %15, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %16, align 8
  %33 = load %struct.regcache*, %struct.regcache** %4, align 8
  %34 = getelementptr inbounds %struct.regcache, %struct.regcache* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NUM_REGS, align 4
  %39 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp eq i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @gdb_assert(i32 %42)
  store i32 -1, i32* %9, align 4
  br label %44

44:                                               ; preds = %434, %3
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.regcache*, %struct.regcache** %4, align 8
  %47 = getelementptr inbounds %struct.regcache, %struct.regcache* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %437

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %57 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %76

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @REGISTER_NAME(i32 %59)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  br label %72

64:                                               ; preds = %58
  %65 = load i8*, i8** %17, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %63
  %73 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %55
  %77 = load i32, i32* %9, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %81 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %86

82:                                               ; preds = %76
  %83 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %91 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %107

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @NUM_REGS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %106

100:                                              ; preds = %92
  %101 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @NUM_REGS, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %106, %89
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %112 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %211

113:                                              ; preds = %107
  %114 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %115 = load %struct.regcache*, %struct.regcache** %4, align 8
  %116 = getelementptr inbounds %struct.regcache, %struct.regcache* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load i64, i64* %14, align 8
  %126 = load %struct.regcache*, %struct.regcache** %4, align 8
  %127 = getelementptr inbounds %struct.regcache, %struct.regcache* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %125, %135
  br i1 %136, label %177, label %137

137:                                              ; preds = %113
  %138 = load i64, i64* %14, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %139)
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %177, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %187

145:                                              ; preds = %142
  %146 = load %struct.regcache*, %struct.regcache** %4, align 8
  %147 = getelementptr inbounds %struct.regcache, %struct.regcache* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 5
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.regcache*, %struct.regcache** %4, align 8
  %156 = getelementptr inbounds %struct.regcache, %struct.regcache* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.regcache*, %struct.regcache** %4, align 8
  %166 = getelementptr inbounds %struct.regcache, %struct.regcache* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 6
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %164, %174
  %176 = icmp ne i32 %154, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %145, %137, %113
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %185)
  br label %190

187:                                              ; preds = %145, %142
  %188 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %189 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %183
  %191 = load %struct.regcache*, %struct.regcache** %4, align 8
  %192 = getelementptr inbounds %struct.regcache, %struct.regcache* %191, i32 0, i32 0
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.regcache*, %struct.regcache** %4, align 8
  %201 = getelementptr inbounds %struct.regcache, %struct.regcache* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %199, %208
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %190, %110
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %216 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %287

217:                                              ; preds = %211
  %218 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %219 = load %struct.regcache*, %struct.regcache** %4, align 8
  %220 = getelementptr inbounds %struct.regcache, %struct.regcache* %219, i32 0, i32 0
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %227)
  %229 = load %struct.regcache*, %struct.regcache** %4, align 8
  %230 = getelementptr inbounds %struct.regcache, %struct.regcache* %229, i32 0, i32 0
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 6
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %238)
  %240 = icmp ne i32 %237, %239
  br i1 %240, label %273, label %241

241:                                              ; preds = %217
  %242 = load %struct.regcache*, %struct.regcache** %4, align 8
  %243 = getelementptr inbounds %struct.regcache, %struct.regcache* %242, i32 0, i32 0
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32 %251)
  %253 = icmp ne i32 %250, %252
  br i1 %253, label %273, label %254

254:                                              ; preds = %241
  %255 = load %struct.regcache*, %struct.regcache** %4, align 8
  %256 = getelementptr inbounds %struct.regcache, %struct.regcache* %255, i32 0, i32 0
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 6
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.regcache*, %struct.regcache** %4, align 8
  %265 = getelementptr inbounds %struct.regcache, %struct.regcache* %264, i32 0, i32 0
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 7
  %268 = load %struct.gdbarch*, %struct.gdbarch** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @register_type(%struct.gdbarch* %268, i32 %269)
  %271 = call i32 @TYPE_LENGTH(i32 %270)
  %272 = icmp ne i32 %263, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %254, %241, %217
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %276, %273
  %280 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %281 = load i32, i32* %11, align 4
  %282 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %281)
  br label %286

283:                                              ; preds = %254
  %284 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %285 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %284, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %279
  br label %287

287:                                              ; preds = %286, %214
  %288 = load i32, i32* %9, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %18, align 8
  br label %326

291:                                              ; preds = %287
  %292 = load %struct.regcache*, %struct.regcache** %4, align 8
  %293 = getelementptr inbounds %struct.regcache, %struct.regcache* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 7
  %296 = load %struct.gdbarch*, %struct.gdbarch** %295, align 8
  %297 = load i32, i32* %9, align 4
  %298 = call i32 @register_type(%struct.gdbarch* %296, i32 %297)
  %299 = call i8* @TYPE_NAME(i32 %298)
  store i8* %299, i8** %18, align 8
  %300 = load i8*, i8** %18, align 8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %315

302:                                              ; preds = %291
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %10, align 4
  store i32 %307, i32* %13, align 4
  br label %308

308:                                              ; preds = %305, %302
  %309 = load i32, i32* %13, align 4
  %310 = call i32 @xasprintf(i8** %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @xfree, align 4
  %312 = load i8*, i8** %19, align 8
  %313 = call %struct.cleanup* @make_cleanup(i32 %311, i8* %312)
  %314 = load i8*, i8** %19, align 8
  store i8* %314, i8** %18, align 8
  br label %315

315:                                              ; preds = %308, %291
  %316 = load i8*, i8** %18, align 8
  %317 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @regcache_dump.blt, i64 0, i64 0))
  %318 = call i64 @strncmp(i8* %316, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @regcache_dump.blt, i64 0, i64 0), i32 %317)
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @regcache_dump.blt, i64 0, i64 0))
  %322 = load i8*, i8** %18, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  store i8* %324, i8** %18, align 8
  br label %325

325:                                              ; preds = %320, %315
  br label %326

326:                                              ; preds = %325, %290
  %327 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %328 = load i8*, i8** %18, align 8
  %329 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %327, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %328)
  %330 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %331 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* @regcache_dump_raw, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %374

335:                                              ; preds = %326
  %336 = load i32, i32* %9, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %340 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %339, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %373

341:                                              ; preds = %335
  %342 = load i32, i32* %9, align 4
  %343 = load %struct.regcache*, %struct.regcache** %4, align 8
  %344 = getelementptr inbounds %struct.regcache, %struct.regcache* %343, i32 0, i32 0
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = icmp sge i32 %342, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %341
  %350 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %351 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %350, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  br label %372

352:                                              ; preds = %341
  %353 = load %struct.regcache*, %struct.regcache** %4, align 8
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @regcache_valid_p(%struct.regcache* %353, i32 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %360, label %357

357:                                              ; preds = %352
  %358 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %359 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %358, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %371

360:                                              ; preds = %352
  %361 = load %struct.regcache*, %struct.regcache** %4, align 8
  %362 = load i32, i32* %9, align 4
  %363 = call i32 @regcache_raw_read(%struct.regcache* %361, i32 %362, i8* %32)
  %364 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %365 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %364, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %366 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %367 = load i32, i32* @TARGET_BYTE_ORDER, align 4
  %368 = load i32, i32* %9, align 4
  %369 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %368)
  %370 = call i32 @dump_endian_bytes(%struct.ui_file* %366, i32 %367, i8* %32, i32 %369)
  br label %371

371:                                              ; preds = %360, %357
  br label %372

372:                                              ; preds = %371, %349
  br label %373

373:                                              ; preds = %372, %338
  br label %374

374:                                              ; preds = %373, %326
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* @regcache_dump_cooked, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %396

378:                                              ; preds = %374
  %379 = load i32, i32* %9, align 4
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %383 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %382, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  br label %395

384:                                              ; preds = %378
  %385 = load %struct.regcache*, %struct.regcache** %4, align 8
  %386 = load i32, i32* %9, align 4
  %387 = call i32 @regcache_cooked_read(%struct.regcache* %385, i32 %386, i8* %32)
  %388 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %389 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %388, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %390 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %391 = load i32, i32* @TARGET_BYTE_ORDER, align 4
  %392 = load i32, i32* %9, align 4
  %393 = call i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32 %392)
  %394 = call i32 @dump_endian_bytes(%struct.ui_file* %390, i32 %391, i8* %32, i32 %393)
  br label %395

395:                                              ; preds = %384, %381
  br label %396

396:                                              ; preds = %395, %374
  %397 = load i32, i32* %6, align 4
  %398 = load i32, i32* @regcache_dump_groups, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %400, label %431

400:                                              ; preds = %396
  %401 = load i32, i32* %9, align 4
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %405 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %404, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %430

406:                                              ; preds = %400
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  %407 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %408 = call %struct.reggroup* @reggroup_next(%struct.gdbarch* %407, %struct.reggroup* null)
  store %struct.reggroup* %408, %struct.reggroup** %21, align 8
  br label %409

409:                                              ; preds = %425, %406
  %410 = load %struct.reggroup*, %struct.reggroup** %21, align 8
  %411 = icmp ne %struct.reggroup* %410, null
  br i1 %411, label %412, label %429

412:                                              ; preds = %409
  %413 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %414 = load i32, i32* %9, align 4
  %415 = load %struct.reggroup*, %struct.reggroup** %21, align 8
  %416 = call i64 @gdbarch_register_reggroup_p(%struct.gdbarch* %413, i32 %414, %struct.reggroup* %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %412
  %419 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %420 = load i8*, i8** %20, align 8
  %421 = load %struct.reggroup*, %struct.reggroup** %21, align 8
  %422 = call i32 @reggroup_name(%struct.reggroup* %421)
  %423 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %419, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %420, i32 %422)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8** %20, align 8
  br label %424

424:                                              ; preds = %418, %412
  br label %425

425:                                              ; preds = %424
  %426 = load %struct.gdbarch*, %struct.gdbarch** %8, align 8
  %427 = load %struct.reggroup*, %struct.reggroup** %21, align 8
  %428 = call %struct.reggroup* @reggroup_next(%struct.gdbarch* %426, %struct.reggroup* %427)
  store %struct.reggroup* %428, %struct.reggroup** %21, align 8
  br label %409

429:                                              ; preds = %409
  br label %430

430:                                              ; preds = %429, %403
  br label %431

431:                                              ; preds = %430, %396
  %432 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %433 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %432, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %434

434:                                              ; preds = %431
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4
  br label %44

437:                                              ; preds = %44
  %438 = load i32, i32* %11, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %437
  %441 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %442 = load i32, i32* %11, align 4
  %443 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %441, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %442)
  br label %444

444:                                              ; preds = %440, %437
  %445 = load i32, i32* %12, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %449 = load i32, i32* %12, align 4
  %450 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %448, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %447, %444
  %452 = load i32, i32* %13, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  %455 = load %struct.ui_file*, %struct.ui_file** %5, align 8
  %456 = load i32, i32* %13, align 4
  %457 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_unfiltered(%struct.ui_file* %455, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %456)
  br label %458

458:                                              ; preds = %454, %451
  %459 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %460 = call i32 @do_cleanups(%struct.cleanup* %459)
  %461 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %461)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, ...) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_VIRTUAL_SIZE(i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @register_type(%struct.gdbarch*, i32) #1

declare dso_local i8* @TYPE_NAME(i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @regcache_valid_p(%struct.regcache*, i32) #1

declare dso_local i32 @regcache_raw_read(%struct.regcache*, i32, i8*) #1

declare dso_local i32 @dump_endian_bytes(%struct.ui_file*, i32, i8*, i32) #1

declare dso_local i32 @regcache_cooked_read(%struct.regcache*, i32, i8*) #1

declare dso_local %struct.reggroup* @reggroup_next(%struct.gdbarch*, %struct.reggroup*) #1

declare dso_local i64 @gdbarch_register_reggroup_p(%struct.gdbarch*, i32, %struct.reggroup*) #1

declare dso_local i32 @reggroup_name(%struct.reggroup*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
