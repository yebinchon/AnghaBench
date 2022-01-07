; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8
@VDEV_INITIALIZE_SUSPENDED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_CANCELED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid cmd_type %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_initialize(%struct.TYPE_17__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = load i32, i32* @SCL_CONFIG, align 4
  %12 = load i32, i32* @SCL_STATE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FTAG, align 4
  %15 = load i32, i32* @RW_READER, align 4
  %16 = call i32 @spa_config_enter(%struct.TYPE_17__* %10, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  %20 = call %struct.TYPE_16__* @spa_lookup_by_guid(%struct.TYPE_17__* %17, i32 %18, i32 %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = icmp eq %struct.TYPE_16__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = load i32, i32* @SCL_CONFIG, align 4
  %31 = load i32, i32* @SCL_STATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FTAG, align 4
  %34 = call i32 @spa_config_exit(%struct.TYPE_17__* %29, i32 %32, i32 %33)
  %35 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %172

38:                                               ; preds = %23
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %47 = call i32 @vdev_is_concrete(%struct.TYPE_16__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = load i32, i32* @SCL_CONFIG, align 4
  %52 = load i32, i32* @SCL_STATE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i32 @spa_config_exit(%struct.TYPE_17__* %50, i32 %53, i32 %54)
  %56 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %172

59:                                               ; preds = %45
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = call i32 @vdev_writeable(%struct.TYPE_16__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = load i32, i32* @SCL_CONFIG, align 4
  %66 = load i32, i32* @SCL_STATE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @FTAG, align 4
  %69 = call i32 @spa_config_exit(%struct.TYPE_17__* %64, i32 %67, i32 %68)
  %70 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %71 = load i32, i32* @EROFS, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %4, align 4
  br label %172

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = call i32 @mutex_enter(i32* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load i32, i32* @SCL_CONFIG, align 4
  %81 = load i32, i32* @SCL_STATE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @spa_config_exit(%struct.TYPE_17__* %79, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %106

87:                                               ; preds = %75
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92, %87
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = call i32 @mutex_exit(i32* %101)
  %103 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %104 = load i32, i32* @EBUSY, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %4, align 4
  br label %172

106:                                              ; preds = %92, %75
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %109
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VDEV_INITIALIZE_SUSPENDED, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = call i32 @mutex_exit(i32* %123)
  %125 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %126 = load i32, i32* @ESRCH, align 4
  %127 = call i32 @SET_ERROR(i32 %126)
  store i32 %127, i32* %4, align 4
  br label %172

128:                                              ; preds = %115, %109, %106
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 128
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = call i32 @mutex_exit(i32* %139)
  %141 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %142 = load i32, i32* @ESRCH, align 4
  %143 = call i32 @SET_ERROR(i32 %142)
  store i32 %143, i32* %4, align 4
  br label %172

144:                                              ; preds = %131, %128
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  switch i32 %147, label %159 [
    i32 129, label %148
    i32 130, label %151
    i32 128, label %155
  ]

148:                                              ; preds = %146
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = call i32 @vdev_initialize(%struct.TYPE_16__* %149)
  br label %163

151:                                              ; preds = %146
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = load i64, i64* @VDEV_INITIALIZE_CANCELED, align 8
  %154 = call i32 @vdev_initialize_stop(%struct.TYPE_16__* %152, i64 %153)
  br label %163

155:                                              ; preds = %146
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = load i64, i64* @VDEV_INITIALIZE_SUSPENDED, align 8
  %158 = call i32 @vdev_initialize_stop(%struct.TYPE_16__* %156, i64 %157)
  br label %163

159:                                              ; preds = %146
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %161)
  br label %163

163:                                              ; preds = %159, %155, %151, %148
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = call i32 @mutex_exit(i32* %165)
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @txg_wait_synced(i32 %169, i32 0)
  %171 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %163, %137, %121, %99, %63, %49, %28
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @spa_lookup_by_guid(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_writeable(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_initialize(%struct.TYPE_16__*) #1

declare dso_local i32 @vdev_initialize_stop(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
