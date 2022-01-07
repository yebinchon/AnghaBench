; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i32, i32, i32, i32*, %struct.proto_conn* }
%struct.proto_conn = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@TLS_SIDE_CLIENT = common dso_local global i32 0, align 4
@TLS_SIDE_SERVER_WORK = common dso_local global i32 0, align 4
@TLS_CTX_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @tls_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_wrap(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.tls_ctx*, align 8
  %9 = alloca %struct.proto_conn*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = call %struct.tls_ctx* @calloc(i32 1, i32 32)
  store %struct.tls_ctx* %11, %struct.tls_ctx** %8, align 8
  %12 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %13 = icmp eq %struct.tls_ctx* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @proto_wrap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, %struct.proto_conn** %9)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %24 = call i32 @free(%struct.tls_ctx* %23)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %54

26:                                               ; preds = %16
  %27 = load %struct.proto_conn*, %struct.proto_conn** %9, align 8
  %28 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %28, i32 0, i32 4
  store %struct.proto_conn* %27, %struct.proto_conn** %29, align 8
  %30 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  %36 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @TLS_SIDE_CLIENT, align 4
  br label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @TLS_SIDE_SERVER_WORK, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @TLS_CTX_MAGIC, align 4
  %49 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tls_ctx*, %struct.tls_ctx** %8, align 8
  %52 = bitcast %struct.tls_ctx* %51 to i8*
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %21, %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.tls_ctx* @calloc(i32, i32) #1

declare dso_local i32 @proto_wrap(i8*, i32, i32, %struct.proto_conn**) #1

declare dso_local i32 @free(%struct.tls_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
