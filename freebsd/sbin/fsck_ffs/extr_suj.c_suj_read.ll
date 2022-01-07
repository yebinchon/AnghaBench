; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_suj_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.suj_seg = type { i8*, %struct.jsegrec }
%struct.jsegrec = type { i64, i64, i32, i32, i64 }

@suj_jblocks = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error reading journal block %jd\0A\00", align 1
@real_dev_bsize = common dso_local global i32 0, align 4
@fs = common dso_local global %struct.TYPE_2__* null, align 8
@debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Rec time %jd != fs mtime %jd\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Found illegal count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Found invalid segsize %d > %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Incomplete record %jd (%d)\0A\00", align 1
@oldseq = common dso_local global i64 0, align 8
@allsegs = common dso_local global i32 0, align 4
@ss_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @suj_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suj_read() #0 {
  %1 = alloca [1048576 x i32], align 16
  %2 = alloca %struct.suj_seg*, align 8
  %3 = alloca %struct.jsegrec*, align 8
  %4 = alloca %struct.jsegrec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  br label %11

11:                                               ; preds = %159, %106, %0
  br label %12

12:                                               ; preds = %214, %11
  store i32 4194304, i32* %9, align 4
  %13 = load i32, i32* @suj_jblocks, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @jblocks_next(i32 %13, i32 %14, i32* %6)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  ret void

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %5, align 8
  %22 = bitcast [1048576 x i32]* %1 to i32**
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @bread(i32* @disk, i64 %21, i32** %22, i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @err_suj(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = getelementptr inbounds [1048576 x i32], [1048576 x i32]* %1, i64 0, i64 0
  %32 = bitcast i32* %31 to i8*
  %33 = bitcast i8* %32 to %struct.jsegrec*
  store %struct.jsegrec* %33, %struct.jsegrec** %4, align 8
  br label %34

34:                                               ; preds = %204, %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %214

37:                                               ; preds = %34
  %38 = load i32, i32* @real_dev_bsize, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %40 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load i64, i64* @debug, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %51 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53, i64 %56)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, i32* @suj_jblocks, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @jblocks_advance(i32 %59, i32 %60)
  br label %204

62:                                               ; preds = %37
  %63 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %64 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i64, i64* @debug, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %72 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @suj_jblocks, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @jblocks_advance(i32 %77, i32 %78)
  br label %204

80:                                               ; preds = %62
  %81 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %82 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @real_dev_bsize, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fs, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %11

107:                                              ; preds = %100, %96, %90
  %108 = load i64, i64* @debug, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* @real_dev_bsize, align 4
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @suj_jblocks, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @jblocks_advance(i32 %116, i32 %117)
  br label %204

119:                                              ; preds = %80
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %166, %119
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %169

124:                                              ; preds = %120
  %125 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %126 = ptrtoint %struct.jsegrec* %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @real_dev_bsize, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %127, i64 %131
  %133 = bitcast i8* %132 to %struct.jsegrec*
  store %struct.jsegrec* %133, %struct.jsegrec** %3, align 8
  %134 = load %struct.jsegrec*, %struct.jsegrec** %3, align 8
  %135 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %138 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %124
  %142 = load %struct.jsegrec*, %struct.jsegrec** %3, align 8
  %143 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %146 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %166

150:                                              ; preds = %141, %124
  %151 = load i64, i64* @debug, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %155 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %150
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @real_dev_bsize, align 4
  %162 = mul nsw i32 %160, %161
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* @suj_jblocks, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @jblocks_advance(i32 %163, i32 %164)
  br label %11

166:                                              ; preds = %149
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %120

169:                                              ; preds = %120
  %170 = call i8* @errmalloc(i32 40)
  %171 = bitcast i8* %170 to %struct.suj_seg*
  store %struct.suj_seg* %171, %struct.suj_seg** %2, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i8* @errmalloc(i32 %172)
  %174 = load %struct.suj_seg*, %struct.suj_seg** %2, align 8
  %175 = getelementptr inbounds %struct.suj_seg, %struct.suj_seg* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.suj_seg*, %struct.suj_seg** %2, align 8
  %177 = getelementptr inbounds %struct.suj_seg, %struct.suj_seg* %176, i32 0, i32 1
  %178 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %179 = bitcast %struct.jsegrec* %177 to i8*
  %180 = bitcast %struct.jsegrec* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 32, i1 false)
  %181 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %182 = bitcast %struct.jsegrec* %181 to i8*
  %183 = load %struct.suj_seg*, %struct.suj_seg** %2, align 8
  %184 = getelementptr inbounds %struct.suj_seg, %struct.suj_seg* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @bcopy(i8* %182, i8* %185, i32 %186)
  %188 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %189 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @oldseq, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %169
  %194 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %195 = getelementptr inbounds %struct.jsegrec, %struct.jsegrec* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* @oldseq, align 8
  br label %197

197:                                              ; preds = %193, %169
  %198 = load %struct.suj_seg*, %struct.suj_seg** %2, align 8
  %199 = load i32, i32* @ss_next, align 4
  %200 = call i32 @TAILQ_INSERT_TAIL(i32* @allsegs, %struct.suj_seg* %198, i32 %199)
  %201 = load i32, i32* @suj_jblocks, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @jblocks_advance(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %197, %114, %76, %58
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %9, align 4
  %208 = load %struct.jsegrec*, %struct.jsegrec** %4, align 8
  %209 = ptrtoint %struct.jsegrec* %208 to i64
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %209, %211
  %213 = inttoptr i64 %212 to %struct.jsegrec*
  store %struct.jsegrec* %213, %struct.jsegrec** %4, align 8
  br label %34

214:                                              ; preds = %34
  br label %12
}

declare dso_local i64 @jblocks_next(i32, i32, i32*) #1

declare dso_local i32 @bread(i32*, i64, i32**, i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @jblocks_advance(i32, i32) #1

declare dso_local i8* @errmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.suj_seg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
