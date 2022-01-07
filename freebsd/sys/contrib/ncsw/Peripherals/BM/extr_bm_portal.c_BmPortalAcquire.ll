; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalAcquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_buffer = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.bm_mc_command = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.bm_mc_result = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@BM_MCC_VERB_CMD_ACQUIRE = common dso_local global i32 0, align 4
@BM_MCC_VERB_ACQUIRE_BUFCOUNT = common dso_local global i32 0, align 4
@BM_MCR_VERB_ACQUIRE_BUFCOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BmPortalAcquire(i64 %0, i32 %1, %struct.bm_buffer* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bm_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.bm_mc_command*, align 8
  %11 = alloca %struct.bm_mc_result*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bm_buffer* %2, %struct.bm_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_11__* %15, i32 %16, i32 0)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = call i32 @NCSW_PLOCK(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bm_mc_command* @bm_mc_start(i32 %22)
  store %struct.bm_mc_command* %23, %struct.bm_mc_command** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bm_mc_command*, %struct.bm_mc_command** %10, align 8
  %26 = getelementptr inbounds %struct.bm_mc_command, %struct.bm_mc_command* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BM_MCC_VERB_CMD_ACQUIRE, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @BM_MCC_VERB_ACQUIRE_BUFCOUNT, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %31, %34
  %36 = call i32 @bm_mc_commit(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %44, %4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.bm_mc_result* @bm_mc_result(i32 %40)
  store %struct.bm_mc_result* %41, %struct.bm_mc_result** %11, align 8
  %42 = icmp ne %struct.bm_mc_result* %41, null
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %37

45:                                               ; preds = %37
  %46 = load %struct.bm_mc_result*, %struct.bm_mc_result** %11, align 8
  %47 = getelementptr inbounds %struct.bm_mc_result, %struct.bm_mc_result* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BM_MCR_VERB_ACQUIRE_BUFCOUNT, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %8, align 4
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %51, 8
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT_COND(i32 %53)
  br label %55

55:                                               ; preds = %59, %45
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.bm_buffer*, %struct.bm_buffer** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %61, i64 %63
  %65 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.bm_mc_result*, %struct.bm_mc_result** %11, align 8
  %67 = getelementptr inbounds %struct.bm_mc_result, %struct.bm_mc_result* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.bm_buffer*, %struct.bm_buffer** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %75, i64 %77
  %79 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %78, i32 0, i32 2
  store i32 %74, i32* %79, align 4
  %80 = load %struct.bm_mc_result*, %struct.bm_mc_result** %11, align 8
  %81 = getelementptr inbounds %struct.bm_mc_result, %struct.bm_mc_result* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.bm_buffer*, %struct.bm_buffer** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %89, i64 %91
  %93 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  br label %55

94:                                               ; preds = %55
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = call i32 @PUNLOCK(%struct.TYPE_11__* %95)
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_11__*) #1

declare dso_local %struct.bm_mc_command* @bm_mc_start(i32) #1

declare dso_local i32 @bm_mc_commit(i32, i32) #1

declare dso_local %struct.bm_mc_result* @bm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
