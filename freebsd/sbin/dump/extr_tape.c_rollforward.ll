; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_rollforward.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_rollforward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32, i32, i64*, %struct.req*, i8* }
%struct.req = type { i64, i64 }
%struct.TYPE_2__ = type { i8* }
%union.u_spcl = type { i32 }

@slaves = common dso_local global %struct.slave* null, align 8
@SLAVES = common dso_local global i64 0, align 8
@slp = common dso_local global %struct.slave* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"rollforward: protocol botch\00", align 1
@trecno = common dso_local global i32 0, align 4
@nextblock = common dso_local global i64* null, align 8
@spcl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lastspclrec = common dso_local global i8* null, align 8
@write = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"  DUMP: error writing command pipe\00", align 1
@TP_BSIZE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"  DUMP: error reading command pipe in master\00", align 1
@writesize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"EOT detected at start of the tape!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rollforward() #0 {
  %1 = alloca %struct.req*, align 8
  %2 = alloca %struct.req*, align 8
  %3 = alloca %struct.req*, align 8
  %4 = alloca %struct.slave*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %union.u_spcl*, align 8
  %10 = alloca %union.u_spcl*, align 8
  %11 = load %struct.slave*, %struct.slave** @slaves, align 8
  %12 = load i64, i64* @SLAVES, align 8
  %13 = getelementptr inbounds %struct.slave, %struct.slave* %11, i64 %12
  store %struct.slave* %13, %struct.slave** %4, align 8
  %14 = load %struct.slave*, %struct.slave** %4, align 8
  %15 = getelementptr inbounds %struct.slave, %struct.slave* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %union.u_spcl*
  store %union.u_spcl* %19, %union.u_spcl** %9, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %193, %0
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @SLAVES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %196

25:                                               ; preds = %20
  %26 = load %struct.slave*, %struct.slave** %4, align 8
  %27 = getelementptr inbounds %struct.slave, %struct.slave* %26, i32 0, i32 3
  %28 = load %struct.req*, %struct.req** %27, align 8
  %29 = getelementptr inbounds %struct.req, %struct.req* %28, i64 1
  store %struct.req* %29, %struct.req** %2, align 8
  %30 = load %struct.slave*, %struct.slave** @slp, align 8
  %31 = getelementptr inbounds %struct.slave, %struct.slave* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = bitcast i64* %32 to %union.u_spcl*
  store %union.u_spcl* %33, %union.u_spcl** %10, align 8
  store %struct.req* null, %struct.req** %3, align 8
  %34 = load %struct.slave*, %struct.slave** @slp, align 8
  %35 = getelementptr inbounds %struct.slave, %struct.slave* %34, i32 0, i32 3
  %36 = load %struct.req*, %struct.req** %35, align 8
  store %struct.req* %36, %struct.req** %1, align 8
  br label %37

37:                                               ; preds = %65, %25
  %38 = load %struct.req*, %struct.req** %1, align 8
  %39 = getelementptr inbounds %struct.req, %struct.req* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.req*, %struct.req** %2, align 8
  %44 = load %struct.req*, %struct.req** %1, align 8
  %45 = bitcast %struct.req* %43 to i8*
  %46 = bitcast %struct.req* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load %struct.req*, %struct.req** %1, align 8
  %48 = getelementptr inbounds %struct.req, %struct.req* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %union.u_spcl*, %union.u_spcl** %9, align 8
  %53 = getelementptr inbounds %union.u_spcl, %union.u_spcl* %52, i32 1
  store %union.u_spcl* %53, %union.u_spcl** %9, align 8
  %54 = load %union.u_spcl*, %union.u_spcl** %10, align 8
  %55 = getelementptr inbounds %union.u_spcl, %union.u_spcl* %54, i32 1
  store %union.u_spcl* %55, %union.u_spcl** %10, align 8
  %56 = bitcast %union.u_spcl* %52 to i8*
  %57 = bitcast %union.u_spcl* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  br label %58

58:                                               ; preds = %51, %42
  %59 = load %struct.req*, %struct.req** %2, align 8
  store %struct.req* %59, %struct.req** %3, align 8
  %60 = load %struct.req*, %struct.req** %2, align 8
  %61 = getelementptr inbounds %struct.req, %struct.req* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.req*, %struct.req** %2, align 8
  %64 = getelementptr inbounds %struct.req, %struct.req* %63, i64 %62
  store %struct.req* %64, %struct.req** %2, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load %struct.req*, %struct.req** %1, align 8
  %67 = getelementptr inbounds %struct.req, %struct.req* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.req*, %struct.req** %1, align 8
  %70 = getelementptr inbounds %struct.req, %struct.req* %69, i64 %68
  store %struct.req* %70, %struct.req** %1, align 8
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.req*, %struct.req** %3, align 8
  %73 = icmp eq %struct.req* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @quit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71
  %77 = load %struct.req*, %struct.req** %3, align 8
  %78 = getelementptr inbounds %struct.req, %struct.req* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.req*, %struct.req** %3, align 8
  %83 = getelementptr inbounds %struct.req, %struct.req* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  br label %89

86:                                               ; preds = %76
  %87 = load %union.u_spcl*, %union.u_spcl** %9, align 8
  %88 = getelementptr inbounds %union.u_spcl, %union.u_spcl* %87, i32 -1
  store %union.u_spcl* %88, %union.u_spcl** %9, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.req*, %struct.req** %2, align 8
  %91 = getelementptr inbounds %struct.req, %struct.req* %90, i64 -1
  store %struct.req* %91, %struct.req** %2, align 8
  %92 = load %struct.req*, %struct.req** %2, align 8
  %93 = getelementptr inbounds %struct.req, %struct.req* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.slave*, %struct.slave** %4, align 8
  %95 = getelementptr inbounds %struct.slave, %struct.slave* %94, i32 0, i32 3
  %96 = load %struct.req*, %struct.req** %95, align 8
  %97 = getelementptr inbounds %struct.req, %struct.req* %96, i64 0
  store %struct.req* %97, %struct.req** %2, align 8
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %89
  %101 = load %struct.req*, %struct.req** %2, align 8
  %102 = getelementptr inbounds %struct.req, %struct.req* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.req*, %struct.req** %2, align 8
  %104 = getelementptr inbounds %struct.req, %struct.req* %103, i32 0, i32 0
  store i64 1, i64* %104, align 8
  store i32 0, i32* @trecno, align 4
  %105 = load %struct.slave*, %struct.slave** %4, align 8
  %106 = getelementptr inbounds %struct.slave, %struct.slave* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  store i64* %107, i64** @nextblock, align 8
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 0), align 8
  store i8* %108, i8** %8, align 8
  %109 = load %struct.slave*, %struct.slave** @slp, align 8
  %110 = getelementptr inbounds %struct.slave, %struct.slave* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 0), align 8
  %112 = call i32 @startnewtape(i32 0)
  %113 = load i8*, i8** %8, align 8
  store i8* %113, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spcl, i32 0, i32 0), align 8
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr i8, i8* %114, i64 -1
  store i8* %115, i8** @lastspclrec, align 8
  br label %116

116:                                              ; preds = %100, %89
  %117 = load %union.u_spcl*, %union.u_spcl** %9, align 8
  %118 = bitcast %union.u_spcl* %117 to i8*
  %119 = load %struct.req*, %struct.req** %2, align 8
  %120 = bitcast %struct.req* %119 to i8*
  %121 = ptrtoint i8* %118 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* @write, align 4
  %126 = load %struct.slave*, %struct.slave** @slp, align 8
  %127 = getelementptr inbounds %struct.slave, %struct.slave* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.req*, %struct.req** %2, align 8
  %130 = bitcast %struct.req* %129 to i8*
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @atomic(i32 %125, i32 %128, i8* %130, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %116
  %136 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @dumpabort(i32 0)
  br label %138

138:                                              ; preds = %135, %116
  %139 = load %struct.slave*, %struct.slave** @slp, align 8
  %140 = getelementptr inbounds %struct.slave, %struct.slave* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.slave*, %struct.slave** @slp, align 8
  %142 = getelementptr inbounds %struct.slave, %struct.slave* %141, i32 1
  store %struct.slave* %142, %struct.slave** @slp, align 8
  %143 = load %struct.slave*, %struct.slave** @slaves, align 8
  %144 = load i64, i64* @SLAVES, align 8
  %145 = getelementptr inbounds %struct.slave, %struct.slave* %143, i64 %144
  %146 = icmp uge %struct.slave* %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load %struct.slave*, %struct.slave** @slaves, align 8
  %149 = getelementptr inbounds %struct.slave, %struct.slave* %148, i64 0
  store %struct.slave* %149, %struct.slave** @slp, align 8
  br label %150

150:                                              ; preds = %147, %138
  %151 = load %struct.req*, %struct.req** %2, align 8
  %152 = getelementptr inbounds %struct.req, %struct.req* %151, i32 0, i32 0
  store i64 1, i64* %152, align 8
  %153 = load %struct.req*, %struct.req** %3, align 8
  %154 = getelementptr inbounds %struct.req, %struct.req* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %150
  %158 = load %struct.req*, %struct.req** %3, align 8
  %159 = getelementptr inbounds %struct.req, %struct.req* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.req*, %struct.req** %3, align 8
  %162 = getelementptr inbounds %struct.req, %struct.req* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @TP_BSIZE, align 4
  %165 = load i32, i32* @DEV_BSIZE, align 4
  %166 = sdiv i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %163, %167
  %169 = add nsw i64 %160, %168
  %170 = load %struct.req*, %struct.req** %2, align 8
  %171 = getelementptr inbounds %struct.req, %struct.req* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.slave*, %struct.slave** %4, align 8
  %173 = getelementptr inbounds %struct.slave, %struct.slave* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = bitcast i64* %174 to %union.u_spcl*
  store %union.u_spcl* %175, %union.u_spcl** %9, align 8
  br label %192

176:                                              ; preds = %150
  %177 = load %struct.req*, %struct.req** %2, align 8
  %178 = getelementptr inbounds %struct.req, %struct.req* %177, i32 0, i32 1
  store i64 0, i64* %178, align 8
  %179 = load %struct.slave*, %struct.slave** %4, align 8
  %180 = getelementptr inbounds %struct.slave, %struct.slave* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = bitcast i64* %181 to %union.u_spcl*
  %183 = load %union.u_spcl*, %union.u_spcl** %9, align 8
  %184 = bitcast %union.u_spcl* %182 to i8*
  %185 = bitcast %union.u_spcl* %183 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 4 %185, i64 4, i1 false)
  %186 = load %struct.slave*, %struct.slave** %4, align 8
  %187 = getelementptr inbounds %struct.slave, %struct.slave* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = inttoptr i64 %190 to %union.u_spcl*
  store %union.u_spcl* %191, %union.u_spcl** %9, align 8
  br label %192

192:                                              ; preds = %176, %157
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %5, align 4
  br label %20

196:                                              ; preds = %20
  %197 = load %struct.slave*, %struct.slave** @slp, align 8
  %198 = getelementptr inbounds %struct.slave, %struct.slave* %197, i32 0, i32 3
  %199 = load %struct.req*, %struct.req** %198, align 8
  %200 = getelementptr inbounds %struct.req, %struct.req* %199, i64 0
  %201 = load %struct.req*, %struct.req** %2, align 8
  %202 = bitcast %struct.req* %200 to i8*
  %203 = bitcast %struct.req* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 16, i1 false)
  %204 = load %struct.slave*, %struct.slave** @slp, align 8
  %205 = getelementptr inbounds %struct.slave, %struct.slave* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  store i64* %206, i64** @nextblock, align 8
  %207 = load %struct.req*, %struct.req** %2, align 8
  %208 = getelementptr inbounds %struct.req, %struct.req* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %196
  %212 = load i64*, i64** @nextblock, align 8
  %213 = getelementptr inbounds i64, i64* %212, i32 1
  store i64* %213, i64** @nextblock, align 8
  br label %214

214:                                              ; preds = %211, %196
  store i32 1, i32* @trecno, align 4
  %215 = load %struct.slave*, %struct.slave** @slp, align 8
  %216 = getelementptr inbounds %struct.slave, %struct.slave* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %214
  %220 = load i32, i32* @read, align 4
  %221 = load %struct.slave*, %struct.slave** @slp, align 8
  %222 = getelementptr inbounds %struct.slave, %struct.slave* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = bitcast i32* %7 to i8*
  %225 = call i32 @atomic(i32 %220, i32 %223, i8* %224, i32 4)
  %226 = sext i32 %225 to i64
  %227 = icmp ne i64 %226, 4
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = call i32 @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %230 = call i32 @dumpabort(i32 0)
  br label %231

231:                                              ; preds = %228, %219
  %232 = load %struct.slave*, %struct.slave** @slp, align 8
  %233 = getelementptr inbounds %struct.slave, %struct.slave* %232, i32 0, i32 0
  store i32 0, i32* %233, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @writesize, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = call i32 @quit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %231
  br label %240

240:                                              ; preds = %239, %214
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @quit(i8*) #2

declare dso_local i32 @startnewtape(i32) #2

declare dso_local i32 @atomic(i32, i32, i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @dumpabort(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
