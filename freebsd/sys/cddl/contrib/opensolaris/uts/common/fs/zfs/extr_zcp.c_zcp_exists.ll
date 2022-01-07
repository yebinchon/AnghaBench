; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_exists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@zcp_exists_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dataset '%s' is not in the target pool\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"I/O error opening dataset '%s'\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unexpected error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_exists(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_5__* @zcp_run_info(i32* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store %struct.TYPE_6__* @zcp_exists_info, %struct.TYPE_6__** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @zcp_parse_args(i32* %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @lua_tostring(i32* %26, i32 1)
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_dataset_hold(i32* %28, i8* %29, i32 %30, i32** %8)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_dataset_rele(i32* %35, i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @B_TRUE, align 4
  %40 = call i32 @lua_pushboolean(i32* %38, i32 %39)
  br label %76

41:                                               ; preds = %1
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @B_FALSE, align 4
  %48 = call i32 @lua_pushboolean(i32* %46, i32 %47)
  br label %75

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @EXDEV, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i32*, i8*, ...) @luaL_error(i32* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %2, align 4
  br label %77

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EIO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i32*, i8*, ...) @luaL_error(i32* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  store i32 %64, i32* %2, align 4
  br label %77

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32*, i8*, ...) @luaL_error(i32* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %45
  br label %76

76:                                               ; preds = %75, %34
  store i32 1, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %68, %61, %53
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_5__* @zcp_run_info(i32*) #1

declare dso_local i32 @zcp_parse_args(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
