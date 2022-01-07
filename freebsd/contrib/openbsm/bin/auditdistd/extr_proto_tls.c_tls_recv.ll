; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i64, i64, i32, i32* }

@TLS_CTX_MAGIC = common dso_local global i64 0, align 8
@TLS_SIDE_CLIENT = common dso_local global i64 0, align 8
@TLS_SIDE_SERVER_WORK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32*)* @tls_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_recv(i8* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tls_ctx*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tls_ctx*
  store %struct.tls_ctx* %12, %struct.tls_ctx** %10, align 8
  %13 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %14 = icmp ne %struct.tls_ctx* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %18 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TLS_CTX_MAGIC, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @PJDLOG_ASSERT(i32 %22)
  %24 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %25 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLS_SIDE_CLIENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TLS_SIDE_SERVER_WORK, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %4
  %36 = phi i1 [ true, %4 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  %39 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %40 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @PJDLOG_ASSERT(i32 %43)
  %45 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PJDLOG_ASSERT(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @PJDLOG_ASSERT(i32 %51)
  %53 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @proto_recv(i32* %55, i8* %56, i64 %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %35
  %61 = load i32, i32* @errno, align 4
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_recv(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
