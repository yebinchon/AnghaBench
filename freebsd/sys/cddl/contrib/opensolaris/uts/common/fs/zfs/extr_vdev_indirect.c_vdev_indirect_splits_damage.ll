; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_indirect.c_vdev_indirect_splits_damage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_indirect.c_vdev_indirect_splits_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @vdev_indirect_splits_damage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_indirect_splits_damage(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = call i8* @list_head(i32* %15)
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  br label %18

18:                                               ; preds = %55, %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %51, %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %35
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %7, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = call i32 @list_insert_tail(i32* %47, %struct.TYPE_14__* %48)
  br label %50

50:                                               ; preds = %41, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %24

54:                                               ; preds = %24
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = call %struct.TYPE_13__* @list_next(i32* %57, %struct.TYPE_13__* %58)
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %5, align 8
  br label %18

60:                                               ; preds = %18
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @vdev_indirect_splits_enumerate_randomly(%struct.TYPE_12__* %61, i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %138

67:                                               ; preds = %60
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = call i8* @list_head(i32* %71)
  %73 = bitcast i8* %72 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %9, align 8
  br label %74

74:                                               ; preds = %132, %67
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %137

77:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %89
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %11, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = icmp eq %struct.TYPE_14__* %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %113

97:                                               ; preds = %84
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = icmp eq %struct.TYPE_11__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %113

103:                                              ; preds = %97
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @abd_zero(%struct.TYPE_11__* %106, i32 %111)
  br label %113

113:                                              ; preds = %103, %102, %96
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %78

116:                                              ; preds = %78
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 2
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ugt i64 %124, 65536
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load i64, i64* @UINT64_MAX, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  br label %137

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = call %struct.TYPE_13__* @list_next(i32* %134, %struct.TYPE_13__* %135)
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %9, align 8
  br label %74

137:                                              ; preds = %126, %74
  br label %138

138:                                              ; preds = %137, %66
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = call i8* @list_head(i32* %140)
  %142 = bitcast i8* %141 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %12, align 8
  br label %143

143:                                              ; preds = %161, %138
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %145 = icmp ne %struct.TYPE_13__* %144, null
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %153, %146
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  %150 = call i8* @list_head(i32* %149)
  %151 = bitcast i8* %150 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %13, align 8
  %152 = icmp ne %struct.TYPE_14__* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %157 = call i32 @list_remove(i32* %155, %struct.TYPE_14__* %156)
  br label %147

158:                                              ; preds = %147
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %165 = call %struct.TYPE_13__* @list_next(i32* %163, %struct.TYPE_13__* %164)
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %12, align 8
  br label %143

166:                                              ; preds = %143
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i8* @list_head(i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @list_next(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_indirect_splits_enumerate_randomly(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @abd_zero(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
