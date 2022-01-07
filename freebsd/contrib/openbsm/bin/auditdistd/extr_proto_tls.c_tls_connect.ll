; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_tls_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_ctx = type { i32, i32, i32, i32*, %struct.proto_conn* }
%struct.proto_conn = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"tls://\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"socketpair://\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"[TLS sandbox] (client) \00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@TLS_SIDE_CLIENT = common dso_local global i32 0, align 4
@TLS_CTX_MAGIC = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@RFTSIGZMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8**)* @tls_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_connect(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.tls_ctx*, align 8
  %11 = alloca %struct.proto_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %16, %4
  %23 = phi i1 [ true, %4 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_ASSERT(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @PJDLOG_ASSERT(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = call i32 @PJDLOG_ASSERT(i32 %32)
  %34 = load i8**, i8*** %9, align 8
  %35 = icmp ne i8** %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @PJDLOG_ASSERT(i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %118

42:                                               ; preds = %22
  %43 = load i8*, i8** %6, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %118

50:                                               ; preds = %45, %42
  %51 = call i32 @proto_connect(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 -1, %struct.proto_conn** %11)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %5, align 4
  br label %118

55:                                               ; preds = %50
  %56 = call i32 (...) @fork()
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  switch i32 %57, label %70 [
    i32 -1, label %58
    i32 0, label %63
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.proto_conn*, %struct.proto_conn** %11, align 8
  %61 = call i32 @proto_close(%struct.proto_conn* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %5, align 4
  br label %118

63:                                               ; preds = %55
  %64 = call i32 @pjdlog_prefix_set(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.proto_conn*, %struct.proto_conn** %11, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @tls_call_exec_client(%struct.proto_conn* %65, i8* %66, i8* %67, i32 %68)
  br label %70

70:                                               ; preds = %55, %63
  %71 = call %struct.tls_ctx* @calloc(i32 1, i32 32)
  store %struct.tls_ctx* %71, %struct.tls_ctx** %10, align 8
  %72 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %73 = icmp eq %struct.tls_ctx* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load i32, i32* @errno, align 4
  store i32 %75, i32* %13, align 4
  %76 = load %struct.proto_conn*, %struct.proto_conn** %11, align 8
  %77 = call i32 @proto_close(%struct.proto_conn* %76)
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @SIGKILL, align 4
  %80 = call i32 @kill(i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %118

82:                                               ; preds = %70
  %83 = load %struct.proto_conn*, %struct.proto_conn** %11, align 8
  %84 = call i32 @proto_send(%struct.proto_conn* %83, i32* null, i32 0)
  %85 = load %struct.proto_conn*, %struct.proto_conn** %11, align 8
  %86 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %86, i32 0, i32 4
  store %struct.proto_conn* %85, %struct.proto_conn** %87, align 8
  %88 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %89 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* @TLS_SIDE_CLIENT, align 4
  %91 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %92 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %94 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load i32, i32* @TLS_CTX_MAGIC, align 4
  %96 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %97 = getelementptr inbounds %struct.tls_ctx, %struct.tls_ctx* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %82
  %101 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @tls_connect_wait(%struct.tls_ctx* %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @SIGKILL, align 4
  %109 = call i32 @kill(i32 %107, i32 %108)
  %110 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %111 = call i32 @tls_close(%struct.tls_ctx* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %118

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %82
  %115 = load %struct.tls_ctx*, %struct.tls_ctx** %10, align 8
  %116 = bitcast %struct.tls_ctx* %115 to i8*
  %117 = load i8**, i8*** %9, align 8
  store i8* %116, i8** %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %106, %74, %58, %53, %49, %41
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @proto_connect(i32*, i8*, i32, %struct.proto_conn**) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @pjdlog_prefix_set(i8*) #1

declare dso_local i32 @tls_call_exec_client(%struct.proto_conn*, i8*, i8*, i32) #1

declare dso_local %struct.tls_ctx* @calloc(i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @proto_send(%struct.proto_conn*, i32*, i32) #1

declare dso_local i32 @tls_connect_wait(%struct.tls_ctx*, i32) #1

declare dso_local i32 @tls_close(%struct.tls_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
