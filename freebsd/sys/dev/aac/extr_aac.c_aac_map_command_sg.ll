; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_map_command_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_map_command_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.aac_softc = type { i32, i32 }
%struct.aac_command = type { i32, i32, i32, i32, %struct.aac_fib*, i64, %struct.aac_sg_table*, %struct.aac_softc* }
%struct.aac_fib = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i64 }
%struct.aac_sg_table = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.aac_sg_tableraw = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }
%struct.aac_sg_table64 = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RawIo = common dso_local global i64 0, align 8
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@AAC_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AAC_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AAC_CMD_MAPPED = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM = common dso_local global i32 0, align 4
@AAC_QUEUE_FRZN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, i32, i32)* @aac_map_command_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_map_command_sg(i8* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aac_softc*, align 8
  %10 = alloca %struct.aac_command*, align 8
  %11 = alloca %struct.aac_fib*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aac_sg_tableraw*, align 8
  %14 = alloca %struct.aac_sg_table*, align 8
  %15 = alloca %struct.aac_sg_table64*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.aac_command*
  store %struct.aac_command* %18, %struct.aac_command** %10, align 8
  %19 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %20 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %19, i32 0, i32 7
  %21 = load %struct.aac_softc*, %struct.aac_softc** %20, align 8
  store %struct.aac_softc* %21, %struct.aac_softc** %9, align 8
  %22 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %23 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %22, i32 0, i32 4
  %24 = load %struct.aac_fib*, %struct.aac_fib** %23, align 8
  store %struct.aac_fib* %24, %struct.aac_fib** %11, align 8
  %25 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %26 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %27 = call i32 @fwprintf(%struct.aac_softc* %25, i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %29 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %28, i32 0, i32 6
  %30 = load %struct.aac_sg_table*, %struct.aac_sg_table** %29, align 8
  %31 = icmp ne %struct.aac_sg_table* %30, null
  br i1 %31, label %32, label %229

32:                                               ; preds = %4
  %33 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %34 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RawIo, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %32
  %40 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %41 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %40, i32 0, i32 6
  %42 = load %struct.aac_sg_table*, %struct.aac_sg_table** %41, align 8
  %43 = bitcast %struct.aac_sg_table* %42 to %struct.aac_sg_tableraw*
  store %struct.aac_sg_tableraw* %43, %struct.aac_sg_tableraw** %13, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %46 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %99, %39
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %59 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  store i32 %57, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %72 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32 %70, i32* %77, align 8
  %78 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %79 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %86 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.aac_sg_tableraw*, %struct.aac_sg_tableraw** %13, align 8
  %93 = getelementptr inbounds %struct.aac_sg_tableraw, %struct.aac_sg_tableraw* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  br label %99

99:                                               ; preds = %51
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %47

102:                                              ; preds = %47
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %107 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, %105
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  br label %228

113:                                              ; preds = %32
  %114 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %115 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %114, i32 0, i32 7
  %116 = load %struct.aac_softc*, %struct.aac_softc** %115, align 8
  %117 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %174

122:                                              ; preds = %113
  %123 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %124 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %123, i32 0, i32 6
  %125 = load %struct.aac_sg_table*, %struct.aac_sg_table** %124, align 8
  store %struct.aac_sg_table* %125, %struct.aac_sg_table** %14, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.aac_sg_table*, %struct.aac_sg_table** %14, align 8
  %128 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %160, %122
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %163

133:                                              ; preds = %129
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.aac_sg_table*, %struct.aac_sg_table** %14, align 8
  %141 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 1
  store i32 %139, i32* %146, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.aac_sg_table*, %struct.aac_sg_table** %14, align 8
  %154 = getelementptr inbounds %struct.aac_sg_table, %struct.aac_sg_table* %153, i32 0, i32 1
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %133
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %129

163:                                              ; preds = %129
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 %165, 4
  %167 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %168 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = add i64 %171, %166
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %169, align 8
  br label %227

174:                                              ; preds = %113
  %175 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %176 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %175, i32 0, i32 6
  %177 = load %struct.aac_sg_table*, %struct.aac_sg_table** %176, align 8
  %178 = bitcast %struct.aac_sg_table* %177 to %struct.aac_sg_table64*
  store %struct.aac_sg_table64* %178, %struct.aac_sg_table64** %15, align 8
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %15, align 8
  %181 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %213, %174
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %182
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %15, align 8
  %194 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %193, i32 0, i32 1
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  store i32 %192, i32* %199, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.aac_sg_table64*, %struct.aac_sg_table64** %15, align 8
  %207 = getelementptr inbounds %struct.aac_sg_table64, %struct.aac_sg_table64* %206, i32 0, i32 1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  store i32 %205, i32* %212, align 4
  br label %213

213:                                              ; preds = %186
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %182

216:                                              ; preds = %182
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 4
  %220 = load %struct.aac_fib*, %struct.aac_fib** %11, align 8
  %221 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, %219
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 8
  br label %227

227:                                              ; preds = %216, %163
  br label %228

228:                                              ; preds = %227, %102
  br label %229

229:                                              ; preds = %228, %4
  %230 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %231 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = shl i32 %232, 2
  %234 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %235 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %234, i32 0, i32 4
  %236 = load %struct.aac_fib*, %struct.aac_fib** %235, align 8
  %237 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 2
  store i32 %233, i32* %238, align 4
  %239 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %240 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %243 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %242, i32 0, i32 4
  %244 = load %struct.aac_fib*, %struct.aac_fib** %243, align 8
  %245 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 4
  store i64 %241, i64* %246, align 8
  %247 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %248 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %251 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %250, i32 0, i32 4
  %252 = load %struct.aac_fib*, %struct.aac_fib** %251, align 8
  %253 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 3
  store i32 %249, i32* %254, align 8
  %255 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %256 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @AAC_CMD_DATAIN, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %229
  %262 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %263 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %266 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %269 = call i32 @bus_dmamap_sync(i32 %264, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %261, %229
  %271 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %272 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @AAC_CMD_DATAOUT, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %270
  %278 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %279 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %282 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %285 = call i32 @bus_dmamap_sync(i32 %280, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %277, %270
  %287 = load i32, i32* @AAC_CMD_MAPPED, align 4
  %288 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %289 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %293 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @AAC_FLAGS_NEW_COMM, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %321

298:                                              ; preds = %286
  store i32 10000000, i32* %16, align 4
  br label %299

299:                                              ; preds = %318, %298
  %300 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %301 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %302 = call i64 @AAC_SEND_COMMAND(%struct.aac_softc* %300, %struct.aac_command* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %299
  %305 = load i32, i32* %16, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %16, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %304
  %309 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %310 = call i32 @aac_unmap_command(%struct.aac_command* %309)
  %311 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %312 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %313 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  %316 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %317 = call i32 @aac_requeue_ready(%struct.aac_command* %316)
  br label %318

318:                                              ; preds = %308, %304
  %319 = call i32 @DELAY(i32 5)
  br label %299

320:                                              ; preds = %299
  br label %341

321:                                              ; preds = %286
  %322 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %323 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %324 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %327 = call i64 @aac_enqueue_fib(%struct.aac_softc* %322, i32 %325, %struct.aac_command* %326)
  %328 = load i64, i64* @EBUSY, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %340

330:                                              ; preds = %321
  %331 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %332 = call i32 @aac_unmap_command(%struct.aac_command* %331)
  %333 = load i32, i32* @AAC_QUEUE_FRZN, align 4
  %334 = load %struct.aac_softc*, %struct.aac_softc** %9, align 8
  %335 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = or i32 %336, %333
  store i32 %337, i32* %335, align 4
  %338 = load %struct.aac_command*, %struct.aac_command** %10, align 8
  %339 = call i32 @aac_requeue_ready(%struct.aac_command* %338)
  br label %340

340:                                              ; preds = %330, %321
  br label %341

341:                                              ; preds = %340, %320
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @AAC_SEND_COMMAND(%struct.aac_softc*, %struct.aac_command*) #1

declare dso_local i32 @aac_unmap_command(%struct.aac_command*) #1

declare dso_local i32 @aac_requeue_ready(%struct.aac_command*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @aac_enqueue_fib(%struct.aac_softc*, i32, %struct.aac_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
