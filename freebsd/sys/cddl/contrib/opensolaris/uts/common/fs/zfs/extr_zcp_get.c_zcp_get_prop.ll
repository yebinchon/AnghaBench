; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_get.c_zcp_get_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_get.c_zcp_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@zcp_get_prop_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [52 x i8] c"user quota properties only supported in kernel mode\00", align 1
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"'%s' is not a valid property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_get_prop(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.TYPE_5__* @zcp_run_info(i32* %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  store %struct.TYPE_4__* @zcp_get_prop_info, %struct.TYPE_4__** %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @zcp_parse_args(i32* %13, i32 %16, i32 %19, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i8* @lua_tostring(i32* %24, i32 1)
  store i8* %25, i8** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @lua_tostring(i32* %26, i32 2)
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @zfs_prop_user(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @zcp_get_user_prop(i32* %32, i32* %33, i8* %34, i8* %35)
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %1
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @zfs_prop_userquota(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @luaL_error(i32* %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %2, align 4
  br label %71

45:                                               ; preds = %37
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @zfs_prop_written(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %3, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @zcp_get_written_prop(i32* %50, i32* %51, i8* %52, i8* %53)
  store i32 %54, i32* %2, align 4
  br label %71

55:                                               ; preds = %45
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @zfs_name_to_prop(i8* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @ZPROP_INVAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @zcp_get_system_prop(i32* %62, i32* %63, i8* %64, i64 %65)
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %55
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @luaL_error(i32* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %61, %49, %41, %31
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_5__* @zcp_run_info(i32*) #1

declare dso_local i32 @zcp_parse_args(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i32 @zcp_get_user_prop(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i64 @zfs_prop_written(i8*) #1

declare dso_local i32 @zcp_get_written_prop(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zcp_get_system_prop(i32*, i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
