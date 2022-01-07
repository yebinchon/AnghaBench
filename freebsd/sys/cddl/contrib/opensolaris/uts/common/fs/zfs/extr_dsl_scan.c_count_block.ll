; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_count_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_count_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32* }

@DN_MAX_LEVELS = common dso_local global i32 0, align 4
@DMU_OT_TOTAL = common dso_local global i32 0, align 4
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@DMU_OT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_22__*)* @count_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_block(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = call i32 @BP_GET_NDVAS(%struct.TYPE_22__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @DVA_GET_ASIZE(i32* %29)
  %31 = call i32 @atomic_add_64(i32* %23, i32 %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = icmp eq %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %203

39:                                               ; preds = %35
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = call i32 @mutex_enter(i32* %41)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %196, %39
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %199

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = call i32 @BP_GET_LEVEL(%struct.TYPE_22__* %50)
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @DN_MAX_LEVELS, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %51, %49 ], [ %53, %52 ]
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %61 = call i32 @BP_GET_TYPE(%struct.TYPE_22__* %60)
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @DMU_OT_TOTAL, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @DMU_OT_OTHER, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %75, i64 %77
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 %81
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %10, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = call i64 @BP_GET_ASIZE(%struct.TYPE_22__* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %96 = call i64 @BP_GET_LSIZE(%struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = call i64 @BP_GET_PSIZE(%struct.TYPE_22__* %103)
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = call i64 @BP_COUNT_GANG(%struct.TYPE_22__* %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %120 = call i32 @BP_GET_NDVAS(%struct.TYPE_22__* %119)
  switch i32 %120, label %195 [
    i32 2, label %121
    i32 3, label %139
  ]

121:                                              ; preds = %72
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = call i32 @DVA_GET_VDEV(i32* %125)
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = call i32 @DVA_GET_VDEV(i32* %130)
  %132 = icmp eq i32 %126, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %121
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %121
  br label %195

139:                                              ; preds = %72
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = call i32 @DVA_GET_VDEV(i32* %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = call i32 @DVA_GET_VDEV(i32* %148)
  %150 = icmp eq i32 %144, %149
  %151 = zext i1 %150 to i32
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = call i32 @DVA_GET_VDEV(i32* %155)
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = call i32 @DVA_GET_VDEV(i32* %160)
  %162 = icmp eq i32 %156, %161
  %163 = zext i1 %162 to i32
  %164 = add nsw i32 %151, %163
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = call i32 @DVA_GET_VDEV(i32* %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = call i32 @DVA_GET_VDEV(i32* %173)
  %175 = icmp eq i32 %169, %174
  %176 = zext i1 %175 to i32
  %177 = add nsw i32 %164, %176
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %185

180:                                              ; preds = %139
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  br label %194

185:                                              ; preds = %139
  %186 = load i32, i32* %11, align 4
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %188, %185
  br label %194

194:                                              ; preds = %193, %180
  br label %195

195:                                              ; preds = %72, %194, %138
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %43

199:                                              ; preds = %43
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = call i32 @mutex_exit(i32* %201)
  br label %203

203:                                              ; preds = %199, %38
  ret void
}

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_22__*) #1

declare dso_local i32 @atomic_add_64(i32*, i32) #1

declare dso_local i32 @DVA_GET_ASIZE(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @BP_GET_LEVEL(%struct.TYPE_22__*) #1

declare dso_local i32 @BP_GET_TYPE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_ASIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_LSIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_22__*) #1

declare dso_local i64 @BP_COUNT_GANG(%struct.TYPE_22__*) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
