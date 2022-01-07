; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_uds.c_uds_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i64, i64, i64, i32 }
%struct.sockaddr = type { i32 }

@UDS_CTX_MAGIC = common dso_local global i64 0, align 8
@UDS_SIDE_CLIENT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @uds_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_connect(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uds_ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uds_ctx*
  store %struct.uds_ctx* %8, %struct.uds_ctx** %6, align 8
  %9 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %10 = icmp ne %struct.uds_ctx* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @PJDLOG_ASSERT(i32 %11)
  %13 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UDS_CTX_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @PJDLOG_ASSERT(i32 %18)
  %20 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @UDS_SIDE_CLIENT, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @PJDLOG_ASSERT(i32 %25)
  %27 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @PJDLOG_ASSERT(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @PJDLOG_ASSERT(i32 %35)
  %37 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.uds_ctx*, %struct.uds_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %40, i32 0, i32 3
  %42 = bitcast i32* %41 to %struct.sockaddr*
  %43 = call i32 @connect(i64 %39, %struct.sockaddr* %42, i32 4)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @connect(i64, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
