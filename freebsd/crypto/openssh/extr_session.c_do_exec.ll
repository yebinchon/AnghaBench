; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_do_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.ssh = type { i32 }
%struct.TYPE_9__ = type { i8*, i32, i8*, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@options = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@original_command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"(config)\00", align 1
@auth_opts = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"(key-option)\00", align 1
@SUBSYSTEM_INT_SFTP = common dso_local global i64 0, align 8
@SUBSYSTEM_INT_SFTP_ERROR = common dso_local global i64 0, align 8
@SUBSYSTEM_EXT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"forced-command %s '%.900s'\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"subsystem '%.900s'\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Starting session: %s%s%s for %s from %.200s port %d id %d\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" on \00", align 1
@loginmsg = common dso_local global i32 0, align 4
@_PATH_BSHELL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_exec(%struct.ssh* %0, %struct.TYPE_9__* %1, i8* %2) #0 {
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 0), align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** @original_command, align 8
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @options, i32 0, i32 0), align 8
  store i8* %15, i8** %6, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @auth_opts, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** @original_command, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @auth_opts, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @IS_INTERNAL_SFTP(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* @SUBSYSTEM_INT_SFTP, align 8
  br label %43

41:                                               ; preds = %34
  %42 = load i64, i64* @SUBSYSTEM_INT_SFTP_ERROR, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  br label %57

47:                                               ; preds = %30
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i64, i64* @SUBSYSTEM_EXT, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 5
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  br label %57

57:                                               ; preds = %56, %43
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %58, i32 1024, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* %60)
  br label %84

62:                                               ; preds = %27
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  br label %83

73:                                               ; preds = %62
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %78 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %82

79:                                               ; preds = %73
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %81 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %80, i32 1024, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %9, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @strncmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 5
  store i8* %98, i8** %9, align 8
  br label %99

99:                                               ; preds = %96, %89
  br label %100

100:                                              ; preds = %99, %84
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %102 = load i8*, i8** %9, align 8
  %103 = icmp eq i8* %102, null
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %106 = load i8*, i8** %9, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %111

109:                                              ; preds = %100
  %110 = load i8*, i8** %9, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %108 ], [ %110, %109 ]
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ssh*, %struct.ssh** %4, align 8
  %119 = call i32 @ssh_remote_ipaddr(%struct.ssh* %118)
  %120 = load %struct.ssh*, %struct.ssh** %4, align 8
  %121 = call i32 @ssh_remote_port(%struct.ssh* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @verbose(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i8* %101, i8* %105, i8* %112, i32 %117, i32 %119, i32 %121, i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %135

130:                                              ; preds = %111
  %131 = load %struct.ssh*, %struct.ssh** %4, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @do_exec_pty(%struct.ssh* %131, %struct.TYPE_9__* %132, i8* %133)
  store i32 %134, i32* %7, align 4
  br label %140

135:                                              ; preds = %111
  %136 = load %struct.ssh*, %struct.ssh** %4, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @do_exec_no_pty(%struct.ssh* %136, %struct.TYPE_9__* %137, i8* %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %135, %130
  store i8* null, i8** @original_command, align 8
  %141 = load i32, i32* @loginmsg, align 4
  %142 = call i32 @sshbuf_reset(i32 %141)
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i64 @IS_INTERNAL_SFTP(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @verbose(i8*, i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ssh_remote_ipaddr(%struct.ssh*) #1

declare dso_local i32 @ssh_remote_port(%struct.ssh*) #1

declare dso_local i32 @do_exec_pty(%struct.ssh*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @do_exec_no_pty(%struct.ssh*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sshbuf_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
