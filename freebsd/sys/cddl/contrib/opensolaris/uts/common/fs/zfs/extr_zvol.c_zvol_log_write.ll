; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_log_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i32 }

@ZFS_LOGBIAS_THROUGHPUT = common dso_local global i64 0, align 8
@WR_INDIRECT = common dso_local global i64 0, align 8
@zvol_immediate_write_sz = common dso_local global i64 0, align 8
@WR_COPIED = common dso_local global i64 0, align 8
@WR_NEED_COPY = common dso_local global i64 0, align 8
@ZIL_MAX_COPIED_DATA = common dso_local global i64 0, align 8
@TX_WRITE = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i32, i64, i64)* @zvol_log_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_log_write(%struct.TYPE_12__* %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %12, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @zil_replaying(%struct.TYPE_13__* %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %175

29:                                               ; preds = %5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZFS_LOGBIAS_THROUGHPUT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %36, i64* %13, align 8
  br label %62

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @spa_has_slogs(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @zvol_immediate_write_sz, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @WR_INDIRECT, align 8
  store i64 %52, i64* %13, align 8
  br label %61

53:                                               ; preds = %47, %43, %37
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @WR_COPIED, align 8
  store i64 %57, i64* %13, align 8
  br label %60

58:                                               ; preds = %53
  %59 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %59, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %35
  br label %63

63:                                               ; preds = %162, %62
  %64 = load i64, i64* %9, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %175

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* @WR_COPIED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @ZIL_MAX_COPIED_DATA, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %77, i64* %16, align 8
  br label %91

78:                                               ; preds = %72, %66
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* @WR_INDIRECT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load i64, i64* %11, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @P2PHASE(i32 %84, i64 %85)
  %87 = sub nsw i64 %83, %86
  %88 = load i64, i64* %9, align 8
  %89 = call i64 @MIN(i64 %87, i64 %88)
  store i64 %89, i64* %17, align 8
  br label %90

90:                                               ; preds = %82, %78
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i32, i32* @TX_WRITE, align 4
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* @WR_COPIED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i64, i64* %17, align 8
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i64 [ %97, %96 ], [ 0, %98 ]
  %101 = add i64 32, %100
  %102 = trunc i64 %101 to i32
  %103 = call %struct.TYPE_15__* @zil_itx_create(i32 %92, i32 %102)
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %14, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = bitcast i32* %105 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* @WR_COPIED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %99
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %17, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i64 1
  %118 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %119 = call i64 @dmu_read_by_dnode(i32 %113, i32 %114, i64 %115, %struct.TYPE_14__* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %123 = call i32 @zil_itx_destroy(%struct.TYPE_15__* %122)
  %124 = load i32, i32* @TX_WRITE, align 4
  %125 = call %struct.TYPE_15__* @zil_itx_create(i32 %124, i32 32)
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %14, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = bitcast i32* %127 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %128, %struct.TYPE_14__** %15, align 8
  %129 = load i64, i64* @WR_NEED_COPY, align 8
  store i64 %129, i64* %16, align 8
  br label %130

130:                                              ; preds = %121, %110, %99
  %131 = load i64, i64* %16, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load i32, i32* @ZVOL_OBJ, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load i64, i64* %17, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = call i32 @BP_ZERO(i32* %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store %struct.TYPE_12__* %148, %struct.TYPE_12__** %150, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %130
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @B_FALSE, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %153, %130
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @zil_itx_assign(%struct.TYPE_13__* %163, %struct.TYPE_15__* %164, i32* %165)
  %167 = load i64, i64* %17, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %8, align 4
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* %9, align 8
  %174 = sub nsw i64 %173, %172
  store i64 %174, i64* %9, align 8
  br label %63

175:                                              ; preds = %28, %63
  ret void
}

declare dso_local i64 @zil_replaying(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @spa_has_slogs(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @P2PHASE(i32, i64) #1

declare dso_local %struct.TYPE_15__* @zil_itx_create(i32, i32) #1

declare dso_local i64 @dmu_read_by_dnode(i32, i32, i64, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @zil_itx_destroy(%struct.TYPE_15__*) #1

declare dso_local i32 @BP_ZERO(i32*) #1

declare dso_local i32 @zil_itx_assign(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
