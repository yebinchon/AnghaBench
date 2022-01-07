; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_copy_path_strict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_copy_path_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_9__**, i64 }

@vdev_missing_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@vdev_indirect_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"vdev_copy_path: vdev type mismatch: %s != %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"vdev_copy_path: guids mismatch (%llu != %llu)\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"vdev_copy_path: children count mismatch: %llu != %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_copy_path_strict(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, @vdev_missing_ops
  br i1 %11, label %27, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, @vdev_indirect_ops
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %17, %2
  store i32 0, i32* %3, align 4
  br label %134

28:                                               ; preds = %22
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = icmp ne %struct.TYPE_10__* %31, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @vdev_dbgmsg(%struct.TYPE_9__* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @SET_ERROR(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %134

51:                                               ; preds = %28
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @vdev_dbgmsg(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @SET_ERROR(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %134

72:                                               ; preds = %51
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @vdev_dbgmsg(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %134

93:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  br label %94

94:                                               ; preds = %119, %93
  %95 = load i64, i64* %6, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %103, i64 %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = call i32 @vdev_copy_path_strict(%struct.TYPE_9__* %106, %struct.TYPE_9__* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %134

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %6, align 8
  br label %94

122:                                              ; preds = %94
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = call i32 @vdev_copy_path_impl(%struct.TYPE_9__* %130, %struct.TYPE_9__* %131)
  br label %133

133:                                              ; preds = %129, %122
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %116, %80, %59, %36, %27
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_copy_path_impl(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
