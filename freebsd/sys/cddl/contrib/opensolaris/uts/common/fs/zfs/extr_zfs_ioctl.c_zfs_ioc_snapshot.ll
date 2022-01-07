; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"props\00", align 1
@SPA_VERSION_SNAP_PROPS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_USERPROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_snapshot(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @nvlist_lookup_nvlist(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %9)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @nvlist_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @SPA_VERSION_SNAP_PROPS, align 4
  %24 = call i64 @zfs_earlier_version(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOTSUP, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %145

29:                                               ; preds = %21, %3
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @zfs_check_userprops(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %145

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @nvlist_lookup_nvlist(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %145

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @nvlist_next_nvpair(i32* %45, i32* null)
  store i32* %46, i32** %12, align 8
  br label %47

47:                                               ; preds = %135, %42
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %139

50:                                               ; preds = %47
  %51 = load i32*, i32** %12, align 8
  %52 = call i8* @nvpair_name(i32* %51)
  store i8* %52, i8** %13, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 64)
  store i8* %54, i8** %14, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i64 @zfs_component_namecheck(i8* %59, i32* null, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %50
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %145

65:                                               ; preds = %57
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @strncmp(i8* %66, i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 47
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 64
  br i1 %86, label %87, label %90

87:                                               ; preds = %79, %65
  %88 = load i32, i32* @EXDEV, align 4
  %89 = call i32 @SET_ERROR(i32 %88)
  store i32 %89, i32* %4, align 4
  br label %145

90:                                               ; preds = %79, %71
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @nvlist_empty(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = load i32, i32* @ZFS_DELEG_PERM_USERPROP, align 4
  %98 = call i32 (...) @CRED()
  %99 = call i32 @zfs_secpolicy_write_perms(i8* %96, i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %14, align 8
  store i8 64, i8* %100, align 1
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %4, align 4
  br label %145

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %90
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i32* @nvlist_next_nvpair(i32* %107, i32* %108)
  store i32* %109, i32** %15, align 8
  br label %110

110:                                              ; preds = %130, %106
  %111 = load i32*, i32** %15, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %134

113:                                              ; preds = %110
  %114 = load i8*, i8** %13, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = call i8* @nvpair_name(i32* %115)
  %117 = load i8*, i8** %14, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = add nsw i64 %121, 1
  %123 = trunc i64 %122 to i32
  %124 = call i64 @strncmp(i8* %114, i8* %116, i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %113
  %127 = load i32, i32* @EXDEV, align 4
  %128 = call i32 @SET_ERROR(i32 %127)
  store i32 %128, i32* %4, align 4
  br label %145

129:                                              ; preds = %113
  br label %130

130:                                              ; preds = %129
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = call i32* @nvlist_next_nvpair(i32* %131, i32* %132)
  store i32* %133, i32** %15, align 8
  br label %110

134:                                              ; preds = %110
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = call i32* @nvlist_next_nvpair(i32* %136, i32* %137)
  store i32* %138, i32** %12, align 8
  br label %47

139:                                              ; preds = %47
  %140 = load i32*, i32** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @dsl_dataset_snapshot(i32* %140, i32* %141, i32* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %139, %126, %103, %87, %62, %39, %33, %26
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @zfs_earlier_version(i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_check_userprops(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_component_namecheck(i8*, i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dsl_dataset_snapshot(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
