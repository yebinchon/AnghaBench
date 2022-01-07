; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i64, i64 }

@UDS_CTX_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32*)* @uds_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_recv(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.uds_ctx*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.uds_ctx*
  store %struct.uds_ctx* %11, %struct.uds_ctx** %9, align 8
  %12 = load %struct.uds_ctx*, %struct.uds_ctx** %9, align 8
  %13 = icmp ne %struct.uds_ctx* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.uds_ctx*, %struct.uds_ctx** %9, align 8
  %17 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UDS_CTX_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load %struct.uds_ctx*, %struct.uds_ctx** %9, align 8
  %24 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = load %struct.uds_ctx*, %struct.uds_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @proto_common_recv(i64 %31, i8* %32, i64 %33, i32* %34)
  ret i32 %35
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_common_recv(i64, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
