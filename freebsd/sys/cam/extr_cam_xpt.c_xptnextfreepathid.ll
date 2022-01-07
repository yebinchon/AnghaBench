; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptnextfreepathid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptnextfreepathid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cam_eb = type { i64 }

@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"scbus\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @xptnextfreepathid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xptnextfreepathid() #0 {
  %1 = alloca %struct.cam_eb*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @mtx_assert(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 1), i32 %4)
  store i64 0, i64* %2, align 8
  %6 = call %struct.cam_eb* @TAILQ_FIRST(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0))
  store %struct.cam_eb* %6, %struct.cam_eb** %1, align 8
  br label %7

7:                                                ; preds = %36, %0
  br label %8

8:                                                ; preds = %28, %7
  %9 = load %struct.cam_eb*, %struct.cam_eb** %1, align 8
  %10 = icmp ne %struct.cam_eb* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load %struct.cam_eb*, %struct.cam_eb** %1, align 8
  %13 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp sle i64 %14, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i1 [ false, %8 ], [ %16, %11 ]
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  %20 = load %struct.cam_eb*, %struct.cam_eb** %1, align 8
  %21 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %2, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.cam_eb*, %struct.cam_eb** %1, align 8
  %30 = load i32, i32* @links, align 4
  %31 = call %struct.cam_eb* @TAILQ_NEXT(%struct.cam_eb* %29, i32 %30)
  store %struct.cam_eb* %31, %struct.cam_eb** %1, align 8
  br label %8

32:                                               ; preds = %17
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @resource_string_value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %2, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %7

39:                                               ; preds = %32
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.cam_eb* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_eb* @TAILQ_NEXT(%struct.cam_eb*, i32) #1

declare dso_local i64 @resource_string_value(i8*, i64, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
