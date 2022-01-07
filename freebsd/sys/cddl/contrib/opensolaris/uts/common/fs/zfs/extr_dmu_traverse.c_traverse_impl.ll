; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_traverse.c_traverse_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i64, i32*, i32, i8*, i8*, %struct.TYPE_14__*, i8*, i32, i32*, i64, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@TRAVERSE_PRE = common dso_local global i32 0, align 4
@TRAVERSE_POST = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@SPA_FEATURE_HOLE_BIRTH = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@ARC_FLAG_WAIT = common dso_local global i32 0, align 4
@arc_getbuf_func = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@TRAVERSE_PREFETCH_DATA = common dso_local global i32 0, align 4
@system_taskq = common dso_local global i32 0, align 4
@traverse_prefetch_thread = common dso_local global i32 0, align 4
@TQ_NOQUEUE = common dso_local global i32 0, align 4
@ZB_ROOT_OBJECT = common dso_local global i32 0, align 4
@ZB_ROOT_LEVEL = common dso_local global i32 0, align 4
@ZB_ROOT_BLKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, i64, i32*, i64, i32*, i32, i32, i8*)* @traverse_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_impl(i32* %0, %struct.TYPE_16__* %1, i64 %2, i32* %3, i64 %4, i32* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca %struct.TYPE_17__*, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %27 = bitcast %struct.TYPE_14__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 40, i1 false)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %29 = icmp eq %struct.TYPE_16__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %9
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br label %36

36:                                               ; preds = %30, %9
  %37 = phi i1 [ true, %9 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @TRAVERSE_PRE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @TRAVERSE_POST, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i1 [ true, %36 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  store i32* %54, i32** %55, align 8
  %56 = load i64, i64* %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 11
  store i32* %58, i32** %59, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 10
  store i64 %60, i64* %61, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 9
  store i32* %62, i32** %63, align 8
  %64 = load i32, i32* %18, align 4
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 8
  store i32 %64, i32* %65, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  store i8* %66, i8** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %68, align 8
  %69 = load i32, i32* %17, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load i8*, i8** @B_FALSE, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  store i8* %71, i8** %72, align 8
  %73 = load i64, i64* %15, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %50
  %76 = load i8*, i8** @B_FALSE, align 8
  br label %79

77:                                               ; preds = %50
  %78 = load i8*, i8** @B_TRUE, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i8* [ %76, %75 ], [ %78, %77 ]
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  store i8* %80, i8** %81, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @SPA_FEATURE_HOLE_BIRTH, align 4
  %84 = call i64 @spa_feature_is_active(i32* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* @SPA_FEATURE_HOLE_BIRTH, align 4
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  %90 = call i32 @spa_feature_enabled_txg(i32* %87, i32 %88, i32* %89)
  %91 = call i32 @VERIFY(i32 %90)
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @UINT64_MAX, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, i32* %17, align 4
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  store i32 %102, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %95
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %106 = load i32, i32* @MUTEX_DEFAULT, align 4
  %107 = call i32 @mutex_init(i32* %105, i32* null, i32 %106, i32* null)
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %109 = load i32, i32* @CV_DEFAULT, align 4
  %110 = call i32 @cv_init(i32* %108, i32* null, i32 %109, i32* null)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  br i1 %112, label %113, label %144

113:                                              ; preds = %104
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %144, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @BP_IS_HOLE(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @ARC_FLAG_WAIT, align 4
  store i32 %123, i32* %24, align 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* @arc_getbuf_func, align 4
  %128 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %129 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %130 = call i32 @arc_read(i32* null, i32* %125, i32* %126, i32 %127, %struct.TYPE_17__** %26, i32 %128, i32 %129, i32* %24, i32* null)
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %23, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = load i32, i32* %23, align 4
  store i32 %134, i32* %10, align 4
  br label %190

135:                                              ; preds = %122
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %25, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = call i32 @traverse_zil(%struct.TYPE_13__* %20, i32* %140)
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %143 = call i32 @arc_buf_destroy(%struct.TYPE_17__* %142, %struct.TYPE_17__** %26)
  br label %144

144:                                              ; preds = %135, %118, %113, %104
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @TRAVERSE_PREFETCH_DATA, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load i32, i32* @system_taskq, align 4
  %151 = load i32, i32* @traverse_prefetch_thread, align 4
  %152 = load i32, i32* @TQ_NOQUEUE, align 4
  %153 = call i64 @taskq_dispatch(i32 %150, i32 %151, %struct.TYPE_13__* %20, i32 %152)
  %154 = icmp eq i64 0, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %144
  %156 = load i8*, i8** @B_TRUE, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  store i8* %156, i8** %157, align 8
  br label %158

158:                                              ; preds = %155, %149
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @ZB_ROOT_OBJECT, align 4
  %162 = load i32, i32* @ZB_ROOT_LEVEL, align 4
  %163 = load i32, i32* @ZB_ROOT_BLKID, align 4
  %164 = call i32 @SET_BOOKMARK(i32* %22, i64 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @traverse_visitbp(%struct.TYPE_13__* %20, i32* null, i32* %165, i32* %22)
  store i32 %166, i32* %23, align 4
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %168 = call i32 @mutex_enter(i32* %167)
  %169 = load i8*, i8** @B_TRUE, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %172 = call i32 @cv_broadcast(i32* %171)
  br label %173

173:                                              ; preds = %178, %158
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  %177 = xor i1 %176, true
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %181 = call i32 @cv_wait(i32* %179, i32* %180)
  br label %173

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %184 = call i32 @mutex_exit(i32* %183)
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %186 = call i32 @mutex_destroy(i32* %185)
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %188 = call i32 @cv_destroy(i32* %187)
  %189 = load i32, i32* %23, align 4
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %182, %133
  %191 = load i32, i32* %10, align 4
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @spa_feature_is_active(i32*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @spa_feature_enabled_txg(i32*, i32, i32*) #2

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #2

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #2

declare dso_local i32 @BP_IS_HOLE(i32*) #2

declare dso_local i32 @arc_read(i32*, i32*, i32*, i32, %struct.TYPE_17__**, i32, i32, i32*, i32*) #2

declare dso_local i32 @traverse_zil(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @arc_buf_destroy(%struct.TYPE_17__*, %struct.TYPE_17__**) #2

declare dso_local i64 @taskq_dispatch(i32, i32, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @SET_BOOKMARK(i32*, i64, i32, i32, i32) #2

declare dso_local i32 @traverse_visitbp(%struct.TYPE_13__*, i32*, i32*, i32*) #2

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local i32 @cv_broadcast(i32*) #2

declare dso_local i32 @cv_wait(i32*, i32*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local i32 @mutex_destroy(i32*) #2

declare dso_local i32 @cv_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
