; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_dumpino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_traverse.c_dumpino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32, i32, i32, i64, i8*, i32, i8*, i32, i8*, i64, i32, i32 }
%union.dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TP_BSIZE = common dso_local global i32 0, align 4
@newtape = common dso_local global i64 0, align 8
@dumpinomap = common dso_local global i32 0, align 4
@TS_BITS = common dso_local global i32 0, align 4
@di_flags = common dso_local global i32 0, align 4
@SF_SNAPSHOT = common dso_local global i64 0, align 8
@di_size = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_8__* null, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@spcl = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TS_INODE = common dso_local global i32 0, align 4
@di_mode = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Warning: undefined file type 0%o\0A\00", align 1
@IFMT = common dso_local global i64 0, align 8
@UFS_NDADDR = common dso_local global i64 0, align 8
@UFS_NIADDR = common dso_local global i32 0, align 4
@di_ib = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dumpino(%union.dinode* %0, i32 %1) #0 {
  %3 = alloca %union.dinode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %union.dinode* %0, %union.dinode** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @TP_BSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i64, i64* @newtape, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  store i64 0, i64* @newtape, align 8
  %20 = load i32, i32* @dumpinomap, align 4
  %21 = load i32, i32* @TS_BITS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dumpmap(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @dumpinomap, align 4
  %27 = call i32 @CLRINO(i32 %25, i32 %26)
  %28 = load %union.dinode*, %union.dinode** %3, align 8
  %29 = load i32, i32* @di_flags, align 4
  %30 = call i64 @DIP(%union.dinode* %28, i32 %29)
  %31 = load i64, i64* @SF_SNAPSHOT, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load %union.dinode*, %union.dinode** %3, align 8
  %36 = load i32, i32* @di_size, align 4
  %37 = call i32 @DIP_SET(%union.dinode* %35, i32 %36, i64 0)
  %38 = load %union.dinode*, %union.dinode** %3, align 8
  %39 = load i32, i32* @di_flags, align 4
  %40 = load %union.dinode*, %union.dinode** %3, align 8
  %41 = load i32, i32* @di_flags, align 4
  %42 = call i64 @DIP(%union.dinode* %40, i32 %41)
  %43 = load i64, i64* @SF_SNAPSHOT, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = call i32 @DIP_SET(%union.dinode* %38, i32 %39, i64 %45)
  br label %47

47:                                               ; preds = %34, %24
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %47
  %54 = load %union.dinode*, %union.dinode** %3, align 8
  %55 = bitcast %union.dinode* %54 to %struct.TYPE_5__*
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 15), align 4
  %58 = load %union.dinode*, %union.dinode** %3, align 8
  %59 = bitcast %union.dinode* %58 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 13), align 8
  %62 = load %union.dinode*, %union.dinode** %3, align 8
  %63 = bitcast %union.dinode* %62 to %struct.TYPE_5__*
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @_time32_to_time(i32 %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 12), align 8
  %67 = load %union.dinode*, %union.dinode** %3, align 8
  %68 = bitcast %union.dinode* %67 to %struct.TYPE_5__*
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 11), align 8
  %71 = load %union.dinode*, %union.dinode** %3, align 8
  %72 = bitcast %union.dinode* %71 to %struct.TYPE_5__*
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @_time32_to_time(i32 %74)
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 10), align 8
  %76 = load %union.dinode*, %union.dinode** %3, align 8
  %77 = bitcast %union.dinode* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 9), align 8
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 7), align 8
  %80 = load %union.dinode*, %union.dinode** %3, align 8
  %81 = bitcast %union.dinode* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 6), align 8
  %84 = load %union.dinode*, %union.dinode** %3, align 8
  %85 = bitcast %union.dinode* %84 to %struct.TYPE_5__*
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 5), align 4
  %88 = load %union.dinode*, %union.dinode** %3, align 8
  %89 = bitcast %union.dinode* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 4), align 8
  %92 = load %union.dinode*, %union.dinode** %3, align 8
  %93 = bitcast %union.dinode* %92 to %struct.TYPE_5__*
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 3), align 4
  br label %152

96:                                               ; preds = %47
  %97 = load %union.dinode*, %union.dinode** %3, align 8
  %98 = bitcast %union.dinode* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 15), align 4
  %101 = load %union.dinode*, %union.dinode** %3, align 8
  %102 = bitcast %union.dinode* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 14), align 8
  %105 = load %union.dinode*, %union.dinode** %3, align 8
  %106 = bitcast %union.dinode* %105 to %struct.TYPE_6__*
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 13), align 8
  %109 = load %union.dinode*, %union.dinode** %3, align 8
  %110 = bitcast %union.dinode* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @_time64_to_time(i32 %112)
  store i8* %113, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 12), align 8
  %114 = load %union.dinode*, %union.dinode** %3, align 8
  %115 = bitcast %union.dinode* %114 to %struct.TYPE_6__*
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 11), align 8
  %118 = load %union.dinode*, %union.dinode** %3, align 8
  %119 = bitcast %union.dinode* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @_time64_to_time(i32 %121)
  store i8* %122, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 10), align 8
  %123 = load %union.dinode*, %union.dinode** %3, align 8
  %124 = bitcast %union.dinode* %123 to %struct.TYPE_6__*
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 9), align 8
  %127 = load %union.dinode*, %union.dinode** %3, align 8
  %128 = bitcast %union.dinode* %127 to %struct.TYPE_6__*
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @_time64_to_time(i32 %130)
  store i8* %131, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 8), align 8
  %132 = load %union.dinode*, %union.dinode** %3, align 8
  %133 = bitcast %union.dinode* %132 to %struct.TYPE_6__*
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 7), align 8
  %136 = load %union.dinode*, %union.dinode** %3, align 8
  %137 = bitcast %union.dinode* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 6), align 8
  %140 = load %union.dinode*, %union.dinode** %3, align 8
  %141 = bitcast %union.dinode* %140 to %struct.TYPE_6__*
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 5), align 4
  %144 = load %union.dinode*, %union.dinode** %3, align 8
  %145 = bitcast %union.dinode* %144 to %struct.TYPE_6__*
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 4), align 8
  %148 = load %union.dinode*, %union.dinode** %3, align 8
  %149 = bitcast %union.dinode* %148 to %struct.TYPE_6__*
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 3), align 4
  br label %152

152:                                              ; preds = %96, %53
  %153 = load i32, i32* @TS_INODE, align 4
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 0), align 8
  %154 = load %union.dinode*, %union.dinode** %3, align 8
  %155 = load i32, i32* @di_mode, align 4
  %156 = call i64 @DIP(%union.dinode* %154, i32 %155)
  %157 = load i32, i32* @S_IFMT, align 4
  %158 = sext i32 %157 to i64
  %159 = and i64 %156, %158
  switch i64 %159, label %235 [
    i64 0, label %160
    i64 130, label %161
    i64 132, label %219
    i64 129, label %219
    i64 131, label %226
    i64 128, label %226
    i64 133, label %226
    i64 134, label %226
  ]

160:                                              ; preds = %152
  store i32 1, i32* %12, align 4
  br label %331

161:                                              ; preds = %152
  %162 = load %union.dinode*, %union.dinode** %3, align 8
  %163 = load i32, i32* @di_size, align 4
  %164 = call i64 @DIP(%union.dinode* %162, i32 %163)
  %165 = icmp ugt i64 %164, 0
  br i1 %165, label %166, label %218

166:                                              ; preds = %161
  %167 = load %union.dinode*, %union.dinode** %3, align 8
  %168 = load i32, i32* @di_size, align 4
  %169 = call i64 @DIP(%union.dinode* %167, i32 %168)
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %174, label %218

174:                                              ; preds = %166
  %175 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 1), align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 1, i32* %176, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spcl, i32 0, i32 0), align 8
  %177 = load %union.dinode*, %union.dinode** %3, align 8
  %178 = call i32 @appendextdata(%union.dinode* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @writeheader(i32 %179)
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %174
  %187 = load %union.dinode*, %union.dinode** %3, align 8
  %188 = bitcast %union.dinode* %187 to %struct.TYPE_5__*
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = ptrtoint i32* %190 to i32
  %192 = load %union.dinode*, %union.dinode** %3, align 8
  %193 = load i32, i32* @di_size, align 4
  %194 = call i64 @DIP(%union.dinode* %192, i32 %193)
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memmove(i8* %16, i32 %191, i32 %195)
  br label %208

197:                                              ; preds = %174
  %198 = load %union.dinode*, %union.dinode** %3, align 8
  %199 = bitcast %union.dinode* %198 to %struct.TYPE_6__*
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = ptrtoint i32* %201 to i32
  %203 = load %union.dinode*, %union.dinode** %3, align 8
  %204 = load i32, i32* @di_size, align 4
  %205 = call i64 @DIP(%union.dinode* %203, i32 %204)
  %206 = trunc i64 %205 to i32
  %207 = call i32 @memmove(i8* %16, i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %197, %186
  %209 = load %union.dinode*, %union.dinode** %3, align 8
  %210 = load i32, i32* @di_size, align 4
  %211 = call i64 @DIP(%union.dinode* %209, i32 %210)
  %212 = getelementptr inbounds i8, i8* %16, i64 %211
  store i8 0, i8* %212, align 1
  %213 = call i32 @writerec(i8* %16, i32 0)
  %214 = load %union.dinode*, %union.dinode** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @writeextdata(%union.dinode* %214, i32 %215, i32 %216)
  store i32 1, i32* %12, align 4
  br label %331

218:                                              ; preds = %166, %161
  br label %219

219:                                              ; preds = %152, %152, %218
  %220 = load %union.dinode*, %union.dinode** %3, align 8
  %221 = load i32, i32* @di_size, align 4
  %222 = call i64 @DIP(%union.dinode* %220, i32 %221)
  %223 = icmp ugt i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %242

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %152, %152, %152, %152, %225
  %227 = load %union.dinode*, %union.dinode** %3, align 8
  %228 = call i32 @appendextdata(%union.dinode* %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @writeheader(i32 %229)
  %231 = load %union.dinode*, %union.dinode** %3, align 8
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @writeextdata(%union.dinode* %231, i32 %232, i32 %233)
  store i32 1, i32* %12, align 4
  br label %331

235:                                              ; preds = %152
  %236 = load %union.dinode*, %union.dinode** %3, align 8
  %237 = load i32, i32* @di_mode, align 4
  %238 = call i64 @DIP(%union.dinode* %236, i32 %237)
  %239 = load i64, i64* @IFMT, align 8
  %240 = and i64 %238, %239
  %241 = call i32 @msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %240)
  store i32 1, i32* %12, align 4
  br label %331

242:                                              ; preds = %224
  %243 = load %union.dinode*, %union.dinode** %3, align 8
  %244 = load i32, i32* @di_size, align 4
  %245 = call i64 @DIP(%union.dinode* %243, i32 %244)
  %246 = load i64, i64* @UFS_NDADDR, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = mul i64 %246, %249
  %251 = icmp ugt i64 %245, %250
  br i1 %251, label %252, label %259

252:                                              ; preds = %242
  %253 = load i64, i64* @UFS_NDADDR, align 8
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = mul i64 %253, %256
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %267

259:                                              ; preds = %242
  %260 = load %union.dinode*, %union.dinode** %3, align 8
  %261 = load i32, i32* @di_size, align 4
  %262 = call i64 @DIP(%union.dinode* %260, i32 %261)
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @howmany(i64 %262, i32 %265)
  store i32 %266, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %267

267:                                              ; preds = %259, %252
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %267
  %274 = load %union.dinode*, %union.dinode** %3, align 8
  %275 = bitcast %union.dinode* %274 to %struct.TYPE_5__*
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @ufs1_blksout(i32* %278, i32 %279, i32 %280)
  br label %293

282:                                              ; preds = %267
  %283 = load %union.dinode*, %union.dinode** %3, align 8
  %284 = load %union.dinode*, %union.dinode** %3, align 8
  %285 = bitcast %union.dinode* %284 to %struct.TYPE_6__*
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  %289 = load i32, i32* %6, align 4
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %7, align 4
  %292 = call i32 @ufs2_blksout(%union.dinode* %283, i32* %288, i32 %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %282, %273
  %294 = load %union.dinode*, %union.dinode** %3, align 8
  %295 = load i32, i32* @di_size, align 4
  %296 = call i64 @DIP(%union.dinode* %294, i32 %295)
  %297 = load i64, i64* @UFS_NDADDR, align 8
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sblock, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = mul i64 %297, %300
  %302 = sub i64 %296, %301
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %9, align 4
  %304 = icmp sle i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %293
  store i32 1, i32* %12, align 4
  br label %331

306:                                              ; preds = %293
  store i32 0, i32* %5, align 4
  br label %307

307:                                              ; preds = %327, %306
  %308 = load i32, i32* %5, align 4
  %309 = load i32, i32* @UFS_NIADDR, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %330

311:                                              ; preds = %307
  %312 = load %union.dinode*, %union.dinode** %3, align 8
  %313 = load i32, i32* %4, align 4
  %314 = load %union.dinode*, %union.dinode** %3, align 8
  %315 = load i32*, i32** @di_ib, align 8
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @DIP(%union.dinode* %314, i32 %319)
  %321 = load i32, i32* %5, align 4
  %322 = call i32 @dmpindir(%union.dinode* %312, i32 %313, i64 %320, i32 %321, i32* %9)
  %323 = load i32, i32* %9, align 4
  %324 = icmp sle i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %311
  store i32 1, i32* %12, align 4
  br label %331

326:                                              ; preds = %311
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %5, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %5, align 4
  br label %307

330:                                              ; preds = %307
  store i32 0, i32* %12, align 4
  br label %331

331:                                              ; preds = %330, %325, %305, %235, %226, %208, %160
  %332 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %12, align 4
  switch i32 %333, label %335 [
    i32 0, label %334
    i32 1, label %334
  ]

334:                                              ; preds = %331, %331
  ret void

335:                                              ; preds = %331
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dumpmap(i32, i32, i32) #2

declare dso_local i32 @CLRINO(i32, i32) #2

declare dso_local i64 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @DIP_SET(%union.dinode*, i32, i64) #2

declare dso_local i8* @_time32_to_time(i32) #2

declare dso_local i8* @_time64_to_time(i32) #2

declare dso_local i32 @appendextdata(%union.dinode*) #2

declare dso_local i32 @writeheader(i32) #2

declare dso_local i32 @memmove(i8*, i32, i32) #2

declare dso_local i32 @writerec(i8*, i32) #2

declare dso_local i32 @writeextdata(%union.dinode*, i32, i32) #2

declare dso_local i32 @msg(i8*, i64) #2

declare dso_local i32 @howmany(i64, i32) #2

declare dso_local i32 @ufs1_blksout(i32*, i32, i32) #2

declare dso_local i32 @ufs2_blksout(%union.dinode*, i32*, i32, i32, i32) #2

declare dso_local i32 @dmpindir(%union.dinode*, i32, i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
