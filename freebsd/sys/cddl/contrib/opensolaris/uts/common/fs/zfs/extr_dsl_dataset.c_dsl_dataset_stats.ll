; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_30__*, i64 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_31__ = type { i64 }

@ZFS_PROP_REFRATIO = common dso_local global i32 0, align 4
@ZFS_PROP_LOGICALREFERENCED = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSRATIO = common dso_local global i32 0, align 4
@ZFS_PROP_USED = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_PREV_SNAP = common dso_local global i32 0, align 4
@ZFS_PROP_AVAILABLE = common dso_local global i32 0, align 4
@ZFS_PROP_REFERENCED = common dso_local global i32 0, align 4
@ZFS_PROP_CREATION = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@ZFS_PROP_REFQUOTA = common dso_local global i32 0, align 4
@ZFS_PROP_REFRESERVATION = common dso_local global i32 0, align 4
@ZFS_PROP_GUID = common dso_local global i32 0, align 4
@ZFS_PROP_UNIQUE = common dso_local global i32 0, align 4
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@ZFS_PROP_USERREFS = common dso_local global i32 0, align 4
@ZFS_PROP_DEFER_DESTROY = common dso_local global i32 0, align 4
@ZFS_PROP_WRITTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@recv_clone_name = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_stats(%struct.TYPE_29__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @dsl_pool_config_held(i32* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ZFS_PROP_REFRATIO, align 4
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %23 = call i32 @dsl_get_refratio(%struct.TYPE_29__* %22)
  %24 = call i32 @dsl_prop_nvlist_add_uint64(i32* %20, i32 %21, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ZFS_PROP_LOGICALREFERENCED, align 4
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %28 = call i32 @dsl_get_logicalreferenced(%struct.TYPE_29__* %27)
  %29 = call i32 @dsl_prop_nvlist_add_uint64(i32* %25, i32 %26, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @ZFS_PROP_COMPRESSRATIO, align 4
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = call i32 @dsl_get_compressratio(%struct.TYPE_29__* %32)
  %34 = call i32 @dsl_prop_nvlist_add_uint64(i32* %30, i32 %31, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ZFS_PROP_USED, align 4
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %38 = call i32 @dsl_get_used(%struct.TYPE_29__* %37)
  %39 = call i32 @dsl_prop_nvlist_add_uint64(i32* %35, i32 %36, i32 %38)
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @get_clones_stat(%struct.TYPE_29__* %45, i32* %46)
  br label %67

48:                                               ; preds = %2
  %49 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %6, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %7, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %54 = call i64 @dsl_get_prev_snap(%struct.TYPE_29__* %53, i8* %52)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @ZFS_PROP_PREV_SNAP, align 4
  %59 = call i32 @dsl_prop_nvlist_add_string(i32* %57, i32 %58, i8* %52)
  br label %60

60:                                               ; preds = %56, %48
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %62, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @dsl_dir_stats(%struct.TYPE_30__* %63, i32* %64)
  %66 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %67

67:                                               ; preds = %60, %44
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @ZFS_PROP_AVAILABLE, align 4
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = call i32 @dsl_get_available(%struct.TYPE_29__* %70)
  %72 = call i32 @dsl_prop_nvlist_add_uint64(i32* %68, i32 %69, i32 %71)
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @ZFS_PROP_REFERENCED, align 4
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %76 = call i32 @dsl_get_referenced(%struct.TYPE_29__* %75)
  %77 = call i32 @dsl_prop_nvlist_add_uint64(i32* %73, i32 %74, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @ZFS_PROP_CREATION, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %81 = call i32 @dsl_get_creation(%struct.TYPE_29__* %80)
  %82 = call i32 @dsl_prop_nvlist_add_uint64(i32* %78, i32 %79, i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %86 = call i32 @dsl_get_creationtxg(%struct.TYPE_29__* %85)
  %87 = call i32 @dsl_prop_nvlist_add_uint64(i32* %83, i32 %84, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @ZFS_PROP_REFQUOTA, align 4
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %91 = call i32 @dsl_get_refquota(%struct.TYPE_29__* %90)
  %92 = call i32 @dsl_prop_nvlist_add_uint64(i32* %88, i32 %89, i32 %91)
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = call i32 @dsl_get_refreservation(%struct.TYPE_29__* %95)
  %97 = call i32 @dsl_prop_nvlist_add_uint64(i32* %93, i32 %94, i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @ZFS_PROP_GUID, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = call i32 @dsl_get_guid(%struct.TYPE_29__* %100)
  %102 = call i32 @dsl_prop_nvlist_add_uint64(i32* %98, i32 %99, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @ZFS_PROP_UNIQUE, align 4
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %106 = call i32 @dsl_get_unique(%struct.TYPE_29__* %105)
  %107 = call i32 @dsl_prop_nvlist_add_uint64(i32* %103, i32 %104, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %111 = call i32 @dsl_get_objsetid(%struct.TYPE_29__* %110)
  %112 = call i32 @dsl_prop_nvlist_add_uint64(i32* %108, i32 %109, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @ZFS_PROP_USERREFS, align 4
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %116 = call i32 @dsl_get_userrefs(%struct.TYPE_29__* %115)
  %117 = call i32 @dsl_prop_nvlist_add_uint64(i32* %113, i32 %114, i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* @ZFS_PROP_DEFER_DESTROY, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %121 = call i32 @dsl_get_defer_destroy(%struct.TYPE_29__* %120)
  %122 = call i32 @dsl_prop_nvlist_add_uint64(i32* %118, i32 %119, i32 %121)
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %124 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_29__* %123)
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %67
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %130 = call i64 @dsl_get_written(%struct.TYPE_29__* %129, i32* %8)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @ZFS_PROP_WRITTEN, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @dsl_prop_nvlist_add_uint64(i32* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %67
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = call i32 @dsl_dataset_is_snapshot(%struct.TYPE_29__* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %177, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @get_receive_resume_stats(%struct.TYPE_29__* %143, i32* %144)
  %146 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %147 = add nsw i32 %146, 6
  %148 = zext i32 %147 to i64
  %149 = call i8* @llvm.stacksave()
  store i8* %149, i8** %9, align 8
  %150 = alloca i8, i64 %148, align 16
  store i64 %148, i64* %10, align 8
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %152 = call i32 @dsl_dataset_name(%struct.TYPE_29__* %151, i8* %150)
  %153 = trunc i64 %148 to i32
  %154 = call i32 @strlcat(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = sext i32 %154 to i64
  %156 = icmp ult i64 %155, %148
  br i1 %156, label %157, label %175

157:                                              ; preds = %142
  %158 = load i8*, i8** @recv_clone_name, align 8
  %159 = trunc i64 %148 to i32
  %160 = call i32 @strlcat(i8* %150, i8* %158, i32 %159)
  %161 = sext i32 %160 to i64
  %162 = icmp ult i64 %161, %148
  br i1 %162, label %163, label %175

163:                                              ; preds = %157
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* @FTAG, align 4
  %166 = call i64 @dsl_dataset_hold(i32* %164, i8* %150, i32 %165, %struct.TYPE_29__** %11)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @get_receive_resume_stats(%struct.TYPE_29__* %169, i32* %170)
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %173 = load i32, i32* @FTAG, align 4
  %174 = call i32 @dsl_dataset_rele(%struct.TYPE_29__* %172, i32 %173)
  br label %175

175:                                              ; preds = %168, %163, %157, %142
  %176 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %176)
  br label %177

177:                                              ; preds = %175, %138
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @dsl_prop_nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @dsl_get_refratio(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_logicalreferenced(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_compressratio(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_used(%struct.TYPE_29__*) #1

declare dso_local i32 @get_clones_stat(%struct.TYPE_29__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dsl_get_prev_snap(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @dsl_prop_nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @dsl_dir_stats(%struct.TYPE_30__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dsl_get_available(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_referenced(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_creation(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_creationtxg(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_refquota(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_refreservation(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_guid(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_unique(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_objsetid(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_userrefs(%struct.TYPE_29__*) #1

declare dso_local i32 @dsl_get_defer_destroy(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_29__*) #1

declare dso_local i64 @dsl_get_written(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dsl_dataset_is_snapshot(%struct.TYPE_29__*) #1

declare dso_local i32 @get_receive_resume_stats(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_29__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
