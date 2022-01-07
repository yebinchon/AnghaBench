; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_connection_migrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hastd.c_connection_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hast_resource = type { i64, i8*, i32, i32, i32 }
%struct.proto_conn = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"[%s] (%s) \00", align 1
@HAST_ROLE_PRIMARY = common dso_local global i64 0, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to receive connection command\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to create outgoing connection to %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unable to connect to %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to send reply to connection request\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Unable to send connection\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hast_resource*)* @connection_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_migrate(%struct.hast_resource* %0) #0 {
  %2 = alloca %struct.hast_resource*, align 8
  %3 = alloca %struct.proto_conn*, align 8
  %4 = alloca i64, align 8
  store %struct.hast_resource* %0, %struct.hast_resource** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %6 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %11 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @role2str(i64 %12)
  %14 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %13)
  %15 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %16 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HAST_ROLE_PRIMARY, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %23 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @proto_recv(i32 %24, i64* %4, i32 8)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @LOG_WARNING, align 4
  %29 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %95

30:                                               ; preds = %1
  %31 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %32 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %40 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ null, %42 ]
  %45 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %46 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @proto_client(i8* %44, i32 %47, %struct.proto_conn** %3)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i64, i64* @errno, align 8
  store i64 %51, i64* %4, align 8
  %52 = load i32, i32* @LOG_WARNING, align 4
  %53 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %54 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %71

57:                                               ; preds = %43
  %58 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %59 = call i32 @proto_connect(%struct.proto_conn* %58, i32 -1)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i64, i64* @errno, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i32, i32* @LOG_WARNING, align 4
  %64 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %65 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %69 = call i32 @proto_close(%struct.proto_conn* %68)
  br label %71

70:                                               ; preds = %57
  store i64 0, i64* %4, align 8
  br label %71

71:                                               ; preds = %70, %61, %50
  %72 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %73 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @proto_send(i32 %74, i64* %4, i32 8)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @LOG_WARNING, align 4
  %79 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i64, i64* %4, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.hast_resource*, %struct.hast_resource** %2, align 8
  %85 = getelementptr inbounds %struct.hast_resource, %struct.hast_resource* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.proto_conn*, %struct.proto_conn** %3, align 8
  %88 = call i32 @proto_connection_send(i32 %86, %struct.proto_conn* %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @LOG_WARNING, align 4
  %92 = call i32 (i32, i8*, ...) @pjdlog_errno(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %83, %80
  %94 = call i32 (i8*, i8*, ...) @pjdlog_prefix_set(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %27
  ret void
}

declare dso_local i32 @pjdlog_prefix_set(i8*, i8*, ...) #1

declare dso_local i32 @role2str(i64) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_recv(i32, i64*, i32) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, ...) #1

declare dso_local i32 @proto_client(i8*, i32, %struct.proto_conn**) #1

declare dso_local i32 @proto_connect(%struct.proto_conn*, i32) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @proto_send(i32, i64*, i32) #1

declare dso_local i32 @proto_connection_send(i32, %struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
