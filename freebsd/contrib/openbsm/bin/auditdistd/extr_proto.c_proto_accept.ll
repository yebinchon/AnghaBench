; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@PROTO_SIDE_SERVER_LISTEN = common dso_local global i64 0, align 8
@PROTO_SIDE_SERVER_WORK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_accept(%struct.proto_conn* %0, %struct.proto_conn** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_conn*, align 8
  %5 = alloca %struct.proto_conn**, align 8
  %6 = alloca %struct.proto_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %4, align 8
  store %struct.proto_conn** %1, %struct.proto_conn*** %5, align 8
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
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PROTO_SIDE_SERVER_LISTEN, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %27 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @PJDLOG_ASSERT(i32 %30)
  %32 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %33 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (i32, i32*)*, i32 (i32, i32*)** %35, align 8
  %37 = icmp ne i32 (i32, i32*)* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  %40 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %41 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* @PROTO_SIDE_SERVER_WORK, align 4
  %44 = call %struct.proto_conn* @proto_alloc(%struct.TYPE_2__* %42, i32 %43)
  store %struct.proto_conn* %44, %struct.proto_conn** %6, align 8
  %45 = load %struct.proto_conn*, %struct.proto_conn** %6, align 8
  %46 = icmp eq %struct.proto_conn* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %69

48:                                               ; preds = %2
  %49 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %50 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32*)*, i32 (i32, i32*)** %52, align 8
  %54 = load %struct.proto_conn*, %struct.proto_conn** %4, align 8
  %55 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.proto_conn*, %struct.proto_conn** %6, align 8
  %58 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %57, i32 0, i32 2
  %59 = call i32 %53(i32 %56, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.proto_conn*, %struct.proto_conn** %6, align 8
  %64 = call i32 @proto_free(%struct.proto_conn* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %69

66:                                               ; preds = %48
  %67 = load %struct.proto_conn*, %struct.proto_conn** %6, align 8
  %68 = load %struct.proto_conn**, %struct.proto_conn*** %5, align 8
  store %struct.proto_conn* %67, %struct.proto_conn** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62, %47
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.proto_conn* @proto_alloc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @proto_free(%struct.proto_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
