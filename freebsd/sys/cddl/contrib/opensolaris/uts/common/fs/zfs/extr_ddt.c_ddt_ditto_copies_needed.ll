; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_ditto_copies_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_ddt.c_ddt_ditto_copies_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__**, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@DDT_PHYS_SINGLE = common dso_local global i32 0, align 4
@DDT_PHYS_TRIPLE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddt_ditto_copies_needed(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %7, align 8
  store i64 0, i64* %8, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @DDT_PHYS_SINGLE, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %70, %3
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DDT_PHYS_TRIPLE, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %13, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %14, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %46, %27
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = icmp eq %struct.TYPE_12__* %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %15, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %15, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i64, i64* %15, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @UINT32_MAX, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %73
  %81 = load i64, i64* @UINT32_MAX, align 8
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i64, i64* %8, align 8
  %84 = icmp sge i64 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = mul nsw i64 %97, %98
  %100 = icmp sge i64 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @MAX(i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %107, %108
  ret i32 %109
}

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
