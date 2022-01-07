; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_flushtape.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_flushtape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i64*, i64 }

@nextblock = common dso_local global i64 0, align 8
@slp = common dso_local global %struct.TYPE_7__* null, align 8
@trecno = common dso_local global i64 0, align 8
@write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error writing command pipe: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@slaves = common dso_local global %struct.TYPE_7__* null, align 8
@SLAVES = common dso_local global i64 0, align 8
@read = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"  DUMP: error reading command pipe in master\00", align 1
@writesize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"End of tape detected\0A\00", align 1
@spcl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TS_END = common dso_local global i64 0, align 8
@TS_CLRI = common dso_local global i64 0, align 8
@TS_BITS = common dso_local global i64 0, align 8
@TP_NINDIR = common dso_local global i32 0, align 4
@lastspclrec = common dso_local global i64 0, align 8
@ntrec = common dso_local global i64 0, align 8
@curino = common dso_local global i32 0, align 4
@tenths = common dso_local global i64 0, align 8
@asize = common dso_local global i64 0, align 8
@blockswritten = common dso_local global i32 0, align 4
@blocksthisvol = common dso_local global i64 0, align 8
@pipeout = common dso_local global i32 0, align 4
@unlimited = common dso_local global i32 0, align 4
@blocksperfile = common dso_local global i64 0, align 8
@tsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flushtape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushtape() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i64, i64* @nextblock, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to i8*
  %12 = ptrtoint i8* %7 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i64, i64* @trecno, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @write, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = bitcast %struct.TYPE_5__* %28 to i8*
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @atomic(i32 %22, i32 %25, i8* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %0
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @quit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 1
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** @slp, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slaves, align 8
  %47 = load i64, i64* @SLAVES, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = icmp uge %struct.TYPE_7__* %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slaves, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** @slp, align 8
  br label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %53
  %59 = load i32, i32* @read, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = bitcast i32* %3 to i8*
  %64 = call i32 @atomic(i32 %59, i32 %62, i8* %63, i32 4)
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = call i32 @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @dumpabort(i32 0)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @writesize, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %119

76:                                               ; preds = %70
  %77 = call i32 @msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %113, %76
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @SLAVES, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slaves, align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %83
  %92 = load i32, i32* @read, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slaves, align 8
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = bitcast i32* %3 to i8*
  %100 = call i32 @atomic(i32 %92, i32 %98, i8* %99, i32 4)
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = call i32 @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %105 = call i32 @dumpabort(i32 0)
  br label %106

106:                                              ; preds = %103, %91
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slaves, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %83
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %1, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %1, align 4
  br label %78

116:                                              ; preds = %78
  %117 = call i32 (...) @close_rewind()
  %118 = call i32 (...) @rollforward()
  br label %213

119:                                              ; preds = %70
  br label %120

120:                                              ; preds = %119, %53
  store i32 0, i32* %2, align 4
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 0), align 8
  %122 = load i64, i64* @TS_END, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 0), align 8
  %126 = load i64, i64* @TS_CLRI, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %157

128:                                              ; preds = %124
  %129 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 0), align 8
  %130 = load i64, i64* @TS_BITS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 1), align 8
  %134 = load i32, i32* @TP_NINDIR, align 4
  %135 = icmp sle i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  store i32 0, i32* %1, align 4
  br label %138

138:                                              ; preds = %153, %132
  %139 = load i32, i32* %1, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 1), align 8
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %138
  %143 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 2), align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %2, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %149, %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %1, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %1, align 4
  br label %138

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156, %128, %124, %120
  %158 = load i64, i64* @lastspclrec, align 8
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = add nsw i64 %161, 1
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 3), align 8
  %164 = sub nsw i64 %162, %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @spcl, i32 0, i32 3), align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %4, align 8
  %171 = load i64, i64* @ntrec, align 8
  %172 = add nsw i64 %170, %171
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* @curino, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** @slp, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* @nextblock, align 8
  store i64 0, i64* @trecno, align 8
  %181 = load i64, i64* @tenths, align 8
  %182 = load i64, i64* @asize, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* @asize, align 8
  %184 = load i64, i64* @ntrec, align 8
  %185 = load i32, i32* @blockswritten, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* @blockswritten, align 4
  %189 = load i64, i64* @ntrec, align 8
  %190 = load i64, i64* @blocksthisvol, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* @blocksthisvol, align 8
  %192 = load i32, i32* @pipeout, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %211, label %194

194:                                              ; preds = %157
  %195 = load i32, i32* @unlimited, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* @blocksperfile, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i64, i64* @blocksthisvol, align 8
  %202 = load i64, i64* @blocksperfile, align 8
  %203 = icmp sge i64 %201, %202
  br i1 %203, label %208, label %211

204:                                              ; preds = %197
  %205 = load i64, i64* @asize, align 8
  %206 = load i64, i64* @tsize, align 8
  %207 = icmp sgt i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %204, %200
  %209 = call i32 (...) @close_rewind()
  %210 = call i32 @startnewtape(i32 0)
  br label %211

211:                                              ; preds = %208, %204, %200, %194, %157
  %212 = call i32 (...) @timeest()
  br label %213

213:                                              ; preds = %211, %116
  ret void
}

declare dso_local i32 @atomic(i32, i32, i8*, i32) #1

declare dso_local i32 @quit(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @dumpabort(i32) #1

declare dso_local i32 @msg(i8*) #1

declare dso_local i32 @close_rewind(...) #1

declare dso_local i32 @rollforward(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @startnewtape(i32) #1

declare dso_local i32 @timeest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
