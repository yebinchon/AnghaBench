; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_supervise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_fsm.c_supervise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@SESS_DISCONNECT = common dso_local global i32 0, align 4
@T9 = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"ready to go scsi\0A\00", align 1
@SESS_FULLFEATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"daemon\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"iscontrol\00", align 1
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_KERN = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@currsess = common dso_local global %struct.TYPE_8__* null, align 8
@ISCSISTART = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"ISCSISTART\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"no device found\00", align 1
@ISCSISTOP = common dso_local global i32 0, align 4
@T15 = common dso_local global i32 0, align 4
@ISCSIRESTART = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"ISCSIRESTART\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@trap = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@ISCSISIGNAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"ISCSISIGNAL\00", align 1
@SESS_REDIRECT = common dso_local global i32 0, align 4
@SESS_RECONNECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"iscontrol: supervise starting main loop\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"iscontrol: supervise going down\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"sess flags=%x\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"ISCSISTOP\00", align 1
@SESS_INITIALLOGIN1 = common dso_local global i32 0, align 4
@T8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @supervise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supervise(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @debug_called(i32 3)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* @SESS_DISCONNECT, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @T9, align 4
  store i32 %21, i32* %2, align 4
  br label %215

22:                                               ; preds = %1
  %23 = load i64, i64* @vflag, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i32, i32* @SESS_FULLFEATURE, align 4
  %30 = call i64 @setOptions(%struct.TYPE_8__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %215

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SESS_FULLFEATURE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %33
  %41 = call i64 @daemon(i32 0, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32* @fopen(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %59, i32** %6, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 (...) @getpid()
  %65 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @fclose(i32* %66)
  br label %68

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32, i32* @LOG_CONS, align 4
  %71 = load i32, i32* @LOG_PERROR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @LOG_PID, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @LOG_NDELAY, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @LOG_KERN, align 4
  %78 = call i32 @openlog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @LOG_INFO, align 4
  %80 = call i32 (i32, i8*, ...) @syslog(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** @currsess, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ISCSISTART, align 4
  %86 = call i64 (i32, i32, ...) @ioctl(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

90:                                               ; preds = %69
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = call i64 @doCAM(%struct.TYPE_8__* %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* @LOG_WARNING, align 4
  %96 = call i32 (i32, i8*, ...) @syslog(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ISCSISTOP, align 4
  %101 = call i64 (i32, i32, ...) @ioctl(i32 %99, i32 %100)
  %102 = load i32, i32* @T15, align 4
  store i32 %102, i32* %2, align 4
  br label %215

103:                                              ; preds = %90
  br label %114

104:                                              ; preds = %33
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ISCSIRESTART, align 4
  %109 = call i64 (i32, i32, ...) @ioctl(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %103
  %115 = load i32, i32* @SIGINT, align 4
  %116 = load i32, i32* @trap, align 4
  %117 = call i32 @signal(i32 %115, i32 %116)
  %118 = load i32, i32* @SIGHUP, align 4
  %119 = load i32, i32* @trap, align 4
  %120 = call i32 @signal(i32 %118, i32 %119)
  %121 = load i32, i32* @SIGTERM, align 4
  %122 = load i32, i32* @trap, align 4
  %123 = call i32 @signal(i32 %121, i32 %122)
  %124 = load i32, i32* @SIGUSR1, align 4
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @trap, align 4
  %127 = call i32 @signal(i32 %125, i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ISCSISIGNAL, align 4
  %132 = call i64 (i32, i32, ...) @ioctl(i32 %130, i32 %131, i32* %4)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %114
  %135 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %215

136:                                              ; preds = %114
  %137 = load i32, i32* @SESS_FULLFEATURE, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @SESS_REDIRECT, align 4
  %143 = load i32, i32* @SESS_RECONNECT, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i64, i64* @vflag, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %136
  %153 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %136
  br label %155

155:                                              ; preds = %166, %154
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SESS_REDIRECT, align 4
  %160 = load i32, i32* @SESS_RECONNECT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @SESS_DISCONNECT, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %158, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = call i32 @sleep(i32 60)
  br label %155

168:                                              ; preds = %155
  %169 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %170 = load i32, i32* @LOG_INFO, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32, i8*, ...) @syslog(i32 %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %173)
  store i32 0, i32* %4, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ISCSISIGNAL, align 4
  %179 = call i64 (i32, i32, ...) @ioctl(i32 %177, i32 %178, i32* %4)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %168
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SESS_DISCONNECT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %183
  %191 = load i32, i32* @SESS_FULLFEATURE, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* @T9, align 4
  store i32 %197, i32* %2, align 4
  br label %215

198:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ISCSISTOP, align 4
  %203 = call i64 (i32, i32, ...) @ioctl(i32 %201, i32 %202, i32* %5)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %198
  %208 = load i32, i32* @SESS_INITIALLOGIN1, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207
  %214 = load i32, i32* @T8, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %213, %190, %134, %111, %94, %88, %32, %15
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @setOptions(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i64 @doCAM(%struct.TYPE_8__*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
