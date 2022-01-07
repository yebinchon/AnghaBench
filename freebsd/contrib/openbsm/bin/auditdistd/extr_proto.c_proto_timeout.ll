; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32* }
%struct.timeval = type { i32, i64 }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDTIMEO = common dso_local global i32 0, align 4
@SO_RCVTIMEO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_timeout(%struct.proto_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %9 = icmp ne %struct.proto_conn* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @PJDLOG_ASSERT(i32 %10)
  %12 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %13 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @PJDLOG_ASSERT(i32 %17)
  %19 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %20 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %26 = call i32 @proto_descriptor(%struct.proto_conn* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_SNDTIMEO, align 4
  %37 = call i64 @setsockopt(i32 %34, i32 %35, i32 %36, %struct.timeval* %6, i32 16)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SOL_SOCKET, align 4
  %43 = load i32, i32* @SO_RCVTIMEO, align 4
  %44 = call i64 @setsockopt(i32 %41, i32 %42, i32 %43, %struct.timeval* %6, i32 16)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %39, %29
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_descriptor(%struct.proto_conn*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
