; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i64, %struct.TYPE_14__*, i8*, i64, i64, %struct.TYPE_13__, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i64, i32 (%struct.TYPE_15__*)* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_STATE_REMOVED = common dso_local global i64 0, align 8
@VDEV_AUX_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@FM_EREPORT_ZFS_DEVICE_OPEN_FAILED = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_NO_REPLICAS = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_TOO_SMALL = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_BAD_LABEL = common dso_local global i8* null, align 8
@FM_EREPORT_ZFS_DEVICE_UNKNOWN = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_set_state(%struct.TYPE_15__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 10
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %199

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %25
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = call i64 @vdev_is_dead(%struct.TYPE_15__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %55, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = call i32 %56(%struct.TYPE_15__* %57)
  br label %59

59:                                               ; preds = %51, %44, %40, %25
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %68
  %77 = load i64, i64* @VDEV_STATE_REMOVED, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @VDEV_AUX_NONE, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %175

84:                                               ; preds = %71, %64, %59
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @VDEV_STATE_REMOVED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** @B_TRUE, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  br label %174

92:                                               ; preds = %84
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %169

96:                                               ; preds = %92
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %98 = call i64 @spa_load_state(%struct.TYPE_16__* %97)
  %99 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = call i64 @spa_load_state(%struct.TYPE_16__* %102)
  %104 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %101, %96
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %113, %106, %101
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %122, %116
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %165, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %165, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = icmp ne %struct.TYPE_15__* %138, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  switch i32 %144, label %157 [
    i32 129, label %145
    i32 131, label %147
    i32 130, label %149
    i32 133, label %151
    i32 128, label %153
    i32 132, label %155
  ]

145:                                              ; preds = %143
  %146 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_OPEN_FAILED, align 8
  store i8* %146, i8** %11, align 8
  br label %159

147:                                              ; preds = %143
  %148 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_CORRUPT_DATA, align 8
  store i8* %148, i8** %11, align 8
  br label %159

149:                                              ; preds = %143
  %150 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_NO_REPLICAS, align 8
  store i8* %150, i8** %11, align 8
  br label %159

151:                                              ; preds = %143
  %152 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_BAD_GUID_SUM, align 8
  store i8* %152, i8** %11, align 8
  br label %159

153:                                              ; preds = %143
  %154 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_TOO_SMALL, align 8
  store i8* %154, i8** %11, align 8
  br label %159

155:                                              ; preds = %143
  %156 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_BAD_LABEL, align 8
  store i8* %156, i8** %11, align 8
  br label %159

157:                                              ; preds = %143
  %158 = load i8*, i8** @FM_EREPORT_ZFS_DEVICE_UNKNOWN, align 8
  store i8* %158, i8** %11, align 8
  br label %159

159:                                              ; preds = %157, %155, %153, %151, %149, %147, %145
  %160 = load i8*, i8** %11, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = load i64, i64* %9, align 8
  %164 = call i32 @zfs_ereport_post(i8* %160, %struct.TYPE_16__* %161, %struct.TYPE_15__* %162, i32* null, i64 %163, i32 0)
  br label %165

165:                                              ; preds = %159, %137, %132, %127, %122
  %166 = load i8*, i8** @B_FALSE, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  store i8* %166, i8** %168, align 8
  br label %173

169:                                              ; preds = %92
  %170 = load i8*, i8** @B_FALSE, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %173, %88
  br label %175

175:                                              ; preds = %174, %76
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = call i32 @zfs_post_state_change(%struct.TYPE_16__* %183, %struct.TYPE_15__* %184)
  br label %186

186:                                              ; preds = %182, %175
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %199, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @vdev_propagate_state(i64 %197)
  br label %199

199:                                              ; preds = %20, %194, %189, %186
  ret void
}

declare dso_local i64 @vdev_is_dead(%struct.TYPE_15__*) #1

declare dso_local i64 @spa_load_state(%struct.TYPE_16__*) #1

declare dso_local i32 @zfs_ereport_post(i8*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i64, i32) #1

declare dso_local i32 @zfs_post_state_change(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @vdev_propagate_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
