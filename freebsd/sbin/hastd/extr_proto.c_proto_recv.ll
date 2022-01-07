; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto.c_proto_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i64, i32*)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_recv(%struct.proto_conn* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %10 = icmp ne %struct.proto_conn* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %14 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %21 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %27 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** %29, align 8
  %31 = icmp ne i32 (i32, i8*, i64, i32*)* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  %34 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %35 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** %37, align 8
  %39 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %40 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 %38(i32 %41, i8* %42, i64 %43, i32* null)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
