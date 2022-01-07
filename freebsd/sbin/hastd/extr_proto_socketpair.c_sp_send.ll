; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_socketpair.c_sp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_socketpair.c_sp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_ctx = type { i64, i32, i32* }

@SP_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid socket side (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32)* @sp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_send(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sp_ctx*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.sp_ctx*
  store %struct.sp_ctx* %13, %struct.sp_ctx** %10, align 8
  %14 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %15 = icmp ne %struct.sp_ctx* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SP_CTX_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %69 [
    i32 128, label %28
    i32 130, label %41
    i32 129, label %55
  ]

28:                                               ; preds = %4
  %29 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %30 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %29, i32 0, i32 1
  store i32 130, i32* %30, align 8
  %31 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  %37 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %4, %28
  %42 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @PJDLOG_ASSERT(i32 %48)
  %50 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %51 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  br label %74

55:                                               ; preds = %4
  %56 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @PJDLOG_ASSERT(i32 %62)
  %64 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %65 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  br label %74

69:                                               ; preds = %4
  %70 = load %struct.sp_ctx*, %struct.sp_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %55, %41
  %75 = load i8*, i8** %7, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @proto_common_send(i32 %79, i8* %80, i64 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %78, %77
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @proto_common_send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
