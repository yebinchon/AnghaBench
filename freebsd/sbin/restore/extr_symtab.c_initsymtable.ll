; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_initsymtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_initsymtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i8*, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry*, %struct.entry*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.symtableheader = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Initialize symbol table.\0A\00", align 1
@maxino = common dso_local global i32 0, align 4
@HASHFACTOR = common dso_local global i32 0, align 4
@entrytblsize = common dso_local global i32 0, align 4
@entry = common dso_local global %struct.entry** null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no memory for entry table\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@UFS_ROOTINO = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@NEW = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"open: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"cannot open symbol table file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"stat: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot stat symbol table file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"cannot allocate space for symbol table\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"read: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"cannot read symbol table file %s\0A\00", align 1
@command = common dso_local global i32 0, align 4
@dumptime = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Incremental tape too low\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Incremental tape too high\0A\00", align 1
@SKIP = common dso_local global i32 0, align 4
@curfile = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dumpdate = common dso_local global i32 0, align 4
@bflag = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"initsymtable called from command %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initsymtable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.entry*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.entry*, align 8
  %8 = alloca %struct.symtableheader, align 4
  %9 = alloca %struct.stat, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @vprintf(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @maxino, align 4
  %18 = load i32, i32* @HASHFACTOR, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* @entrytblsize, align 4
  %20 = load i32, i32* @entrytblsize, align 4
  %21 = call i8* @calloc(i32 %20, i32 8)
  %22 = bitcast i8* %21 to %struct.entry**
  store %struct.entry** %22, %struct.entry*** @entry, align 8
  %23 = load %struct.entry**, %struct.entry*** @entry, align 8
  %24 = icmp eq %struct.entry** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* @UFS_ROOTINO, align 4
  %29 = load i32, i32* @NODE, align 4
  %30 = call %struct.entry* @addentry(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  store %struct.entry* %30, %struct.entry** %5, align 8
  %31 = load i32, i32* @NEW, align 4
  %32 = load %struct.entry*, %struct.entry** %5, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %264

36:                                               ; preds = %1
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* @O_RDONLY, align 4
  %39 = call i32 @open(i8* %37, i32 %38, i32 0)
  store i32 %39, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i8* @strerror(i32 %43)
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @fstat(i32 %49, %struct.stat* %9)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i8* @strerror(i32 %54)
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %2, align 8
  %58 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 28
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i8* @calloc(i32 1, i32 %65)
  store i8* %66, i8** %3, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @read(i32 %72, i8* %73, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = bitcast %struct.symtableheader* %8 to i8*
  %81 = call i64 @read(i32 %79, i8* %80, i32 28)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78, %71
  %84 = load i32, i32* @stderr, align 4
  %85 = load i32, i32* @errno, align 4
  %86 = call i8* @strerror(i32 %85)
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %86)
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %83, %78
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @close(i32 %91)
  %93 = load i32, i32* @command, align 4
  switch i32 %93, label %129 [
    i32 114, label %94
    i32 82, label %113
  ]

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @dumptime, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @dumptime, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  %111 = call i32 @done(i32 1)
  br label %112

112:                                              ; preds = %110, %94
  br label %132

113:                                              ; preds = %90
  %114 = load i32, i32* @SKIP, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @curfile, i32 0, i32 0), align 4
  %115 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* @dumptime, align 4
  %117 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* @dumpdate, align 4
  %119 = load i32, i32* @bflag, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @newtapebuf(i32 %123)
  br label %125

125:                                              ; preds = %121, %113
  %126 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @getvol(i32 %127)
  br label %132

129:                                              ; preds = %90
  %130 = load i32, i32* @command, align 4
  %131 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %129, %125, %112
  %133 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* @maxino, align 4
  %135 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* @entrytblsize, align 4
  %137 = load i8*, i8** %3, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i32, i32* @entrytblsize, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 8
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %139, i64 %143
  %145 = bitcast i8* %144 to %struct.entry**
  store %struct.entry** %145, %struct.entry*** @entry, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = getelementptr inbounds %struct.symtableheader, %struct.symtableheader* %8, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = getelementptr inbounds i8, i8* %150, i64 -56
  %152 = bitcast i8* %151 to %struct.entry*
  store %struct.entry* %152, %struct.entry** %6, align 8
  %153 = load %struct.entry**, %struct.entry*** @entry, align 8
  %154 = bitcast %struct.entry** %153 to %struct.entry*
  store %struct.entry* %154, %struct.entry** %7, align 8
  store i64 0, i64* %10, align 8
  br label %155

155:                                              ; preds = %178, %132
  %156 = load i64, i64* %10, align 8
  %157 = load i32, i32* @entrytblsize, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %155
  %161 = load %struct.entry**, %struct.entry*** @entry, align 8
  %162 = load i64, i64* %10, align 8
  %163 = getelementptr inbounds %struct.entry*, %struct.entry** %161, i64 %162
  %164 = load %struct.entry*, %struct.entry** %163, align 8
  %165 = icmp eq %struct.entry* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %178

167:                                              ; preds = %160
  %168 = load %struct.entry*, %struct.entry** %6, align 8
  %169 = load %struct.entry**, %struct.entry*** @entry, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.entry*, %struct.entry** %169, i64 %170
  %172 = load %struct.entry*, %struct.entry** %171, align 8
  %173 = ptrtoint %struct.entry* %172 to i64
  %174 = getelementptr inbounds %struct.entry, %struct.entry* %168, i64 %173
  %175 = load %struct.entry**, %struct.entry*** @entry, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds %struct.entry*, %struct.entry** %175, i64 %176
  store %struct.entry* %174, %struct.entry** %177, align 8
  br label %178

178:                                              ; preds = %167, %166
  %179 = load i64, i64* %10, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %10, align 8
  br label %155

181:                                              ; preds = %155
  %182 = load %struct.entry*, %struct.entry** %6, align 8
  %183 = getelementptr inbounds %struct.entry, %struct.entry* %182, i64 1
  store %struct.entry* %183, %struct.entry** %5, align 8
  br label %184

184:                                              ; preds = %261, %181
  %185 = load %struct.entry*, %struct.entry** %5, align 8
  %186 = load %struct.entry*, %struct.entry** %7, align 8
  %187 = icmp ult %struct.entry* %185, %186
  br i1 %187, label %188, label %264

188:                                              ; preds = %184
  %189 = load i8*, i8** %3, align 8
  %190 = load %struct.entry*, %struct.entry** %5, align 8
  %191 = getelementptr inbounds %struct.entry, %struct.entry* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %192 to i64
  %194 = getelementptr inbounds i8, i8* %189, i64 %193
  %195 = load %struct.entry*, %struct.entry** %5, align 8
  %196 = getelementptr inbounds %struct.entry, %struct.entry* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load %struct.entry*, %struct.entry** %6, align 8
  %198 = load %struct.entry*, %struct.entry** %5, align 8
  %199 = getelementptr inbounds %struct.entry, %struct.entry* %198, i32 0, i32 5
  %200 = load %struct.entry*, %struct.entry** %199, align 8
  %201 = ptrtoint %struct.entry* %200 to i64
  %202 = getelementptr inbounds %struct.entry, %struct.entry* %197, i64 %201
  %203 = load %struct.entry*, %struct.entry** %5, align 8
  %204 = getelementptr inbounds %struct.entry, %struct.entry* %203, i32 0, i32 5
  store %struct.entry* %202, %struct.entry** %204, align 8
  %205 = load %struct.entry*, %struct.entry** %5, align 8
  %206 = getelementptr inbounds %struct.entry, %struct.entry* %205, i32 0, i32 4
  %207 = load %struct.entry*, %struct.entry** %206, align 8
  %208 = icmp ne %struct.entry* %207, null
  br i1 %208, label %209, label %218

209:                                              ; preds = %188
  %210 = load %struct.entry*, %struct.entry** %6, align 8
  %211 = load %struct.entry*, %struct.entry** %5, align 8
  %212 = getelementptr inbounds %struct.entry, %struct.entry* %211, i32 0, i32 4
  %213 = load %struct.entry*, %struct.entry** %212, align 8
  %214 = ptrtoint %struct.entry* %213 to i64
  %215 = getelementptr inbounds %struct.entry, %struct.entry* %210, i64 %214
  %216 = load %struct.entry*, %struct.entry** %5, align 8
  %217 = getelementptr inbounds %struct.entry, %struct.entry* %216, i32 0, i32 4
  store %struct.entry* %215, %struct.entry** %217, align 8
  br label %218

218:                                              ; preds = %209, %188
  %219 = load %struct.entry*, %struct.entry** %5, align 8
  %220 = getelementptr inbounds %struct.entry, %struct.entry* %219, i32 0, i32 3
  %221 = load %struct.entry*, %struct.entry** %220, align 8
  %222 = icmp ne %struct.entry* %221, null
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.entry*, %struct.entry** %6, align 8
  %225 = load %struct.entry*, %struct.entry** %5, align 8
  %226 = getelementptr inbounds %struct.entry, %struct.entry* %225, i32 0, i32 3
  %227 = load %struct.entry*, %struct.entry** %226, align 8
  %228 = ptrtoint %struct.entry* %227 to i64
  %229 = getelementptr inbounds %struct.entry, %struct.entry* %224, i64 %228
  %230 = load %struct.entry*, %struct.entry** %5, align 8
  %231 = getelementptr inbounds %struct.entry, %struct.entry* %230, i32 0, i32 3
  store %struct.entry* %229, %struct.entry** %231, align 8
  br label %232

232:                                              ; preds = %223, %218
  %233 = load %struct.entry*, %struct.entry** %5, align 8
  %234 = getelementptr inbounds %struct.entry, %struct.entry* %233, i32 0, i32 2
  %235 = load %struct.entry*, %struct.entry** %234, align 8
  %236 = icmp ne %struct.entry* %235, null
  br i1 %236, label %237, label %246

237:                                              ; preds = %232
  %238 = load %struct.entry*, %struct.entry** %6, align 8
  %239 = load %struct.entry*, %struct.entry** %5, align 8
  %240 = getelementptr inbounds %struct.entry, %struct.entry* %239, i32 0, i32 2
  %241 = load %struct.entry*, %struct.entry** %240, align 8
  %242 = ptrtoint %struct.entry* %241 to i64
  %243 = getelementptr inbounds %struct.entry, %struct.entry* %238, i64 %242
  %244 = load %struct.entry*, %struct.entry** %5, align 8
  %245 = getelementptr inbounds %struct.entry, %struct.entry* %244, i32 0, i32 2
  store %struct.entry* %243, %struct.entry** %245, align 8
  br label %246

246:                                              ; preds = %237, %232
  %247 = load %struct.entry*, %struct.entry** %5, align 8
  %248 = getelementptr inbounds %struct.entry, %struct.entry* %247, i32 0, i32 1
  %249 = load %struct.entry*, %struct.entry** %248, align 8
  %250 = icmp ne %struct.entry* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.entry*, %struct.entry** %6, align 8
  %253 = load %struct.entry*, %struct.entry** %5, align 8
  %254 = getelementptr inbounds %struct.entry, %struct.entry* %253, i32 0, i32 1
  %255 = load %struct.entry*, %struct.entry** %254, align 8
  %256 = ptrtoint %struct.entry* %255 to i64
  %257 = getelementptr inbounds %struct.entry, %struct.entry* %252, i64 %256
  %258 = load %struct.entry*, %struct.entry** %5, align 8
  %259 = getelementptr inbounds %struct.entry, %struct.entry* %258, i32 0, i32 1
  store %struct.entry* %257, %struct.entry** %259, align 8
  br label %260

260:                                              ; preds = %251, %246
  br label %261

261:                                              ; preds = %260
  %262 = load %struct.entry*, %struct.entry** %5, align 8
  %263 = getelementptr inbounds %struct.entry, %struct.entry* %262, i32 1
  store %struct.entry* %263, %struct.entry** %5, align 8
  br label %184

264:                                              ; preds = %27, %184
  ret void
}

declare dso_local i32 @vprintf(i32, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local %struct.entry* @addentry(i8*, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @done(i32) #1

declare dso_local i32 @newtapebuf(i32) #1

declare dso_local i32 @getvol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
