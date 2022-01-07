; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_setup_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_tcp.c_tcp_setup_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_ctx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TCP_SIDE_CLIENT = common dso_local global i32 0, align 4
@TCP_SIDE_SERVER_WORK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@TCP_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @tcp_setup_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_setup_wrap(i32 %0, i32 %1, i8** %2) #0 {
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
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TCP_SIDE_CLIENT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TCP_SIDE_SERVER_WORK, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load i8**, i8*** %7, align 8
  %25 = icmp ne i8** %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  %28 = call %struct.tcp_ctx* @malloc(i32 16)
  store %struct.tcp_ctx* %28, %struct.tcp_ctx** %8, align 8
  %29 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %30 = icmp eq %struct.tcp_ctx* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %36 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @AF_UNSPEC, align 4
  %38 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @TCP_CTX_MAGIC, align 4
  %45 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.tcp_ctx, %struct.tcp_ctx* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tcp_ctx*, %struct.tcp_ctx** %8, align 8
  %48 = bitcast %struct.tcp_ctx* %47 to i8*
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local %struct.tcp_ctx* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
