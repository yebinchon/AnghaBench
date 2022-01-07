; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i64, i64, i32*, i32* }

@TLS_CTX_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tls_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tls_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tls_ctx*
  store %struct.tls_ctx* %5, %struct.tls_ctx** %3, align 8
  %6 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %7 = icmp ne %struct.tls_ctx* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TLS_CTX_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @proto_close(i32* %24)
  %26 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %1
  %29 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @proto_close(i32* %36)
  %38 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.tls_ctx*, %struct.tls_ctx** %3, align 8
  %46 = call i32 @free(%struct.tls_ctx* %45)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_close(i32*) #1

declare dso_local i32 @free(%struct.tls_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
