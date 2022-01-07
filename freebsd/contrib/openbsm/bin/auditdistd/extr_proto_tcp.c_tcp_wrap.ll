; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tcp.c_tcp_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@TCP_SIDE_SERVER_WORK = common dso_local global i32 0, align 4
@TCP_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @tcp_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_wrap(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tcp_ctx*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = load i8**, i8*** %7, align 8
  %14 = icmp ne i8** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = call %struct.tcp_ctx* @malloc(i32 20)
  store %struct.tcp_ctx* %17, %struct.tcp_ctx** %8, align 8
  %18 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %19 = icmp eq %struct.tcp_ctx* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @AF_UNSPEC, align 4
  %27 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 1
  %34 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  br label %42

40:                                               ; preds = %22
  %41 = load i32, i32* @TCP_SIDE_SERVER_WORK, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @TCP_CTX_MAGIC, align 4
  %47 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %50 = bitcast %struct.tcp_ctx* %49 to i8*
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %42, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.tcp_ctx* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
