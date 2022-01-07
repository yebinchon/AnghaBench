; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_doslave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_tape.c_doslave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, %struct.req* }
%struct.req = type { i64, i64 }

@diskfd = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"slave couldn't reopen disk: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"master/slave protocol botched - didn't get pid of next slave.\0A\00", align 1
@slp = common dso_local global %struct.TYPE_2__* null, align 8
@reqsiz = common dso_local global i32 0, align 4
@trecno = common dso_local global i64 0, align 8
@ntrec = common dso_local global i64 0, align 8
@TP_BSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"master/slave protocol botched.\0A\00", align 1
@jmpbuf = common dso_local global i32 0, align 4
@ready = common dso_local global i32 0, align 4
@caught = common dso_local global i64 0, align 8
@writesize = common dso_local global i32 0, align 4
@tapefd = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i64 0, align 8
@master = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error reading command pipe: %s\0A\00", align 1
@host = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @doslave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doslave(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.req*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @diskfd, align 4
  %12 = call i32 @close(i32 %11)
  %13 = load i32, i32* @disk, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i32 %13, i32 %14)
  store i32 %15, i32* @diskfd, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = call i32 @strerror(i64 %18)
  %20 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %3, align 4
  %23 = bitcast i32* %6 to i8*
  %24 = call i32 @atomic(i32 (i32, i64, i32)* @read, i32 %22, i8* %23, i32 4)
  store i32 %24, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %178, %29
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slp, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.req*, %struct.req** %33, align 8
  %35 = bitcast %struct.req* %34 to i8*
  %36 = load i32, i32* @reqsiz, align 4
  %37 = call i32 @atomic(i32 (i32, i64, i32)* @read, i32 %31, i8* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @reqsiz, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %182

40:                                               ; preds = %30
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slp, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.req*, %struct.req** %42, align 8
  store %struct.req* %43, %struct.req** %10, align 8
  store i64 0, i64* @trecno, align 8
  br label %44

44:                                               ; preds = %93, %40
  %45 = load i64, i64* @trecno, align 8
  %46 = load i64, i64* @ntrec, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %44
  %49 = load %struct.req*, %struct.req** %10, align 8
  %50 = getelementptr inbounds %struct.req, %struct.req* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load %struct.req*, %struct.req** %10, align 8
  %55 = getelementptr inbounds %struct.req, %struct.req* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slp, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @trecno, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.req*, %struct.req** %10, align 8
  %64 = getelementptr inbounds %struct.req, %struct.req* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @TP_BSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %65, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @blkread(i64 %56, i64 %62, i32 %69)
  br label %92

71:                                               ; preds = %48
  %72 = load %struct.req*, %struct.req** %10, align 8
  %73 = getelementptr inbounds %struct.req, %struct.req* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 1
  br i1 %75, label %89, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slp, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @trecno, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load i32, i32* @TP_BSIZE, align 4
  %86 = call i32 @atomic(i32 (i32, i64, i32)* @read, i32 %77, i8* %84, i32 %85)
  %87 = load i32, i32* @TP_BSIZE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %76, %71
  %90 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %76
  br label %92

92:                                               ; preds = %91, %53
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.req*, %struct.req** %10, align 8
  %95 = getelementptr inbounds %struct.req, %struct.req* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @trecno, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* @trecno, align 8
  %99 = load %struct.req*, %struct.req** %10, align 8
  %100 = getelementptr inbounds %struct.req, %struct.req* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.req*, %struct.req** %10, align 8
  %103 = getelementptr inbounds %struct.req, %struct.req* %102, i64 %101
  store %struct.req* %103, %struct.req** %10, align 8
  br label %44

104:                                              ; preds = %44
  %105 = load i32, i32* @jmpbuf, align 4
  %106 = call i64 @setjmp(i32 %105) #3
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  store i32 1, i32* @ready, align 4
  %109 = load i64, i64* @caught, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = call i32 (...) @pause()
  br label %113

113:                                              ; preds = %111, %108
  br label %114

114:                                              ; preds = %113, %104
  store i32 0, i32* @ready, align 4
  store i64 0, i64* @caught, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %147, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 10
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @writesize, align 4
  %121 = icmp slt i32 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %124, label %151

124:                                              ; preds = %122
  %125 = load i32, i32* @tapefd, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slp, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load i32, i32* @writesize, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 @write(i32 %125, i64 %133, i32 %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %151

141:                                              ; preds = %124
  %142 = load i32, i32* %8, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %7, align 4
  br label %115

151:                                              ; preds = %140, %122
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i64, i64* @errno, align 8
  %156 = load i64, i64* @ENOSPC, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %158, %154, %151
  %162 = load i32, i32* %9, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %164, %161
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* @master, align 4
  %170 = load i32, i32* @SIGUSR1, align 4
  %171 = call i32 @kill(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %172, %168
  %173 = call i32 @sigpause(i32 0)
  br label %172

174:                                              ; preds = %165
  %175 = load i32, i32* %3, align 4
  %176 = bitcast i32* %7 to i8*
  %177 = call i32 @atomic(i32 (i32, i64, i32)* @write, i32 %175, i8* %176, i32 4)
  br label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @SIGUSR2, align 4
  %181 = call i32 @kill(i32 %179, i32 %180)
  br label %30

182:                                              ; preds = %30
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i64, i64* @errno, align 8
  %187 = call i32 @strerror(i64 %186)
  %188 = call i32 (i8*, ...) @quit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %185, %182
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @quit(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @atomic(i32 (i32, i64, i32)*, i32, i8*, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @blkread(i64, i64, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @pause(...) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @sigpause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
