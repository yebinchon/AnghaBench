; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.rwlock = type { i32 }

@L2_OFFSET = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@listq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_enter_object(i32 %0, i64 %1, i64 %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rwlock*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VM_OBJECT_ASSERT_LOCKED(i32 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i64 @atop(i64 %23)
  store i64 %24, i64* %16, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %13, align 8
  store %struct.rwlock* null, %struct.rwlock** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @PMAP_LOCK(i32 %26)
  br label %28

28:                                               ; preds = %88, %5
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %31, %28
  %42 = phi i1 [ false, %28 ], [ %40, %31 ]
  br i1 %42, label %43, label %92

43:                                               ; preds = %41
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i64 @ptoa(i64 %45)
  %47 = add nsw i64 %44, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @L2_OFFSET, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %43
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @L2_SIZE, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %8, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @pmap_ps_enabled(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @pmap_enter_2mpage(i32 %68, i64 %69, %struct.TYPE_9__* %70, i32 %71, %struct.rwlock** %11)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = load i64, i64* @L2_SIZE, align 8
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = sdiv i64 %76, %77
  %79 = sub nsw i64 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %79
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %13, align 8
  br label %88

81:                                               ; preds = %67, %63, %58, %52, %43
  %82 = load i32, i32* %6, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = call %struct.TYPE_9__* @pmap_enter_quick_locked(i32 %82, i64 %83, %struct.TYPE_9__* %84, i32 %85, %struct.TYPE_9__* %86, %struct.rwlock** %11)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %14, align 8
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %90 = load i32, i32* @listq, align 4
  %91 = call %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__* %89, i32 %90)
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %13, align 8
  br label %28

92:                                               ; preds = %41
  %93 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %94 = icmp ne %struct.rwlock* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %97 = call i32 @rw_wunlock(%struct.rwlock* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @PMAP_UNLOCK(i32 %99)
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_LOCKED(i32) #1

declare dso_local i64 @atop(i64) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i64 @ptoa(i64) #1

declare dso_local i64 @pmap_ps_enabled(i32) #1

declare dso_local i64 @pmap_enter_2mpage(i32, i64, %struct.TYPE_9__*, i32, %struct.rwlock**) #1

declare dso_local %struct.TYPE_9__* @pmap_enter_quick_locked(i32, i64, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.rwlock**) #1

declare dso_local %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
