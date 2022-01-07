; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prison = type { i32, i32, i32, i32 }
%struct.prison = type { i32 }
%struct.vfsoptlist = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"linux.osname\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"linux.osrelease\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"linux.oss_version\00", align 1
@linux_osd_jail_slot = common dso_local global i32 0, align 4
@LINUX_MAX_UTSNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @linux_prison_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_prison_set(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.linux_prison*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.vfsoptlist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.prison*
  store %struct.prison* %16, %struct.prison** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %18, %struct.vfsoptlist** %7, align 8
  %19 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %20 = call i32 @vfs_copyopt(%struct.vfsoptlist* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %12, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @ENOENT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %27 = call i32 @vfs_getopt(%struct.vfsoptlist* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %8, i32* %13)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* null, i8** %8, align 8
  br label %33

32:                                               ; preds = %25
  store i32 128, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %35 = call i32 @vfs_getopt(%struct.vfsoptlist* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %9, i32* %13)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* null, i8** %9, align 8
  br label %41

40:                                               ; preds = %33
  store i32 128, i32* %12, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %43 = call i32 @vfs_copyopt(%struct.vfsoptlist* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %14, i32 4)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ENOENT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %49

48:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  store i32 128, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %98 [
    i32 129, label %51
    i32 128, label %61
  ]

51:                                               ; preds = %49
  %52 = load %struct.prison*, %struct.prison** %6, align 8
  %53 = getelementptr inbounds %struct.prison, %struct.prison* %52, i32 0, i32 0
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load %struct.prison*, %struct.prison** %6, align 8
  %56 = load i32, i32* @linux_osd_jail_slot, align 4
  %57 = call i32 @osd_jail_del(%struct.prison* %55, i32 %56)
  %58 = load %struct.prison*, %struct.prison** %6, align 8
  %59 = getelementptr inbounds %struct.prison, %struct.prison* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %98

61:                                               ; preds = %49
  %62 = load %struct.prison*, %struct.prison** %6, align 8
  %63 = call i32 @linux_alloc_prison(%struct.prison* %62, %struct.linux_prison** %5)
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %69 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %68, i32 0, i32 3
  %70 = call i32 @linux_map_osrel(i8* %67, i32* %69)
  %71 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %72 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %76 = call i32 @strlcpy(i32 %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %82 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @LINUX_MAX_UTSNAME, align 4
  %86 = call i32 @strlcpy(i32 %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %93 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load %struct.prison*, %struct.prison** %6, align 8
  %96 = getelementptr inbounds %struct.prison, %struct.prison* %95, i32 0, i32 0
  %97 = call i32 @mtx_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %49, %51
  ret i32 0
}

declare dso_local i32 @vfs_copyopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

declare dso_local i32 @vfs_getopt(%struct.vfsoptlist*, i8*, i8**, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @osd_jail_del(%struct.prison*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @linux_alloc_prison(%struct.prison*, %struct.linux_prison**) #1

declare dso_local i32 @linux_map_osrel(i8*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
