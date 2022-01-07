; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i64, i64, i32, i64 }

@TCP_CTX_MAGIC = common dso_local global i64 0, align 8
@TCP_SIDE_CLIENT = common dso_local global i64 0, align 8
@TCP_SIDE_SERVER_WORK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32*)* @tcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_recv(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tcp_ctx*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.tcp_ctx*
  store %struct.tcp_ctx* %11, %struct.tcp_ctx** %9, align 8
  %12 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %13 = icmp ne %struct.tcp_ctx* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TCP_CTX_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TCP_SIDE_CLIENT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TCP_SIDE_SERVER_WORK, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %28, %4
  %35 = phi i1 [ true, %4 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @PJDLOG_ASSERT(i32 %36)
  %38 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PJDLOG_ASSERT(i32 %40)
  %42 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @PJDLOG_ASSERT(i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = icmp eq i32* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @PJDLOG_ASSERT(i32 %50)
  %52 = load %struct.tcp_ctx*, %struct.tcp_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @proto_common_recv(i64 %54, i8* %55, i64 %56, i32* null)
  ret i32 %57
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_common_recv(i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
