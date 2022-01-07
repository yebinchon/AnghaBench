; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_reconstruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_reconstruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @vdev_raidz_reconstruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_reconstruct(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 1, i32* %10, align 4
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %28, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %14, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %107, %41
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %61, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %18, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %106

76:                                               ; preds = %60, %56
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %18, i64 %90
  store i32 %87, i32* %91, align 4
  br label %105

92:                                               ; preds = %76
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %14, align 4
  br label %104

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %68
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %50

110:                                              ; preds = %50
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp sge i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load i32, i32* %14, align 4
  %117 = icmp sge i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @ASSERT(i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @vdev_raidz_reconstruct_general(%struct.TYPE_6__* %127, i32* %18, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %132 = shl i32 1, %131
  %133 = icmp slt i32 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ASSERT(i32 %134)
  %136 = load i32, i32* %12, align 4
  %137 = icmp sgt i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @ASSERT(i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %141)
  ret i32 %140
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @vdev_raidz_reconstruct_general(%struct.TYPE_6__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
