; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32* }

@FTAG = common dso_local global i32 0, align 4
@SPA_VERSION_FAST_SNAP = common dso_local global i64 0, align 8
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dsl_dataset_snapshot_check = common dso_local global i32 0, align 4
@dsl_dataset_snapshot_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_snapshot(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %14, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @nvlist_next_nvpair(i32* %21, i32* null)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %139

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @nvpair_name(i32* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @spa_open(i8* %29, i32** %12, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %139

36:                                               ; preds = %26
  %37 = load i32*, i32** %12, align 8
  %38 = call i64 @spa_version(i32* %37)
  %39 = load i64, i64* @SPA_VERSION_FAST_SNAP, align 8
  %40 = icmp slt i64 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @spa_close(i32* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %36
  %48 = call i32* (...) @fnvlist_alloc()
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @nvlist_next_nvpair(i32* %49, i32* null)
  store i32* %50, i32** %9, align 8
  br label %51

51:                                               ; preds = %91, %47
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %95

54:                                               ; preds = %51
  %55 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %15, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %16, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i8* @nvpair_name(i32* %59)
  store i8* %60, i8** %17, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 64)
  store i8* %62, i8** %18, align 8
  %63 = load i8*, i8** %18, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @EINVAL, align 4
  %67 = call i32 @SET_ERROR(i32 %66)
  store i32 %67, i32* %11, align 4
  store i32 2, i32* %20, align 4
  br label %87

68:                                               ; preds = %54
  %69 = load i8*, i8** %17, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = add nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i32 @strlcpy(i8* %58, i8* %69, i32 %76)
  %78 = call i32 @zil_suspend(i8* %58, i8** %19)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 2, i32* %20, align 4
  br label %87

82:                                               ; preds = %68
  %83 = load i32*, i32** %14, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = ptrtoint i8* %84 to i64
  %86 = call i32 @fnvlist_add_uint64(i32* %83, i8* %58, i64 %85)
  store i32 0, i32* %20, align 4
  br label %87

87:                                               ; preds = %82, %81, %65
  %88 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %20, align 4
  switch i32 %89, label %141 [
    i32 0, label %90
    i32 2, label %95
  ]

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32* @nvlist_next_nvpair(i32* %92, i32* %93)
  store i32* %94, i32** %9, align 8
  br label %51

95:                                               ; preds = %87, %51
  br label %96

96:                                               ; preds = %95, %36
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32* %97, i32** %98, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* %99, i32** %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32* %101, i32** %102, align 8
  %103 = call i32 (...) @CRED()
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* @dsl_dataset_snapshot_check, align 4
  %110 = load i32, i32* @dsl_dataset_snapshot_sync, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @fnvlist_num_pairs(i32* %111)
  %113 = mul nsw i32 %112, 3
  %114 = load i32, i32* @ZFS_SPACE_CHECK_NORMAL, align 4
  %115 = call i32 @dsl_sync_task(i8* %108, i32 %109, i32 %110, %struct.TYPE_3__* %8, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %107, %96
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load i32*, i32** %14, align 8
  %121 = call i32* @nvlist_next_nvpair(i32* %120, i32* null)
  store i32* %121, i32** %9, align 8
  br label %122

122:                                              ; preds = %130, %119
  %123 = load i32*, i32** %9, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32*, i32** %9, align 8
  %127 = call i64 @fnvpair_value_uint64(i32* %126)
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @zil_resume(i8* %128)
  br label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %14, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32* @nvlist_next_nvpair(i32* %131, i32* %132)
  store i32* %133, i32** %9, align 8
  br label %122

134:                                              ; preds = %122
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @fnvlist_free(i32* %135)
  br label %137

137:                                              ; preds = %134, %116
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %34, %25
  %140 = load i32, i32* %4, align 4
  ret i32 %140

141:                                              ; preds = %87
  unreachable
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32* @fnvlist_alloc(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @zil_suspend(i8*, i8**) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @fnvlist_num_pairs(i32*) #1

declare dso_local i32 @zil_resume(i8*) #1

declare dso_local i64 @fnvpair_value_uint64(i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
