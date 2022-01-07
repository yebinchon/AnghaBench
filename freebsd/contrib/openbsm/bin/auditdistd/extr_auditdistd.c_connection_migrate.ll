; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_auditdistd.c_connection_migrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_auditdistd.c_connection_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adist_host = type { i64, i8*, i32, i32, i32, i32 }
%struct.proto_conn = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@ADIST_ROLE_SENDER = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to receive connection command\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tls:fingerprint\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to set fingerprint\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to send reply to connection request\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to send connection\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adist_host*)* @connection_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_migrate(%struct.adist_host* %0) #0 {
  %2 = alloca %struct.adist_host*, align 8
  %3 = alloca %struct.proto_conn*, align 8
  %4 = alloca i64, align 8
  store %struct.adist_host* %0, %struct.adist_host** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %6 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %11 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @role2str(i64 %12)
  %14 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %13)
  %15 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %16 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADIST_ROLE_SENDER, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %23 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @proto_recv(i32 %24, i64* %4, i32 8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @LOG_WARNING, align 4
  %29 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %92

30:                                               ; preds = %1
  %31 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %32 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @proto_set(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @errno, align 8
  store i64 %37, i64* %4, align 8
  %38 = load i32, i32* @LOG_WARNING, align 4
  %39 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %68

40:                                               ; preds = %30
  %41 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %42 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %50 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8* [ %51, %48 ], [ null, %52 ]
  %55 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %56 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @proto_connect(i8* %54, i32 %57, i32 -1, %struct.proto_conn** %3)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i64, i64* @errno, align 8
  store i64 %61, i64* %4, align 8
  %62 = load i32, i32* @LOG_WARNING, align 4
  %63 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %64 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %53
  store i64 0, i64* %4, align 8
  br label %68

68:                                               ; preds = %67, %60, %36
  %69 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %70 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @proto_send(i32 %71, i64* %4, i32 8)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @LOG_WARNING, align 4
  %76 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i64, i64* %4, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.adist_host*, %struct.adist_host** %2, align 8
  %82 = getelementptr inbounds %struct.adist_host, %struct.adist_host* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %85 = call i64 @proto_connection_send(i32 %83, %struct.proto_conn* %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @LOG_WARNING, align 4
  %89 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %80, %77
  %91 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %27
  ret void
}

declare dso_local i32 @pjdlog_prefix_set(i8*, i8*, ...) #1

declare dso_local i32 @role2str(i64) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @proto_recv(i32, i64*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local i32 @proto_set(i8*, i32) #1

declare dso_local i64 @proto_connect(i8*, i32, i32, %struct.proto_conn**) #1

declare dso_local i64 @proto_send(i32, i64*, i32) #1

declare dso_local i64 @proto_connection_send(i32, %struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
