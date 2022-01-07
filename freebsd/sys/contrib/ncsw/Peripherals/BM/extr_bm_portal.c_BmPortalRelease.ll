; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalRelease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_BmPortalRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_buffer = type { i32, i32 }
%struct.bm_rcr_entry = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@BMAN_RELEASE_FLAG_WAIT = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BmPortalRelease(i64 %0, i64 %1, %struct.bm_buffer* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bm_buffer*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.bm_rcr_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.bm_buffer* %2, %struct.bm_buffer** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* @E_INVALID_HANDLE, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %18, i32 %19)
  %21 = load i32*, i32** %12, align 8
  %22 = call %struct.bm_rcr_entry* @try_rel_start(i32* %21)
  store %struct.bm_rcr_entry* %22, %struct.bm_rcr_entry** %13, align 8
  %23 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %13, align 8
  %24 = icmp ne %struct.bm_rcr_entry* %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @BMAN_RELEASE_FLAG_WAIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @wait_rel_start(i32* %31, %struct.bm_rcr_entry** %13, i32 %32)
  store i64 %33, i64* %15, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %15, align 8
  store i64 %37, i64* %6, align 8
  br label %87

38:                                               ; preds = %30
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @E_BUSY, align 4
  %41 = call i64 @ERROR_CODE(i32 %40)
  store i64 %41, i64* %6, align 8
  br label %87

42:                                               ; preds = %38
  %43 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %13, align 8
  %44 = icmp ne %struct.bm_rcr_entry* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT_COND(i32 %45)
  br label %47

47:                                               ; preds = %42, %5
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %13, align 8
  %50 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i64 0, i64* %14, align 8
  br label %51

51:                                               ; preds = %78, %47
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load %struct.bm_buffer*, %struct.bm_buffer** %9, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %56, i64 %57
  %59 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %13, align 8
  %62 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 4
  %67 = load %struct.bm_buffer*, %struct.bm_buffer** %9, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %67, i64 %68
  %70 = getelementptr inbounds %struct.bm_buffer, %struct.bm_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %13, align 8
  %73 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %55
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %51

81:                                               ; preds = %51
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @rel_commit(i32* %82, i32 %83, i64 %84)
  %86 = load i64, i64* @E_OK, align 8
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %81, %39, %36
  %88 = load i64, i64* %6, align 8
  ret i64 %88
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32*, i32) #1

declare dso_local %struct.bm_rcr_entry* @try_rel_start(i32*) #1

declare dso_local i64 @wait_rel_start(i32*, %struct.bm_rcr_entry**, i32) #1

declare dso_local i64 @ERROR_CODE(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @rel_commit(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
