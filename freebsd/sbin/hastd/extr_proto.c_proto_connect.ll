; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@PROTO_SIDE_CLIENT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_connect(%struct.proto_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %4, align 8
  store i32 %1, i32* %5, align 4
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
  %19 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PROTO_SIDE_CLIENT, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %26 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @PJDLOG_ASSERT(i32 %29)
  %31 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %32 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = icmp ne i32 (i32, i32)* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = call i32 @PJDLOG_ASSERT(i32 %41)
  %43 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %44 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32)*, i32 (i32, i32)** %46, align 8
  %48 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %49 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 %47(i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %58

57:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
