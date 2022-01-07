; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@UDS_SIDE_SERVER_LISTEN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @uds_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_server(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.uds_ctx*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @UDS_SIDE_SERVER_LISTEN, align 4
  %10 = call i32 @uds_common_setup(i8* %8, i32 %9, %struct.uds_ctx** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %52

15:                                               ; preds = %2
  %16 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @unlink(i32 %19)
  %21 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %24, i32 0, i32 2
  %26 = bitcast %struct.TYPE_2__* %25 to %struct.sockaddr*
  %27 = call i32 @bind(i32 %23, %struct.sockaddr* %26, i32 4)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %32 = call i32 @uds_close(%struct.uds_ctx* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %52

34:                                               ; preds = %15
  %35 = call i32 (...) @getpid()
  %36 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @listen(i32 %40, i32 8)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* @errno, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %46 = call i32 @uds_close(%struct.uds_ctx* %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %34
  %49 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %50 = bitcast %struct.uds_ctx* %49 to i8*
  %51 = load i8**, i8*** %5, align 8
  store i8* %50, i8** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %43, %29, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @uds_common_setup(i8*, i32, %struct.uds_ctx**) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @uds_close(%struct.uds_ctx*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
