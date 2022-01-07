; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_synctask_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_synctask_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"'deferred' kwarg only supported for snapshots: %s\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@dsl_destroy_snapshot_check = common dso_local global i32 0, align 4
@dsl_destroy_snapshot_sync = common dso_local global i32 0, align 4
@dsl_destroy_head_check = common dso_local global i32 0, align 4
@dsl_destroy_head_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*)* @zcp_synctask_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_synctask_destroy(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @lua_tostring(i32* %13, i32 1)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32* @strchr(i8* %15, i8 signext 64)
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @lua_isnil(i32* %23, i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %22, %3
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = bitcast %struct.TYPE_4__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 24, i1 false)
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @lua_isnil(i32* %37, i32 2)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lua_toboolean(i32* %41, i32 2)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  br label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @B_FALSE, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @dsl_destroy_snapshot_check, align 4
  %50 = load i32, i32* @dsl_destroy_snapshot_sync, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @zcp_sync_task(i32* %48, i32 %49, i32 %50, %struct.TYPE_4__* %11, i64 %51, i8* %52)
  store i32 %53, i32* %8, align 4
  br label %64

54:                                               ; preds = %30
  %55 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %55, i8 0, i64 24, i1 false)
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @dsl_destroy_head_check, align 4
  %60 = load i32, i32* @dsl_destroy_head_sync, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @zcp_sync_task(i32* %58, i32 %59, i32 %60, %struct.TYPE_4__* %12, i64 %61, i8* %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %54, %47
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %26
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @zcp_sync_task(i32*, i32, i32, %struct.TYPE_4__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
