; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_connect_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_connect_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i64, i64, i32, i32* }

@TLS_CTX_MAGIC = common dso_local global i64 0, align 8
@TLS_SIDE_CLIENT = common dso_local global i64 0, align 8
@MSG_WAITALL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Connection terminated.\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tls_connect_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connect_wait(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tls_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.tls_ctx*
  store %struct.tls_ctx* %11, %struct.tls_ctx** %6, align 8
  %12 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %13 = icmp ne %struct.tls_ctx* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TLS_CTX_MAGIC, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @PJDLOG_ASSERT(i32 %21)
  %23 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TLS_SIDE_CLIENT, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @PJDLOG_ASSERT(i32 %28)
  %30 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @PJDLOG_ASSERT(i32 %34)
  %36 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @PJDLOG_ASSERT(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @PJDLOG_ASSERT(i32 %45)
  %47 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @proto_descriptor(i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @wait_for_fd(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %83

58:                                               ; preds = %2
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @MSG_WAITALL, align 4
  %62 = call i32 @recv(i32 %60, i32* %9, i32 4, i32 %61)
  switch i32 %62, label %80 [
    i32 -1, label %63
    i32 0, label %74
    i32 1, label %77
  ]

63:                                               ; preds = %59
  %64 = load i32, i32* @errno, align 4
  %65 = load i32, i32* @EINTR, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @errno, align 4
  %69 = load i32, i32* @ENOBUFS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  br label %59

72:                                               ; preds = %67
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %7, align 4
  br label %80

74:                                               ; preds = %59
  %75 = call i32 @pjdlog_debug(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOTCONN, align 4
  store i32 %76, i32* %7, align 4
  br label %80

77:                                               ; preds = %59
  %78 = load %struct.tls_ctx*, %struct.tls_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %59, %77, %74, %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %56
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @proto_descriptor(i32*) #1

declare dso_local i32 @wait_for_fd(i32, i32) #1

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
