; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_findinode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_findinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.s_spcl = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32* }

@findinode.skipcnt = internal global i64 0, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"<name unknown>\00", align 1
@curfile = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@UNKNOWN = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@dumpdate = common dso_local global i32 0, align 4
@Dflag = common dso_local global i64 0, align 8
@byteslide = common dso_local global i32 0, align 4
@blkcnt = common dso_local global i32 0, align 4
@blksread = common dso_local global i32 0, align 4
@tapesread = common dso_local global i32 0, align 4
@maxino = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"<file removal list>\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<file dump list>\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"unexpected tape header\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unknown tape header type %d\0A\00", align 1
@spcl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"resync restore, skipped %ld %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_spcl*)* @findinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findinode(%struct.s_spcl* %0) #0 {
  %2 = alloca %struct.s_spcl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.s_spcl* %0, %struct.s_spcl** %2, align 8
  %7 = load i32, i32* @TP_BSIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 0), align 8
  %11 = load i32, i32* @UNKNOWN, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 1), align 8
  br label %12

12:                                               ; preds = %183, %1
  %13 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %14 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %137 [
    i32 133, label %17
    i32 129, label %73
    i32 130, label %116
    i32 131, label %126
    i32 132, label %127
    i32 128, label %128
  ]

17:                                               ; preds = %12
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %21 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %26 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %25, i32 0, i32 17
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @readtape(i8* %10)
  br label %34

34:                                               ; preds = %32, %24
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %18

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %71, %38
  %40 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %41 = call i32 @gethead(%struct.s_spcl* %40)
  %42 = load i32, i32* @FAIL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %46 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @_time64_to_time(i32 %47)
  %49 = load i32, i32* @dumpdate, align 4
  %50 = icmp ne i32 %48, %49
  br label %51

51:                                               ; preds = %44, %39
  %52 = phi i1 [ true, %39 ], [ %50, %44 ]
  br i1 %52, label %53, label %72

53:                                               ; preds = %51
  %54 = load i64, i64* @findinode.skipcnt, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @findinode.skipcnt, align 8
  %56 = load i64, i64* @Dflag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* @byteslide, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @byteslide, align 4
  %61 = load i32, i32* @byteslide, align 4
  %62 = load i32, i32* @TP_BSIZE, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @blkcnt, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* @blkcnt, align 4
  %67 = load i32, i32* @blksread, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* @blksread, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* @byteslide, align 4
  br label %70

70:                                               ; preds = %69, %64
  br label %71

71:                                               ; preds = %70, %53
  br label %39

72:                                               ; preds = %51
  br label %182

73:                                               ; preds = %12
  %74 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %75 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %74, i32 0, i32 16
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 14), align 8
  %77 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %78 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 13), align 4
  %80 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %81 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 12), align 8
  %83 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %84 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 11), align 4
  %86 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %87 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 10), align 8
  %89 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %90 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %89, i32 0, i32 11
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 9), align 4
  %92 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %93 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 8), align 8
  %95 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %96 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 7), align 4
  %98 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %99 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 6), align 8
  %101 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %102 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 5), align 4
  %104 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %105 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 4), align 8
  %107 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %108 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 3), align 4
  %110 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %111 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 2), align 8
  %113 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %114 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 1), align 8
  br label %182

116:                                              ; preds = %12
  %117 = load i32, i32* @tapesread, align 4
  %118 = load i32, i32* @tapesread, align 4
  %119 = add nsw i32 %118, 1
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = call i32 @getvol(i32 0)
  br label %183

124:                                              ; preds = %116
  %125 = load i64, i64* @maxino, align 8
  store i64 %125, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 1), align 8
  br label %182

126:                                              ; preds = %12
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 0), align 8
  br label %182

127:                                              ; preds = %12
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @curfile, i32 0, i32 0), align 8
  br label %182

128:                                              ; preds = %12
  %129 = load i64, i64* @Dflag, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %136

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %131
  br label %137

137:                                              ; preds = %12, %136
  %138 = load i64, i64* @Dflag, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @stderr, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 0), align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %147

144:                                              ; preds = %137
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @spcl, i32 0, i32 0), align 4
  %146 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %180, %147
  %149 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %150 = call i32 @gethead(%struct.s_spcl* %149)
  %151 = load i32, i32* @FAIL, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %148
  %154 = load %struct.s_spcl*, %struct.s_spcl** %2, align 8
  %155 = getelementptr inbounds %struct.s_spcl, %struct.s_spcl* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @_time64_to_time(i32 %156)
  %158 = load i32, i32* @dumpdate, align 4
  %159 = icmp ne i32 %157, %158
  br label %160

160:                                              ; preds = %153, %148
  %161 = phi i1 [ true, %148 ], [ %159, %153 ]
  br i1 %161, label %162, label %181

162:                                              ; preds = %160
  %163 = load i64, i64* @findinode.skipcnt, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* @findinode.skipcnt, align 8
  %165 = load i64, i64* @Dflag, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %180

167:                                              ; preds = %162
  %168 = load i32, i32* @byteslide, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @byteslide, align 4
  %170 = load i32, i32* @byteslide, align 4
  %171 = load i32, i32* @TP_BSIZE, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load i32, i32* @blkcnt, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* @blkcnt, align 4
  %176 = load i32, i32* @blksread, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* @blksread, align 4
  br label %179

178:                                              ; preds = %167
  store i32 0, i32* @byteslide, align 4
  br label %179

179:                                              ; preds = %178, %173
  br label %180

180:                                              ; preds = %179, %162
  br label %148

181:                                              ; preds = %160
  br label %182

182:                                              ; preds = %181, %127, %126, %124, %73, %72
  br label %183

183:                                              ; preds = %182, %122
  %184 = load i32, i32* %6, align 4
  %185 = icmp eq i32 %184, 133
  br i1 %185, label %12, label %186

186:                                              ; preds = %183
  %187 = load i64, i64* @findinode.skipcnt, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = load i32, i32* @stderr, align 4
  %191 = load i64, i64* @findinode.skipcnt, align 8
  %192 = load i64, i64* @Dflag, align 8
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %191, i8* %195)
  br label %197

197:                                              ; preds = %189, %186
  store i64 0, i64* @findinode.skipcnt, align 8
  %198 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %198)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readtape(i8*) #2

declare dso_local i32 @gethead(%struct.s_spcl*) #2

declare dso_local i32 @_time64_to_time(i32) #2

declare dso_local i32 @getvol(i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @panic(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
