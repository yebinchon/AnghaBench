; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._buf = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@spa_config_path = common dso_local global i8* null, align 8
@spa_namespace_lock = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_config_load() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._buf*, align 8
  %7 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = load i32, i32* @KM_SLEEP, align 4
  %10 = call i8* @kmem_alloc(i32 %8, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = load i8*, i8** @spa_config_path, align 8
  %14 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct._buf* @kobj_open_file(i8* %15)
  store %struct._buf* %16, %struct._buf** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = call i32 @kmem_free(i8* %17, i32 %18)
  %20 = load %struct._buf*, %struct._buf** %6, align 8
  %21 = icmp eq %struct._buf* %20, inttoptr (i64 -1 to %struct._buf*)
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %85

23:                                               ; preds = %0
  %24 = load %struct._buf*, %struct._buf** %6, align 8
  %25 = call i64 @kobj_get_filesize(%struct._buf* %24, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %75

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @KM_SLEEP, align 4
  %31 = call i8* @kmem_alloc(i32 %29, i32 %30)
  store i8* %31, i8** %1, align 8
  %32 = load %struct._buf*, %struct._buf** %6, align 8
  %33 = load i8*, i8** %1, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @kobj_read_file(%struct._buf* %32, i8* %33, i32 %34, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %75

38:                                               ; preds = %28
  %39 = load i8*, i8** %1, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @KM_SLEEP, align 4
  %42 = call i64 @nvlist_unpack(i8* %39, i32 %40, i32** %2, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %75

45:                                               ; preds = %38
  %46 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  store i32* null, i32** %4, align 8
  br label %47

47:                                               ; preds = %66, %65, %57, %45
  %48 = load i32*, i32** %2, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32* @nvlist_next_nvpair(i32* %48, i32* %49)
  store i32* %50, i32** %4, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @nvpair_type(i32* %53)
  %55 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %47

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = call i32* @fnvpair_value_nvlist(i32* %59)
  store i32* %60, i32** %3, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @nvpair_name(i32* %61)
  %63 = call i32* @spa_lookup(i32 %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %47

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @nvpair_name(i32* %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @spa_add(i32 %68, i32* %69, i32* null)
  br label %47

71:                                               ; preds = %47
  %72 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @nvlist_free(i32* %73)
  br label %75

75:                                               ; preds = %71, %44, %37, %27
  %76 = load i8*, i8** %1, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i8*, i8** %1, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @kmem_free(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct._buf*, %struct._buf** %6, align 8
  %84 = call i32 @kobj_close_file(%struct._buf* %83)
  br label %85

85:                                               ; preds = %82, %22
  ret void
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local %struct._buf* @kobj_open_file(i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i64 @kobj_get_filesize(%struct._buf*, i32*) #1

declare dso_local i64 @kobj_read_file(%struct._buf*, i8*, i32, i32) #1

declare dso_local i64 @nvlist_unpack(i8*, i32, i32**, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i32* @spa_lookup(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @spa_add(i32, i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kobj_close_file(%struct._buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
