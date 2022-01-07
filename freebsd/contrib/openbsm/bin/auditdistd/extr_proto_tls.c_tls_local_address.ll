; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_local_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_local_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i64, i32, i32, i8*, i32*, i32* }

@TLS_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"tls://N/A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"tcp://\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tls://\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid side (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @tls_local_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls_local_address(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tls_ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.tls_ctx*
  store %struct.tls_ctx* %9, %struct.tls_ctx** %7, align 8
  %10 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %11 = icmp ne %struct.tls_ctx* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  %14 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TLS_CTX_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @PJDLOG_ASSERT(i32 %19)
  %21 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %79 [
    i32 130, label %28
    i32 128, label %42
    i32 129, label %59
  ]

28:                                               ; preds = %3
  %29 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @PJDLOG_ASSERT(i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @strlcpy(i8* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @PJDLOG_VERIFY(i32 %40)
  br label %84

42:                                               ; preds = %3
  %43 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @PJDLOG_ASSERT(i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @strlcpy(i8* %49, i8* %52, i64 %53)
  %55 = load i64, i64* %6, align 8
  %56 = icmp ult i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @PJDLOG_VERIFY(i32 %57)
  br label %84

59:                                               ; preds = %3
  %60 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @PJDLOG_ASSERT(i32 %64)
  %66 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @proto_local_address(i32* %68, i8* %69, i64 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strncmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @PJDLOG_ASSERT(i32 %75)
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @bcopy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %77, i32 6)
  br label %84

79:                                               ; preds = %3
  %80 = load %struct.tls_ctx*, %struct.tls_ctx** %7, align 8
  %81 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %59, %42, %28
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @proto_local_address(i32*, i8*, i64) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
