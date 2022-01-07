; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i32, i32, %struct.proto* }
%struct.proto = type { i32 }

@PROTO_SIDE_CLIENT = common dso_local global i32 0, align 4
@PROTO_SIDE_SERVER_LISTEN = common dso_local global i32 0, align 4
@PROTO_SIDE_SERVER_WORK = common dso_local global i32 0, align 4
@PROTO_CONN_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proto_conn* (%struct.proto*, i32)* @proto_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proto_conn* @proto_alloc(%struct.proto* %0, i32 %1) #0 {
  %3 = alloca %struct.proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_conn*, align 8
  store %struct.proto* %0, %struct.proto** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.proto*, %struct.proto** %3, align 8
  %7 = icmp ne %struct.proto* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PROTO_SIDE_CLIENT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PROTO_SIDE_SERVER_LISTEN, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PROTO_SIDE_SERVER_WORK, align 4
  %20 = icmp eq i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13, %2
  %22 = phi i1 [ true, %13 ], [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = call %struct.proto_conn* @malloc(i32 16)
  store %struct.proto_conn* %25, %struct.proto_conn** %5, align 8
  %26 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %27 = icmp ne %struct.proto_conn* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.proto*, %struct.proto** %3, align 8
  %30 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %31 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %30, i32 0, i32 2
  store %struct.proto* %29, %struct.proto** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %34 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* @PROTO_CONN_MAGIC, align 4
  %36 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %37 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %21
  %39 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  ret %struct.proto_conn* %39
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.proto_conn* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
