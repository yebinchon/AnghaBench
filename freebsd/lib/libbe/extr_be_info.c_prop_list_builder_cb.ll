; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_info.c_prop_list_builder_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_info.c_prop_list_builder_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64, i32* }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dataset\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mounted\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"mountpoint\00", align 1
@ZFS_PROP_ORIGIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ZFS_PROP_CREATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"creation\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@ZFS_PROP_USED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@ZFS_PROP_USEDDS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"usedds\00", align 1
@ZFS_PROP_USEDSNAP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"usedsnap\00", align 1
@ZFS_PROP_USEDREFRESERV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"usedrefreserv\00", align 1
@ZFS_PROP_REFERENCED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"referenced\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"nextboot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prop_list_builder_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %28 = load i32, i32* @KM_SLEEP, align 4
  %29 = call i32 @nvlist_alloc(i32** %9, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @zfs_get_name(i32* %31)
  store i8* %32, i8** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @nvlist_add_string(i32* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 47)
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %11, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @nvlist_add_string(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @zfs_is_mounted(i32* %42, i8** %6)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @nvlist_add_string(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %30
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %54 = call i64 @zfs_prop_get(i32* %51, i32 %52, i8* %53, i32 512, i32* null, i32* null, i32 0, i32 1)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %59 = call i32 @nvlist_add_string(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @ZFS_PROP_ORIGIN, align 4
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %64 = call i64 @zfs_prop_get(i32* %61, i32 %62, i8* %63, i32 512, i32* null, i32* null, i32 0, i32 1)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %69 = call i32 @nvlist_add_string(i32* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* @ZFS_PROP_CREATION, align 4
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %74 = call i64 @zfs_prop_get(i32* %71, i32 %72, i8* %73, i32 512, i32* null, i32* null, i32 0, i32 1)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %79 = call i32 @nvlist_add_string(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @be_active_path(i32* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i64 @strcmp(i32 %83, i8* %84)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @nvlist_add_boolean_value(i32* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* @ZFS_PROP_USED, align 4
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %92 = call i64 @zfs_prop_get(i32* %89, i32 %90, i8* %91, i32 512, i32* null, i32* null, i32 0, i32 1)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %97 = call i32 @nvlist_add_string(i32* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %94, %80
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @ZFS_PROP_USEDDS, align 4
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %102 = call i64 @zfs_prop_get(i32* %99, i32 %100, i8* %101, i32 512, i32* null, i32* null, i32 0, i32 1)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %107 = call i32 @nvlist_add_string(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %104, %98
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @ZFS_PROP_USEDSNAP, align 4
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %112 = call i64 @zfs_prop_get(i32* %109, i32 %110, i8* %111, i32 512, i32* null, i32* null, i32 0, i32 1)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %117 = call i32 @nvlist_add_string(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %114, %108
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @ZFS_PROP_USEDREFRESERV, align 4
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %122 = call i64 @zfs_prop_get(i32* %119, i32 %120, i8* %121, i32 512, i32* null, i32* null, i32 0, i32 1)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %127 = call i32 @nvlist_add_string(i32* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* @ZFS_PROP_REFERENCED, align 4
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %132 = call i64 @zfs_prop_get(i32* %129, i32 %130, i8* %131, i32 512, i32* null, i32* null, i32 0, i32 1)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %137 = call i32 @nvlist_add_string(i32* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32*, i32** %9, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @be_nextboot_path(i32* %140)
  %142 = load i8*, i8** %10, align 8
  %143 = call i64 @strcmp(i32 %141, i8* %142)
  %144 = icmp eq i64 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @nvlist_add_boolean_value(i32* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %138
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @nvlist_add_nvlist(i32* %154, i8* %155, i32* %156)
  br label %158

158:                                              ; preds = %151, %138
  ret i32 0
}

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_is_mounted(i32*, i8**) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @nvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @be_active_path(i32*) #1

declare dso_local i32 @be_nextboot_path(i32*) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
