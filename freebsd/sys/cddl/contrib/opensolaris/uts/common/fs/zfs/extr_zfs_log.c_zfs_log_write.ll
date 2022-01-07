; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__*, i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32 }

@ZFS_LOGBIAS_THROUGHPUT = common dso_local global i64 0, align 8
@WR_INDIRECT = common dso_local global i64 0, align 8
@zfs_immediate_write_sz = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@FDSYNC = common dso_local global i32 0, align 4
@WR_COPIED = common dso_local global i64 0, align 8
@WR_NEED_COPY = common dso_local global i64 0, align 8
@zfs_fsyncer_key = common dso_local global i32 0, align 4
@ZIL_MAX_COPIED_DATA = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_write(%struct.TYPE_16__* %0, i32* %1, i32 %2, %struct.TYPE_15__* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %15, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i64 @zil_replaying(%struct.TYPE_16__* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %7
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %7
  br label %206

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ZFS_LOGBIAS_THROUGHPUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %42, i64* %16, align 8
  br label %68

43:                                               ; preds = %35
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @spa_has_slogs(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @zfs_immediate_write_sz, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %54, i64* %16, align 8
  br label %67

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @FSYNC, align 4
  %58 = load i32, i32* @FDSYNC, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* @WR_COPIED, align 8
  store i64 %63, i64* %16, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %65, i64* %16, align 8
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* @zfs_fsyncer_key, align 4
  %70 = call i64 @tsd_get(i32 %69)
  store i64 %70, i64* %17, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i32, i32* @zfs_fsyncer_key, align 4
  %74 = load i64, i64* %17, align 8
  %75 = sub i64 %74, 1
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @tsd_set(i32 %73, i8* %76)
  br label %78

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %195, %78
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %206

82:                                               ; preds = %79
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %20, align 8
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %21, align 4
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* @WR_COPIED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @ZIL_MAX_COPIED_DATA, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %93, i64* %20, align 8
  br label %107

94:                                               ; preds = %88, %82
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* @WR_INDIRECT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i64, i64* %15, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call i64 @P2PHASE(i32 %100, i64 %101)
  %103 = sub nsw i64 %99, %102
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @MIN(i64 %103, i32 %104)
  store i32 %105, i32* %21, align 4
  br label %106

106:                                              ; preds = %98, %94
  br label %107

107:                                              ; preds = %106, %92
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* @WR_COPIED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %21, align 4
  br label %115

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  %117 = sext i32 %116 to i64
  %118 = add i64 24, %117
  %119 = trunc i64 %118 to i32
  %120 = call %struct.TYPE_18__* @zil_itx_create(i32 %108, i32 %119)
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %18, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = bitcast i32* %122 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %123, %struct.TYPE_17__** %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* @WR_COPIED, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %115
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %21, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 1
  %140 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %141 = call i64 @dmu_read(i32 %132, i32 %135, i32 %136, i32 %137, %struct.TYPE_17__* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %127
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %145 = call i32 @zil_itx_destroy(%struct.TYPE_18__* %144)
  %146 = load i32, i32* %10, align 4
  %147 = call %struct.TYPE_18__* @zil_itx_create(i32 %146, i32 24)
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %18, align 8
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 3
  %150 = bitcast i32* %149 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %150, %struct.TYPE_17__** %19, align 8
  %151 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %151, i64* %20, align 8
  br label %152

152:                                              ; preds = %143, %127, %115
  %153 = load i64, i64* %20, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %21, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = call i32 @BP_ZERO(i32* %170)
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %176, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @FSYNC, align 4
  %179 = load i32, i32* @FDSYNC, align 4
  %180 = or i32 %178, %179
  %181 = and i32 %177, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %195, label %183

183:                                              ; preds = %152
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %183
  %189 = load i64, i64* %17, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, i32* @B_FALSE, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %188, %183, %152
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @zil_itx_assign(%struct.TYPE_16__* %196, %struct.TYPE_18__* %197, i32* %198)
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %13, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %13, align 4
  br label %79

206:                                              ; preds = %34, %79
  ret void
}

declare dso_local i64 @zil_replaying(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @spa_has_slogs(i32) #1

declare dso_local i64 @tsd_get(i32) #1

declare dso_local i32 @tsd_set(i32, i8*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @P2PHASE(i32, i64) #1

declare dso_local %struct.TYPE_18__* @zil_itx_create(i32, i32) #1

declare dso_local i64 @dmu_read(i32, i32, i32, i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_18__*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @zil_itx_assign(%struct.TYPE_16__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
