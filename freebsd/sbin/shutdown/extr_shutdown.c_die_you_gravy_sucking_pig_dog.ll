; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_die_you_gravy_sucking_pig_dog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_die_you_gravy_sucking_pig_dog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s by %s: %s\00", align 1
@doreboot = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@dohalt = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"halt\00", align 1
@dopower = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"power-down\00", align 1
@docycle = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"power-cycle\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@whom = common dso_local global i32 0, align 4
@mbuf = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"\0D\0ASystem shutdown time has arrived\07\07\0D\0A\00", align 1
@killflg = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"\0Dbut you'll have to do it yourself\0D\0A\00", align 1
@oflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@_PATH_REBOOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@nosync = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"shutdown: can't exec %s: %m.\00", align 1
@_PATH_HALT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @die_you_gravy_sucking_pig_dog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_you_gravy_sucking_pig_dog() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 8, i1 false)
  %3 = load i32, i32* @LOG_NOTICE, align 4
  %4 = load i64, i64* @doreboot, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %24

7:                                                ; preds = %0
  %8 = load i64, i64* @dohalt, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %22

11:                                               ; preds = %7
  %12 = load i64, i64* @dopower, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %20

15:                                               ; preds = %11
  %16 = load i64, i64* @docycle, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %14 ], [ %19, %15 ]
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %10 ], [ %21, %20 ]
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %6 ], [ %23, %22 ]
  %26 = load i32, i32* @whom, align 4
  %27 = load i32, i32* @mbuf, align 4
  %28 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26, i32 %27)
  %29 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %30 = load i64, i64* @killflg, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %34 = call i32 @exit(i32 0) #4
  unreachable

35:                                               ; preds = %24
  %36 = load i32, i32* @oflag, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %69, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @doreboot, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @SIGINT, align 4
  br label %66

43:                                               ; preds = %38
  %44 = load i64, i64* @dohalt, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SIGUSR1, align 4
  br label %64

48:                                               ; preds = %43
  %49 = load i64, i64* @dopower, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @SIGUSR2, align 4
  br label %62

53:                                               ; preds = %48
  %54 = load i64, i64* @docycle, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @SIGWINCH, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @SIGTERM, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %51
  %63 = phi i32 [ %52, %51 ], [ %61, %60 ]
  br label %64

64:                                               ; preds = %62, %46
  %65 = phi i32 [ %47, %46 ], [ %63, %62 ]
  br label %66

66:                                               ; preds = %64, %41
  %67 = phi i32 [ %42, %41 ], [ %65, %64 ]
  %68 = call i32 @kill(i32 1, i32 %67)
  br label %139

69:                                               ; preds = %35
  %70 = load i64, i64* @doreboot, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* @_PATH_REBOOT, align 4
  %74 = load i32*, i32** @nosync, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %77 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @execle(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %75, i8* null, i8** %76)
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load i32, i32* @_PATH_REBOOT, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @_PATH_REBOOT, align 4
  %84 = call i32 @warn(i32 %83)
  br label %136

85:                                               ; preds = %69
  %86 = load i64, i64* @dohalt, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* @_PATH_HALT, align 4
  %90 = load i32*, i32** @nosync, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %93 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @execle(i32 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %91, i8* null, i8** %92)
  %94 = load i32, i32* @LOG_ERR, align 4
  %95 = load i32, i32* @_PATH_HALT, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @_PATH_HALT, align 4
  %100 = call i32 @warn(i32 %99)
  br label %135

101:                                              ; preds = %85
  %102 = load i64, i64* @dopower, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* @_PATH_HALT, align 4
  %106 = load i32*, i32** @nosync, align 8
  %107 = bitcast i32* %106 to i8*
  %108 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %109 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @execle(i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %107, i8* null, i8** %108)
  %110 = load i32, i32* @LOG_ERR, align 4
  %111 = load i32, i32* @_PATH_HALT, align 4
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %113)
  %115 = load i32, i32* @_PATH_HALT, align 4
  %116 = call i32 @warn(i32 %115)
  br label %134

117:                                              ; preds = %101
  %118 = load i64, i64* @docycle, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %117
  %121 = load i32, i32* @_PATH_HALT, align 4
  %122 = load i32*, i32** @nosync, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  %125 = call i32 (i32, i8*, i8*, i8*, i8*, ...) @execle(i32 %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %123, i8* null, i8** %124)
  %126 = load i32, i32* @LOG_ERR, align 4
  %127 = load i32, i32* @_PATH_HALT, align 4
  %128 = sext i32 %127 to i64
  %129 = inttoptr i64 %128 to i8*
  %130 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %126, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* @_PATH_HALT, align 4
  %132 = call i32 @warn(i32 %131)
  br label %133

133:                                              ; preds = %120, %117
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %88
  br label %136

136:                                              ; preds = %135, %72
  %137 = load i32, i32* @SIGTERM, align 4
  %138 = call i32 @kill(i32 1, i32 %137)
  br label %139

139:                                              ; preds = %136, %66
  %140 = call i32 @finish(i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @kill(i32, i32) #2

declare dso_local i32 @execle(i32, i8*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @warn(i32) #2

declare dso_local i32 @finish(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
