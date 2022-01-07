; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_subsystem_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_session_subsystem_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8**, i8**, i8** }
%struct.ssh = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"subsystem request for %.100s by user %s\00", align 1
@options = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@INTERNAL_SFTP_NAME = common dso_local global i32 0, align 4
@SUBSYSTEM_INT_SFTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"subsystem: %s\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"subsystem: cannot stat %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SUBSYSTEM_EXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"subsystem: exec() %s\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"subsystem request for %.100s by user %s failed, subsystem not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.TYPE_7__*)* @session_subsystem_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_subsystem_req(%struct.ssh* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @packet_get_string(i64* %6)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = call i32 (...) @packet_check_eom()
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @debug2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %80, %2
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 0), align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 1), align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @strcmp(i32 %31, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %28
  %39 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 2), align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i8*, i8** %39, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @options, i32 0, i32 3), align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load i32, i32* @INTERNAL_SFTP_NAME, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @strcmp(i32 %47, i8* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load i32, i32* @SUBSYSTEM_INT_SFTP, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %72

57:                                               ; preds = %38
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @stat(i8* %58, %struct.stat* %5)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* @SUBSYSTEM_EXT, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %66, %51
  %73 = load %struct.ssh*, %struct.ssh** %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @do_exec(%struct.ssh* %73, %struct.TYPE_7__* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %28
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  br label %24

83:                                               ; preds = %72, %24
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @logit(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %86, %83
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @packet_get_string(i64*) #1

declare dso_local i32 @packet_check_eom(...) #1

declare dso_local i32 @debug2(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @do_exec(%struct.ssh*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @logit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
