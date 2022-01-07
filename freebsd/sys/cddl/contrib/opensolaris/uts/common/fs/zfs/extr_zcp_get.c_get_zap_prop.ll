; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_get.c_get_zap_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_get.c_get_zap_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZAP_MAXVALUELEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@PROP_TYPE_STRING = common dso_local global i64 0, align 8
@PROP_TYPE_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @get_zap_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zap_prop(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %20 = load i32, i32* @KM_SLEEP, align 4
  %21 = call i8* @kmem_alloc(i32 %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @zfs_prop_to_name(i32 %22)
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @zfs_prop_get_type(i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @PROP_TYPE_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @dsl_prop_get_ds(i32* %30, i8* %31, i32 1, i32 %32, i8* %33, i8* %18)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @lua_pushstring(i32* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %29
  br label %72

42:                                               ; preds = %3
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @dsl_prop_get_ds(i32* %43, i8* %44, i32 1, i32 1, i8* %11, i8* %18)
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @get_temporary_prop(i32* %46, i32 %47, i8* %11, i8* %18)
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @PROP_TYPE_INDEX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = load i8, i8* %11, align 1
  %55 = call i32 @zfs_prop_index_to_string(i32 %53, i8 signext %54, i8** %14)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @lua_pushstring(i32* %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %52
  br label %71

63:                                               ; preds = %42
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = load i8, i8* %11, align 1
  %69 = call i32 @lua_pushnumber(i32* %67, i8 signext %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %41
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %75 = call i32 @kmem_free(i8* %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @get_prop_src(i32* %79, i8* %18, i32 %80)
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kmem_alloc(i32, i32) #2

declare dso_local i8* @zfs_prop_to_name(i32) #2

declare dso_local i64 @zfs_prop_get_type(i32) #2

declare dso_local i32 @dsl_prop_get_ds(i32*, i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i32 @get_temporary_prop(i32*, i32, i8*, i8*) #2

declare dso_local i32 @zfs_prop_index_to_string(i32, i8 signext, i8**) #2

declare dso_local i32 @lua_pushnumber(i32*, i8 signext) #2

declare dso_local i32 @kmem_free(i8*, i32) #2

declare dso_local i32 @get_prop_src(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
