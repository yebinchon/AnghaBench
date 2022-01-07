; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_socketpair.c_sp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_socketpair.c_sp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_ctx = type { i64, i32, i32* }

@SP_CTX_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid socket side (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sp_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sp_ctx*
  store %struct.sp_ctx* %5, %struct.sp_ctx** %3, align 8
  %6 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %7 = icmp ne %struct.sp_ctx* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SP_CTX_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %111 [
    i32 128, label %20
    i32 130, label %57
    i32 129, label %84
  ]

20:                                               ; preds = %1
  %21 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @PJDLOG_ASSERT(i32 %27)
  %29 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 -1, i32* %38, align 4
  %39 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @PJDLOG_ASSERT(i32 %45)
  %47 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @close(i32 %51)
  %53 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 -1, i32* %56, align 4
  br label %116

57:                                               ; preds = %1
  %58 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @PJDLOG_ASSERT(i32 %64)
  %66 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 -1, i32* %75, align 4
  %76 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  %82 = zext i1 %81 to i32
  %83 = call i32 @PJDLOG_ASSERT(i32 %82)
  br label %116

84:                                               ; preds = %1
  %85 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @PJDLOG_ASSERT(i32 %91)
  %93 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @close(i32 %97)
  %99 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 -1, i32* %102, align 4
  %103 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, -1
  %109 = zext i1 %108 to i32
  %110 = call i32 @PJDLOG_ASSERT(i32 %109)
  br label %116

111:                                              ; preds = %1
  %112 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %84, %57, %20
  %117 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.sp_ctx, %struct.sp_ctx* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load %struct.sp_ctx*, %struct.sp_ctx** %3, align 8
  %120 = call i32 @free(%struct.sp_ctx* %119)
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32 @free(%struct.sp_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
