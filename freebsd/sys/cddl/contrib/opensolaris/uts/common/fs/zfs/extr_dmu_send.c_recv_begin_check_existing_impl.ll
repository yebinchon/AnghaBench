; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_recv_begin_check_existing_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_recv_begin_check_existing_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__*, %struct.TYPE_28__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i32 }

@recv_clone_name = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, i64)* @recv_begin_check_existing_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_begin_check_existing_impl(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %10, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %24 = call %struct.TYPE_20__* @dsl_dir_phys(%struct.TYPE_28__* %23)
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @recv_clone_name, align 4
  %28 = call i32 @zap_lookup(i32 %20, i32 %26, i32 %27, i32 8, i32 1, i64* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EBUSY, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  store i32 %41, i32* %4, align 4
  br label %207

42:                                               ; preds = %3
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = call i64 @dsl_dataset_has_resume_receive_state(%struct.TYPE_26__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EBUSY, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %207

49:                                               ; preds = %42
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %54 = call %struct.TYPE_21__* @dsl_dataset_phys(%struct.TYPE_26__* %53)
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @zap_lookup(i32 %52, i32 %56, i32 %61, i32 8, i32 1, i64* %8)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %49
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EEXIST, align 4
  %71 = call i32 @SET_ERROR(i32 %70)
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %71, %69 ], [ %73, %72 ]
  store i32 %75, i32* %4, align 4
  br label %207

76:                                               ; preds = %49
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dsl_fs_ss_limit_check(%struct.TYPE_28__* %79, i32 1, i32 %80, i32* null, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %207

89:                                               ; preds = %76
  %90 = load i64, i64* %7, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %180

92:                                               ; preds = %89
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = call %struct.TYPE_21__* @dsl_dataset_phys(%struct.TYPE_26__* %93)
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %132, %92
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %140

100:                                              ; preds = %97
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i32, i32* @FTAG, align 4
  %104 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_25__* %101, i64 %102, i32 %103, %struct.TYPE_26__** %11)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @ENODEV, align 4
  %109 = call i32 @SET_ERROR(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %207

110:                                              ; preds = %100
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %112, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %115, align 8
  %117 = icmp ne %struct.TYPE_28__* %113, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %120 = load i32, i32* @FTAG, align 4
  %121 = call i32 @dsl_dataset_rele(%struct.TYPE_26__* %119, i32 %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = call i32 @SET_ERROR(i32 %122)
  store i32 %123, i32* %4, align 4
  br label %207

124:                                              ; preds = %110
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %126 = call %struct.TYPE_21__* @dsl_dataset_phys(%struct.TYPE_26__* %125)
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %140

132:                                              ; preds = %124
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %134 = call %struct.TYPE_21__* @dsl_dataset_phys(%struct.TYPE_26__* %133)
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %12, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %138 = load i32, i32* @FTAG, align 4
  %139 = call i32 @dsl_dataset_rele(%struct.TYPE_26__* %137, i32 %138)
  br label %97

140:                                              ; preds = %131, %97
  %141 = load i64, i64* %12, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* @ENODEV, align 4
  %145 = call i32 @SET_ERROR(i32 %144)
  store i32 %145, i32* %4, align 4
  br label %207

146:                                              ; preds = %140
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %176

157:                                              ; preds = %146
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %160 = call i64 @dsl_dataset_modified_since_snap(%struct.TYPE_26__* %158, %struct.TYPE_26__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %164 = load i32, i32* @FTAG, align 4
  %165 = call i32 @dsl_dataset_rele(%struct.TYPE_26__* %163, i32 %164)
  %166 = load i32, i32* @ETXTBSY, align 4
  %167 = call i32 @SET_ERROR(i32 %166)
  store i32 %167, i32* %4, align 4
  br label %207

168:                                              ; preds = %157
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %168, %153
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %178 = load i32, i32* @FTAG, align 4
  %179 = call i32 @dsl_dataset_rele(%struct.TYPE_26__* %177, i32 %178)
  br label %206

180:                                              ; preds = %89
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* @EEXIST, align 4
  %189 = call i32 @SET_ERROR(i32 %188)
  store i32 %189, i32* %4, align 4
  br label %207

190:                                              ; preds = %180
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  %194 = icmp ne %struct.TYPE_24__* %193, null
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  br label %202

201:                                              ; preds = %190
  br label %202

202:                                              ; preds = %201, %195
  %203 = phi i64 [ %200, %195 ], [ 0, %201 ]
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %176
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %187, %162, %143, %118, %107, %87, %74, %46, %40
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_20__* @dsl_dir_phys(%struct.TYPE_28__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_dataset_has_resume_receive_state(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_21__* @dsl_dataset_phys(%struct.TYPE_26__*) #1

declare dso_local i32 @dsl_fs_ss_limit_check(%struct.TYPE_28__*, i32, i32, i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_25__*, i64, i32, %struct.TYPE_26__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @dsl_dataset_modified_since_snap(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
