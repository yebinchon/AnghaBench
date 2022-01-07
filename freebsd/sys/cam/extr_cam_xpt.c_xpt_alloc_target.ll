; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_alloc_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cam_et = type { i64, i32, i32, i32, i32*, i64, %struct.cam_eb*, i32 }
%struct.cam_eb = type { i32, i32, i32, i32 }

@xsoftc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CAM LUNs lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cam_et* (%struct.cam_eb*, i64)* @xpt_alloc_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cam_et* @xpt_alloc_target(%struct.cam_eb* %0, i64 %1) #0 {
  %3 = alloca %struct.cam_et*, align 8
  %4 = alloca %struct.cam_eb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cam_et*, align 8
  %7 = alloca %struct.cam_et*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xsoftc, i32 0, i32 0), i32 %8)
  %10 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 3
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* %11, i32 %12)
  %14 = load i32, i32* @M_CAMXPT, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @malloc(i32 56, i32 %14, i32 %17)
  %19 = inttoptr i64 %18 to %struct.cam_et*
  store %struct.cam_et* %19, %struct.cam_et** %7, align 8
  %20 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %21 = icmp eq %struct.cam_et* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.cam_et* null, %struct.cam_et** %3, align 8
  br label %88

23:                                               ; preds = %2
  %24 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %25 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %24, i32 0, i32 7
  %26 = call i32 @TAILQ_INIT(i32* %25)
  %27 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %28 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %29 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %28, i32 0, i32 6
  store %struct.cam_eb* %27, %struct.cam_eb** %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %32 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %34 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %36 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %38 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %40 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %39, i32 0, i32 3
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %44 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %43, i32 0, i32 2
  %45 = call i32 @timevalclear(i32* %44)
  %46 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %47 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %51 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %50, i32 0, i32 1
  %52 = call %struct.cam_et* @TAILQ_FIRST(i32* %51)
  store %struct.cam_et* %52, %struct.cam_et** %6, align 8
  br label %53

53:                                               ; preds = %64, %23
  %54 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %55 = icmp ne %struct.cam_et* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %58 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp slt i64 %59, %60
  br label %62

62:                                               ; preds = %56, %53
  %63 = phi i1 [ false, %53 ], [ %61, %56 ]
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %66 = load i32, i32* @links, align 4
  %67 = call %struct.cam_et* @TAILQ_NEXT(%struct.cam_et* %65, i32 %66)
  store %struct.cam_et* %67, %struct.cam_et** %6, align 8
  br label %53

68:                                               ; preds = %62
  %69 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %70 = icmp ne %struct.cam_et* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.cam_et*, %struct.cam_et** %6, align 8
  %73 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %74 = load i32, i32* @links, align 4
  %75 = call i32 @TAILQ_INSERT_BEFORE(%struct.cam_et* %72, %struct.cam_et* %73, i32 %74)
  br label %82

76:                                               ; preds = %68
  %77 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %78 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %77, i32 0, i32 1
  %79 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  %80 = load i32, i32* @links, align 4
  %81 = call i32 @TAILQ_INSERT_TAIL(i32* %78, %struct.cam_et* %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.cam_eb*, %struct.cam_eb** %4, align 8
  %84 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.cam_et*, %struct.cam_et** %7, align 8
  store %struct.cam_et* %87, %struct.cam_et** %3, align 8
  br label %88

88:                                               ; preds = %82, %22
  %89 = load %struct.cam_et*, %struct.cam_et** %3, align 8
  ret %struct.cam_et* %89
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @timevalclear(i32*) #1

declare dso_local %struct.cam_et* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.cam_et* @TAILQ_NEXT(%struct.cam_et*, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.cam_et*, %struct.cam_et*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cam_et*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
