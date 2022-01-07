; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i64, i32, i32*, i32* }

@TLS_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Invalid side (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tls_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_descriptor(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_ctx*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.tls_ctx*
  store %struct.tls_ctx* %6, %struct.tls_ctx** %4, align 8
  %7 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %8 = icmp ne %struct.tls_ctx* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TLS_CTX_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %43 [
    i32 130, label %21
    i32 128, label %21
    i32 129, label %32
  ]

21:                                               ; preds = %1, %1
  %22 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @PJDLOG_ASSERT(i32 %26)
  %28 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @proto_descriptor(i32* %30)
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @PJDLOG_ASSERT(i32 %37)
  %39 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @proto_descriptor(i32* %41)
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %1
  %44 = load %struct.tls_ctx*, %struct.tls_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %21, %32, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_descriptor(i32*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
