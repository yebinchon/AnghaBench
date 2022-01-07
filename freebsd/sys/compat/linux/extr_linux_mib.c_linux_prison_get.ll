; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_prison = type { i8*, i8*, i32 }
%struct.prison = type { i32 }
%struct.vfsoptlist = type { i32 }

@linux_prison_get.version0 = internal global i32 0, align 4
@JAIL_SYS_NEW = common dso_local global i32 0, align 4
@JAIL_SYS_INHERIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"linux.osname\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"linux.osrelease\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"linux.oss_version\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @linux_prison_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_prison_get(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.linux_prison*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.prison*, align 8
  %8 = alloca %struct.vfsoptlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.prison*
  store %struct.prison* %12, %struct.prison** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %14, %struct.vfsoptlist** %8, align 8
  %15 = load %struct.prison*, %struct.prison** %7, align 8
  %16 = call %struct.linux_prison* @linux_find_prison(%struct.prison* %15, %struct.prison** %6)
  store %struct.linux_prison* %16, %struct.linux_prison** %5, align 8
  %17 = load %struct.prison*, %struct.prison** %6, align 8
  %18 = load %struct.prison*, %struct.prison** %7, align 8
  %19 = icmp eq %struct.prison* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @JAIL_SYS_NEW, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @JAIL_SYS_INHERIT, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %10, align 4
  %26 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %27 = call i32 @vfs_setopt(%struct.vfsoptlist* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10, i32 4)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %109

35:                                               ; preds = %30, %24
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %35
  %39 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %40 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %41 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @vfs_setopts(%struct.vfsoptlist* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %109

51:                                               ; preds = %46, %38
  %52 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %53 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %54 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @vfs_setopts(%struct.vfsoptlist* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ENOENT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %109

64:                                               ; preds = %59, %51
  %65 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %66 = load %struct.linux_prison*, %struct.linux_prison** %5, align 8
  %67 = getelementptr inbounds %struct.linux_prison, %struct.linux_prison* %66, i32 0, i32 2
  %68 = call i32 @vfs_setopt(%struct.vfsoptlist* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %67, i32 4)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @ENOENT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %109

76:                                               ; preds = %71, %64
  br label %108

77:                                               ; preds = %35
  %78 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %79 = call i32 @vfs_setopts(%struct.vfsoptlist* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @ENOENT, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %109

87:                                               ; preds = %82, %77
  %88 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %89 = call i32 @vfs_setopts(%struct.vfsoptlist* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %109

97:                                               ; preds = %92, %87
  %98 = load %struct.vfsoptlist*, %struct.vfsoptlist** %8, align 8
  %99 = call i32 @vfs_setopt(%struct.vfsoptlist* %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* @linux_prison_get.version0, i32 4)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @ENOENT, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %109

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %76
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %108, %106, %96, %86, %75, %63, %50, %34
  %110 = load %struct.prison*, %struct.prison** %6, align 8
  %111 = getelementptr inbounds %struct.prison, %struct.prison* %110, i32 0, i32 0
  %112 = call i32 @mtx_unlock(i32* %111)
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local %struct.linux_prison* @linux_find_prison(%struct.prison*, %struct.prison**) #1

declare dso_local i32 @vfs_setopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

declare dso_local i32 @vfs_setopts(%struct.vfsoptlist*, i8*, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
