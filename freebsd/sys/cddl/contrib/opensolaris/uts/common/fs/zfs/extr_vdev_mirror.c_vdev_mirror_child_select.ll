; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_mirror.c_vdev_mirror_child_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_mirror.c_vdev_mirror_child_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8* }

@INT_MAX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @vdev_mirror_child_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_mirror_child_select(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @BP_PHYSICAL_BIRTH(i32* %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %20, %1
  %28 = phi i1 [ true, %1 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* @INT_MAX, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %131, %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %134

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %40
  br label %131

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vdev_readable(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENXIO, align 4
  %65 = call i8* @SET_ERROR(i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %131

72:                                               ; preds = %57
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DTL_MISSING, align 4
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @vdev_dtl_contains(i32 %75, i32 %76, i64 %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %72
  %81 = load i32, i32* @ESTALE, align 4
  %82 = call i8* @SET_ERROR(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 6
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %131

89:                                               ; preds = %72
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vdev_mirror_load(%struct.TYPE_9__* %90, i32 %93, i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %131

106:                                              ; preds = %89
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %7, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  store i32 %119, i32* %126, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %118, %105, %80, %63, %56
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %34

134:                                              ; preds = %34
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 1
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = call i32 @vdev_queue_register_lastoffset(i32 %151, %struct.TYPE_8__* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %2, align 4
  br label %212

159:                                              ; preds = %134
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ugt i64 %162, 1
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = call i32 @vdev_mirror_preferred_child_randomize(%struct.TYPE_8__* %165)
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = call i32 @vdev_queue_register_lastoffset(i32 %174, %struct.TYPE_8__* %175)
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %2, align 4
  br label %212

178:                                              ; preds = %159
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %208, %178
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %179
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %185
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = call i32 @vdev_queue_register_lastoffset(i32 %203, %struct.TYPE_8__* %204)
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %2, align 4
  br label %212

207:                                              ; preds = %185
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %179

211:                                              ; preds = %179
  store i32 -1, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %195, %164, %139
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_PHYSICAL_BIRTH(i32*) #1

declare dso_local i32 @vdev_readable(i32) #1

declare dso_local i8* @SET_ERROR(i32) #1

declare dso_local i64 @vdev_dtl_contains(i32, i32, i64, i32) #1

declare dso_local i32 @vdev_mirror_load(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vdev_queue_register_lastoffset(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @vdev_mirror_preferred_child_randomize(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
