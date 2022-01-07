; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_prop_set_special.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_prop_set_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPL_VERSION_USERSPACE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @zfs_prop_set_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_prop_set_special(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i8* @nvpair_name(i32* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @zfs_name_to_prop(i8* %17)
  store i32 %18, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ZPROP_INVAL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @zfs_prop_userquota(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @zfs_prop_set_userquota(i8* %27, i32* %28)
  store i32 %29, i32* %4, align 4
  br label %134

30:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %134

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @nvpair_type(i32* %32)
  %34 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @nvpair_value_nvlist(i32* %37, i32** %12)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @ZPROP_VALUE, align 4
  %44 = call i64 @nvlist_lookup_nvpair(i32* %42, i32 %43, i32** %7)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @VERIFY(i32 %46)
  br label %48

48:                                               ; preds = %36, %31
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @zfs_prop_get_type(i32 %49)
  %51 = load i64, i64* @PROP_TYPE_STRING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %134

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @nvpair_value_uint64(i32* %55, i32* %10)
  %57 = icmp eq i64 0, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %131 [
    i32 134, label %61
    i32 133, label %66
    i32 135, label %71
    i32 130, label %71
    i32 131, label %84
    i32 132, label %89
    i32 128, label %94
    i32 129, label %98
  ]

61:                                               ; preds = %54
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dsl_dir_set_quota(i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %132

66:                                               ; preds = %54
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @dsl_dataset_set_refquota(i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  br label %132

71:                                               ; preds = %54, %54
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @UINT64_MAX, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @dsl_dir_activate_fs_ss_limit(i8* %77)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 -1, i32* %11, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %132

84:                                               ; preds = %54
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dsl_dir_set_reservation(i8* %85, i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %132

89:                                               ; preds = %54
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @dsl_dataset_set_refreservation(i8* %90, i32 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %132

94:                                               ; preds = %54
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @zvol_set_volsize(i8* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %132

98:                                               ; preds = %54
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* @FTAG, align 4
  %101 = load i32, i32* @B_TRUE, align 4
  %102 = call i32 @zfsvfs_hold(i8* %99, i32 %100, i32** %13, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %132

105:                                              ; preds = %98
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @zfs_set_version(i32* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* @FTAG, align 4
  %111 = call i32 @zfsvfs_rele(i32* %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ZPL_VERSION_USERSPACE, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32, i32* @KM_SLEEP, align 4
  %120 = call %struct.TYPE_5__* @kmem_zalloc(i32 4, i32 %119)
  store %struct.TYPE_5__* %120, %struct.TYPE_5__** %14, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = call i32 @strcpy(i32 %123, i8* %124)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %127 = call i32 @zfs_ioc_userspace_upgrade(%struct.TYPE_5__* %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %129 = call i32 @kmem_free(%struct.TYPE_5__* %128, i32 4)
  br label %130

130:                                              ; preds = %118, %114, %105
  br label %132

131:                                              ; preds = %54
  store i32 -1, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %130, %104, %94, %89, %84, %83, %66, %61
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %53, %30, %26
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @zfs_prop_set_userquota(i8*, i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i64 @zfs_prop_get_type(i32) #1

declare dso_local i64 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @dsl_dir_set_quota(i8*, i32, i32) #1

declare dso_local i32 @dsl_dataset_set_refquota(i8*, i32, i32) #1

declare dso_local i32 @dsl_dir_activate_fs_ss_limit(i8*) #1

declare dso_local i32 @dsl_dir_set_reservation(i8*, i32, i32) #1

declare dso_local i32 @dsl_dataset_set_refreservation(i8*, i32, i32) #1

declare dso_local i32 @zvol_set_volsize(i8*, i32) #1

declare dso_local i32 @zfsvfs_hold(i8*, i32, i32**, i32) #1

declare dso_local i32 @zfs_set_version(i32*, i32) #1

declare dso_local i32 @zfsvfs_rele(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @zfs_ioc_userspace_upgrade(%struct.TYPE_5__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
