; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_hold_free_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_tx.c_dmu_tx_hold_free_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@DMU_OBJECT_END = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32)* @dmu_tx_hold_free_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_tx_hold_free_impl(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = call i32 @dmu_tx_count_dnode(%struct.TYPE_13__* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = icmp sge i32 %30, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %214

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DMU_OBJECT_END, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %45, %41
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64, %61
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %71, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  br label %106

77:                                               ; preds = %56
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = call i32 @IS_P2ALIGNED(i32 %78, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %85, %77
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 1, %95
  %97 = call i32 @IS_P2ALIGNED(i32 %92, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %89
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  %104 = call i32 @dmu_tx_count_write(%struct.TYPE_13__* %100, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %99, %89
  br label %106

106:                                              ; preds = %105, %76
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %214

111:                                              ; preds = %106
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %10, align 4
  %123 = ashr i32 %121, %122
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %10, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @ASSERT(i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %139, %111
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %147 = call i32* @zio_root(i32 %145, i32* null, i32* null, i32 %146)
  store i32* %147, i32** %13, align 8
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %201, %140
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %204

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %10, align 4
  %156 = shl i32 %154, %155
  store i32 %156, i32* %15, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = call i32 @dnode_next_offset(%struct.TYPE_11__* %157, i32 0, i32* %15, i32 2, i32 1, i32 0)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %10, align 4
  %161 = ashr i32 %159, %160
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @ESRCH, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %153
  br label %204

170:                                              ; preds = %165
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 8
  %177 = load i32*, i32** %13, align 8
  %178 = call i32 @zio_wait(i32* %177)
  br label %214

179:                                              ; preds = %170
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 1, %184
  %186 = load i32, i32* @FTAG, align 4
  %187 = call i32 @zfs_refcount_add_many(i32* %181, i32 %185, i32 %186)
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @dmu_tx_check_ioerr(i32* %188, %struct.TYPE_11__* %189, i32 1, i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %179
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = call i32 @zio_wait(i32* %198)
  br label %214

200:                                              ; preds = %179
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %149

204:                                              ; preds = %169, %149
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @zio_wait(i32* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 8
  br label %214

213:                                              ; preds = %204
  br label %214

214:                                              ; preds = %40, %173, %194, %209, %213, %106
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_count_dnode(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_tx_count_write(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32* @zio_root(i32, i32*, i32*, i32) #1

declare dso_local i32 @dnode_next_offset(%struct.TYPE_11__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @zfs_refcount_add_many(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_check_ioerr(i32*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
