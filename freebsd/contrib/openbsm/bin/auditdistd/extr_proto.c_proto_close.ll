; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_close(%struct.proto_conn* %0) #0 {
  %2 = alloca %struct.proto_conn*, align 8
  store %struct.proto_conn* %0, %struct.proto_conn** %2, align 8
  %3 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %4 = icmp ne %struct.proto_conn* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @PJDLOG_ASSERT(i32 %5)
  %7 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %8 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  %14 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %15 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %21 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  %28 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %29 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %34 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  %37 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %38 = call i32 @proto_free(%struct.proto_conn* %37)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_free(%struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
