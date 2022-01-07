; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i64, i32* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@PROTO_SIDE_CLIENT = common dso_local global i64 0, align 8
@PROTO_SIDE_SERVER_LISTEN = common dso_local global i64 0, align 8
@PROTO_SIDE_SERVER_WORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proto_conn*)* @proto_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proto_free(%struct.proto_conn* %0) #0 {
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
  %15 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PROTO_SIDE_CLIENT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %21 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PROTO_SIDE_SERVER_LISTEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %27 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PROTO_SIDE_SERVER_WORK, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %19, %1
  %32 = phi i1 [ true, %19 ], [ true, %1 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %36 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @PJDLOG_ASSERT(i32 %39)
  %41 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %42 = call i32 @bzero(%struct.proto_conn* %41, i32 24)
  %43 = load %struct.proto_conn*, %struct.proto_conn** %2, align 8
  %44 = call i32 @free(%struct.proto_conn* %43)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bzero(%struct.proto_conn*, i32) #1

declare dso_local i32 @free(%struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
