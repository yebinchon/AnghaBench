; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_get_category_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_get_category_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SVN_ERR_BAD_FILENAME = common dso_local global i64 0, align 8
@SVN_REGISTRY_SYS_CONFIG_PATH = common dso_local global i32 0, align 4
@SVN_REGISTRY_USR_CONFIG_PATH = common dso_local global i32 0, align 4
@SVN_VA_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32**, i8*, i8*, i32*)* @get_category_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @get_category_config(i32** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %14, align 8
  %15 = load i32**, i32*** %6, align 8
  store i32* null, i32** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_6__* @svn_config__sys_config_path(i8** %13, i8* %19, i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %14, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SVN_ERR_BAD_FILENAME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  store i8* null, i8** %13, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %32 = call i32 @svn_error_clear(%struct.TYPE_6__* %31)
  br label %39

33:                                               ; preds = %24, %18
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %5, align 8
  br label %54

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %30
  br label %41

40:                                               ; preds = %4
  store i8* null, i8** %13, align 8
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @svn_config_get_user_config_path(i8** %12, i8* %42, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32**, i32*** %6, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call %struct.TYPE_6__* @read_all(i32** %47, i8* %48, i8* %49, i8* %50, i8* %51, i32* %52)
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %5, align 8
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %55
}

declare dso_local %struct.TYPE_6__* @svn_config__sys_config_path(i8**, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_get_user_config_path(i8**, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @read_all(i32**, i8*, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
