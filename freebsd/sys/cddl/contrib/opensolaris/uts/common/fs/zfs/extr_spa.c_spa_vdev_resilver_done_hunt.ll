; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_resilver_done_hunt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_resilver_done_hunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_7__**, i64, i32* }

@vdev_replacing_ops = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i32 0, align 4
@DTL_OUTAGE = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @spa_vdev_resilver_done_hunt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @spa_vdev_resilver_done_hunt(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %18, i64 %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call %struct.TYPE_7__* @spa_vdev_resilver_done_hunt(%struct.TYPE_7__* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %2, align 8
  br label %173

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, @vdev_replacing_ops
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %46, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %4, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load i32, i32* @DTL_MISSING, align 4
  %61 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %37
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = load i32, i32* @DTL_OUTAGE, align 4
  %66 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call i32 @vdev_dtl_required(%struct.TYPE_7__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %2, align 8
  br label %173

74:                                               ; preds = %68, %63, %37
  br label %75

75:                                               ; preds = %74, %32
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, @vdev_spare_ops
  br i1 %79, label %80, label %172

80:                                               ; preds = %75
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %7, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  store %struct.TYPE_7__* %95, %struct.TYPE_7__** %8, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %5, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %4, align 8
  br label %113

103:                                              ; preds = %80
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %5, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %4, align 8
  br label %112

111:                                              ; preds = %103
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %100
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = icmp ne %struct.TYPE_7__* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = load i32, i32* @DTL_MISSING, align 4
  %119 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = load i32, i32* @DTL_OUTAGE, align 4
  %124 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = call i32 @vdev_dtl_required(%struct.TYPE_7__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %2, align 8
  br label %173

132:                                              ; preds = %126, %121, %116, %113
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = call i32 @vdev_propagate_state(%struct.TYPE_7__* %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 2
  br i1 %138, label %139, label %171

139:                                              ; preds = %132
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %142, i64 1
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %4, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %139
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %156 = load i32, i32* @DTL_MISSING, align 4
  %157 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %161 = load i32, i32* @DTL_OUTAGE, align 4
  %162 = call i64 @vdev_dtl_empty(%struct.TYPE_7__* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = call i32 @vdev_dtl_required(%struct.TYPE_7__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %169, %struct.TYPE_7__** %2, align 8
  br label %173

170:                                              ; preds = %164, %159, %154, %149, %139
  br label %171

171:                                              ; preds = %170, %132
  br label %172

172:                                              ; preds = %171, %75
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %173

173:                                              ; preds = %172, %168, %130, %72, %26
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %174
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @vdev_dtl_empty(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vdev_dtl_required(%struct.TYPE_7__*) #1

declare dso_local i32 @vdev_propagate_state(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
