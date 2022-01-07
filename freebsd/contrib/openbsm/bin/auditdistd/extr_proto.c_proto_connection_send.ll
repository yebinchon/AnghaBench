; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connection_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connection_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i64, i32)*, i8* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_connection_send(%struct.proto_conn* %0, %struct.proto_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca %struct.proto_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %4, align 8
  store %struct.proto_conn* %1, %struct.proto_conn** %5, align 8
  %9 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %10 = icmp ne %struct.proto_conn* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %14 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %21 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %27 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %29, align 8
  %31 = icmp ne i32 (i32, i8*, i64, i32)* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  %34 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %35 = icmp ne %struct.proto_conn* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @PJDLOG_ASSERT(i32 %36)
  %38 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %39 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @PJDLOG_ASSERT(i32 %43)
  %45 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %46 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @PJDLOG_ASSERT(i32 %49)
  %51 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %52 = call i32 @proto_descriptor(%struct.proto_conn* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @PJDLOG_ASSERT(i32 %55)
  %57 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %58 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %6, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @PJDLOG_ASSERT(i32 %64)
  %66 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %67 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** %69, align 8
  %71 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %72 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = add nsw i64 %76, 1
  %78 = load i32, i32* %8, align 4
  %79 = call i32 %70(i32 %73, i8* %74, i64 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %81 = call i32 @proto_close(%struct.proto_conn* %80)
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %2
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %87

86:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %84
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_descriptor(%struct.proto_conn*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
