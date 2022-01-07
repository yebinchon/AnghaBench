; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_call_exec_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_call_exec_client.c"
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
@TLS_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"execpath\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"tls:fingerprint\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"tcp:port\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"execl() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proto_conn*, i8*, i8*, i32)* @tls_call_exec_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_call_exec_client(%struct.proto_conn* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.proto_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %14 = call i32 @proto_recv(%struct.proto_conn* %13, i32* null, i32 0)
  %15 = call i64 (...) @pjdlog_mode_get()
  %16 = load i64, i64* @PJDLOG_MODE_STD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 3, i32* %12, align 4
  br label %20

19:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %22 = call i32 @proto_descriptor(%struct.proto_conn* %21)
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %27 = call i32 @proto_descriptor(%struct.proto_conn* %26)
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @dup2(i32 %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EX_OSERR, align 4
  %33 = call i32 @pjdlog_exit(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %36 = call i32 @proto_close(%struct.proto_conn* %35)
  br label %46

37:                                               ; preds = %20
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @F_SETFD, align 4
  %40 = call i32 @fcntl(i32 %38, i32 %39, i32 0)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EX_OSERR, align 4
  %44 = call i32 @pjdlog_exit(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %34
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @closefrom(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EX_TEMPFAIL, align 4
  %55 = call i32 @pjdlog_exit(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @TLS_DEFAULT_TIMEOUT, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EX_TEMPFAIL, align 4
  %67 = call i32 @pjdlog_exit(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  %69 = call i32 (...) @pjdlog_debug_get()
  %70 = call i32 @asprintf(i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @EX_TEMPFAIL, align 4
  %74 = call i32 @pjdlog_exit(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  %76 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %77 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @proto_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %85

83:                                               ; preds = %75
  %84 = load i8*, i8** %6, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %82 ], [ %84, %83 ]
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @proto_get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %89 = call i32 @proto_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @execl(i32 %76, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %79, i8* %86, i8* %87, i32 %88, i32 %89, i8* %90, i8* %91, i32* null)
  %93 = load i32, i32* @EX_SOFTWARE, align 4
  %94 = call i32 @pjdlog_exit(i32 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @proto_recv(%struct.proto_conn*, i32*, i32) #1

declare dso_local i64 @pjdlog_mode_get(...) #1

declare dso_local i32 @proto_descriptor(%struct.proto_conn*) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @pjdlog_exit(i32, i8*) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @closefrom(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @pjdlog_debug_get(...) #1

declare dso_local i32 @execl(i32, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @proto_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
