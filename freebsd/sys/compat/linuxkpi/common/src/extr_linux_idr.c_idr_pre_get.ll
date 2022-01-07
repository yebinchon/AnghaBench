; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_pre_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_pre_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, %struct.idr_layer*, i32 }
%struct.idr_layer = type { %struct.idr_layer**, i32 }

@M_IDR = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idr_pre_get(%struct.idr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.idr_layer*, align 8
  %7 = alloca %struct.idr_layer*, align 8
  %8 = alloca %struct.idr_layer*, align 8
  %9 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.idr*, %struct.idr** %4, align 8
  %11 = getelementptr inbounds %struct.idr, %struct.idr* %10, i32 0, i32 2
  %12 = call i32 @mtx_lock(i32* %11)
  br label %13

13:                                               ; preds = %77, %2
  %14 = load %struct.idr*, %struct.idr** %4, align 8
  %15 = getelementptr inbounds %struct.idr, %struct.idr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load %struct.idr*, %struct.idr** %4, align 8
  %19 = getelementptr inbounds %struct.idr, %struct.idr* %18, i32 0, i32 1
  %20 = load %struct.idr_layer*, %struct.idr_layer** %19, align 8
  store %struct.idr_layer* %20, %struct.idr_layer** %6, align 8
  br label %21

21:                                               ; preds = %27, %13
  %22 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %23 = icmp ne %struct.idr_layer* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %29 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %28, i32 0, i32 0
  %30 = load %struct.idr_layer**, %struct.idr_layer*** %29, align 8
  %31 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %30, i64 0
  %32 = load %struct.idr_layer*, %struct.idr_layer** %31, align 8
  store %struct.idr_layer* %32, %struct.idr_layer** %6, align 8
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.idr*, %struct.idr** %4, align 8
  %35 = getelementptr inbounds %struct.idr, %struct.idr* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %91

40:                                               ; preds = %33
  store %struct.idr_layer* null, %struct.idr_layer** %8, align 8
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %41
  %45 = load i32, i32* @M_IDR, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.idr_layer* @malloc(i32 16, i32 %45, i32 %48)
  store %struct.idr_layer* %49, %struct.idr_layer** %7, align 8
  %50 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %51 = icmp eq %struct.idr_layer* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %73

53:                                               ; preds = %44
  %54 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %55 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %54, i32 0, i32 1
  %56 = load i32, i32* @IDR_SIZE, align 4
  %57 = call i32 @bitmap_fill(i32* %55, i32 %56)
  %58 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %59 = icmp ne %struct.idr_layer* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  %62 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %63 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %62, i32 0, i32 0
  %64 = load %struct.idr_layer**, %struct.idr_layer*** %63, align 8
  %65 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %64, i64 0
  store %struct.idr_layer* %61, %struct.idr_layer** %65, align 8
  %66 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  store %struct.idr_layer* %66, %struct.idr_layer** %6, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load %struct.idr_layer*, %struct.idr_layer** %7, align 8
  store %struct.idr_layer* %68, %struct.idr_layer** %6, align 8
  store %struct.idr_layer* %68, %struct.idr_layer** %8, align 8
  br label %69

69:                                               ; preds = %67, %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  br label %41

73:                                               ; preds = %52, %41
  %74 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %75 = icmp eq %struct.idr_layer* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %92

77:                                               ; preds = %73
  %78 = load %struct.idr*, %struct.idr** %4, align 8
  %79 = getelementptr inbounds %struct.idr, %struct.idr* %78, i32 0, i32 2
  %80 = call i32 @mtx_lock(i32* %79)
  %81 = load %struct.idr*, %struct.idr** %4, align 8
  %82 = getelementptr inbounds %struct.idr, %struct.idr* %81, i32 0, i32 1
  %83 = load %struct.idr_layer*, %struct.idr_layer** %82, align 8
  %84 = load %struct.idr_layer*, %struct.idr_layer** %6, align 8
  %85 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %84, i32 0, i32 0
  %86 = load %struct.idr_layer**, %struct.idr_layer*** %85, align 8
  %87 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %86, i64 0
  store %struct.idr_layer* %83, %struct.idr_layer** %87, align 8
  %88 = load %struct.idr_layer*, %struct.idr_layer** %8, align 8
  %89 = load %struct.idr*, %struct.idr** %4, align 8
  %90 = getelementptr inbounds %struct.idr, %struct.idr* %89, i32 0, i32 1
  store %struct.idr_layer* %88, %struct.idr_layer** %90, align 8
  br label %13

91:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %76
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.idr_layer* @malloc(i32, i32, i32) #1

declare dso_local i32 @bitmap_fill(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
