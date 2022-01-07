; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_socketpair.c_sp_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_proto_socketpair.c_sp_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_ctx = type { i64, i32, i32* }

@SP_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid socket side (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sp_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_descriptor(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sp_ctx*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.sp_ctx*
  store %struct.sp_ctx* %6, %struct.sp_ctx** %4, align 8
  %7 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %8 = icmp ne %struct.sp_ctx* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @PJDLOG_ASSERT(i32 %9)
  %11 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SP_CTX_MAGIC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 128
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ true, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @PJDLOG_ASSERT(i32 %29)
  %31 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %62 [
    i32 129, label %34
    i32 128, label %48
  ]

34:                                               ; preds = %27
  %35 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @PJDLOG_ASSERT(i32 %41)
  %43 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %67

48:                                               ; preds = %27
  %49 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @PJDLOG_ASSERT(i32 %55)
  %57 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %58 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %67

62:                                               ; preds = %27
  %63 = load %struct.sp_ctx*, %struct.sp_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %48, %34
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
