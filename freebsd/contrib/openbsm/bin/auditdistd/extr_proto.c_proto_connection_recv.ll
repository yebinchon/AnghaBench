; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connection_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto.c_proto_connection_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_conn = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32, i32*)* }

@PROTO_CONN_MAGIC = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_connection_recv(%struct.proto_conn* %0, i32 %1, %struct.proto_conn** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proto_conn**, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.proto_conn* %0, %struct.proto_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proto_conn** %2, %struct.proto_conn*** %7, align 8
  %11 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %12 = icmp ne %struct.proto_conn* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %16 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PROTO_CONN_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %23 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  %28 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %29 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %31, align 8
  %33 = icmp ne i32 (i32, i8*, i32, i32*)* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @PJDLOG_ASSERT(i32 %34)
  %36 = load %struct.proto_conn**, %struct.proto_conn*** %7, align 8
  %37 = icmp ne %struct.proto_conn** %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %41 = call i32 @bzero(i8* %40, i32 128)
  %42 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %43 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i32, i8*, i32, i32*)*, i32 (i32, i8*, i32, i32*)** %45, align 8
  %47 = load %struct.proto_conn*, %struct.proto_conn** %5, align 8
  %48 = getelementptr inbounds %struct.proto_conn, %struct.proto_conn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %51 = call i32 %46(i32 %49, i8* %50, i32 127, i32* %10)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %3
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %66

56:                                               ; preds = %3
  %57 = load i32, i32* %10, align 4
  %58 = icmp sge i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @PJDLOG_ASSERT(i32 %59)
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.proto_conn**, %struct.proto_conn*** %7, align 8
  %65 = call i32 @proto_wrap(i8* %61, i32 %62, i32 %63, %struct.proto_conn** %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %56, %54
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @proto_wrap(i8*, i32, i32, %struct.proto_conn**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
