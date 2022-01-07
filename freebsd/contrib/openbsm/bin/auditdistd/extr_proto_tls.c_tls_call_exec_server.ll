; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_call_exec_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_call_exec_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i32 }

@PJDLOG_MODE_STD = common dso_local global i64 0, align 8
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dup2() failed\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fcntl() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"asprintf() failed\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"execpath\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"tls:keyfile\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"tls:certfile\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"execl() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proto_conn*, %struct.proto_conn*)* @tls_call_exec_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_call_exec_server(%struct.proto_conn* %0, %struct.proto_conn* %1) #0 {
  %3 = alloca %struct.proto_conn*, align 8
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.proto_conn* %0, %struct.proto_conn** %3, align 8
  store %struct.proto_conn* %1, %struct.proto_conn** %4, align 8
  %11 = call i64 (...) @pjdlog_mode_get()
  %12 = load i64, i64* @PJDLOG_MODE_STD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 3, i32* %5, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %18 = call i32 @proto_send(%struct.proto_conn* %17, i32* null, i32 0)
  %19 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %20 = call i32 @proto_descriptor(%struct.proto_conn* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %22 = call i32 @proto_descriptor(%struct.proto_conn* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MAX(i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @MAX(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dup2(i32 %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @EX_OSERR, align 4
  %37 = call i32 @pjdlog_exit(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %16
  %39 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %40 = call i32 @proto_close(%struct.proto_conn* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @dup2(i32 %42, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EX_OSERR, align 4
  %49 = call i32 @pjdlog_exit(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %52 = call i32 @proto_close(%struct.proto_conn* %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dup2(i32 %55, i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @EX_OSERR, align 4
  %61 = call i32 @pjdlog_exit(i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @dup2(i32 %65, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EX_OSERR, align 4
  %72 = call i32 @pjdlog_exit(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %62
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @close(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 2
  %78 = call i32 @closefrom(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @F_SETFD, align 4
  %81 = call i32 @fcntl(i32 %79, i32 %80, i32 0)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @EX_OSERR, align 4
  %85 = call i32 @pjdlog_exit(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %73
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* @F_SETFD, align 4
  %90 = call i32 @fcntl(i32 %88, i32 %89, i32 0)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EX_OSERR, align 4
  %94 = call i32 @pjdlog_exit(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EX_TEMPFAIL, align 4
  %101 = call i32 @pjdlog_exit(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %95
  %103 = call i32 (...) @pjdlog_debug_get()
  %104 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @EX_TEMPFAIL, align 4
  %108 = call i32 @pjdlog_exit(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %102
  %110 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %112 = call i32 @proto_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @proto_get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %115 = call i32 @proto_get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @execl(i32 %110, i32 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %113, i32 %114, i32 %115, i8* %116, i32* null)
  %118 = load i32, i32* @EX_SOFTWARE, align 4
  %119 = call i32 @pjdlog_exit(i32 %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pjdlog_mode_get(...) #1

declare dso_local i32 @proto_send(%struct.proto_conn*, i32*, i32) #1

declare dso_local i32 @proto_descriptor(%struct.proto_conn*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @pjdlog_debug_get(...) #1

declare dso_local i32 @execl(i32, i32, i8*, i8*, i32, i8*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @proto_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
