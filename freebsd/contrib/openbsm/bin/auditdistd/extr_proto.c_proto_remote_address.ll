; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_remote_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_remote_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i64)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_remote_address(%struct.proto_conn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.proto_conn* %0, %struct.proto_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %8 = icmp ne %struct.proto_conn* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %12 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %19 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %25 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %27, align 8
  %29 = icmp ne i32 (i32, i8*, i64)* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @PJDLOG_ASSERT(i32 %30)
  %32 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %33 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %35, align 8
  %37 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %38 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 %36(i32 %39, i8* %40, i64 %41)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
