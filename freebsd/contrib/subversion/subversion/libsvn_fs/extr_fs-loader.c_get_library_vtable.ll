; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_get_library_vtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_get_library_vtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_type_defn = type { %struct.fs_type_defn*, i32 }

@FALSE = common dso_local global i64 0, align 8
@fs_modules = common dso_local global %struct.fs_type_defn* null, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_ERR_FS_UNKNOWN_FS_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown FS type '%s'\00", align 1
@common_pool_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*, i32*)* @get_library_vtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_library_vtable(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fs_type_defn**, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %9, align 8
  store %struct.fs_type_defn** @fs_modules, %struct.fs_type_defn*** %8, align 8
  br label %11

11:                                               ; preds = %34, %3
  %12 = load %struct.fs_type_defn**, %struct.fs_type_defn*** %8, align 8
  %13 = load %struct.fs_type_defn*, %struct.fs_type_defn** %12, align 8
  %14 = icmp ne %struct.fs_type_defn* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.fs_type_defn**, %struct.fs_type_defn*** %8, align 8
  %18 = load %struct.fs_type_defn*, %struct.fs_type_defn** %17, align 8
  %19 = getelementptr inbounds %struct.fs_type_defn, %struct.fs_type_defn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i8* %16, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %9, align 8
  br label %38

25:                                               ; preds = %15
  %26 = load %struct.fs_type_defn**, %struct.fs_type_defn*** %8, align 8
  %27 = load %struct.fs_type_defn*, %struct.fs_type_defn** %26, align 8
  %28 = getelementptr inbounds %struct.fs_type_defn, %struct.fs_type_defn* %27, i32 0, i32 0
  %29 = load %struct.fs_type_defn*, %struct.fs_type_defn** %28, align 8
  %30 = icmp ne %struct.fs_type_defn* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %38

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.fs_type_defn**, %struct.fs_type_defn*** %8, align 8
  %36 = load %struct.fs_type_defn*, %struct.fs_type_defn** %35, align 8
  %37 = getelementptr inbounds %struct.fs_type_defn, %struct.fs_type_defn* %36, i32 0, i32 0
  store %struct.fs_type_defn** %37, %struct.fs_type_defn*** %8, align 8
  br label %11

38:                                               ; preds = %31, %23, %11
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @SVN_ERR_FS_UNKNOWN_FS_TYPE, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %6, align 8
  %45 = call i32* @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44)
  store i32* %45, i32** %4, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load i32**, i32*** %5, align 8
  %48 = load %struct.fs_type_defn**, %struct.fs_type_defn*** %8, align 8
  %49 = load %struct.fs_type_defn*, %struct.fs_type_defn** %48, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @get_library_vtable_direct(i32** %47, %struct.fs_type_defn* %49, i32* %50)
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @get_library_vtable_direct(i32**, %struct.fs_type_defn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
