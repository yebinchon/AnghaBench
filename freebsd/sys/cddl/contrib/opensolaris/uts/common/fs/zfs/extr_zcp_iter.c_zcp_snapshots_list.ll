; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_snapshots_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_snapshots_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32* }

@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"argument %s cannot be a snapshot\00", align 1
@zcp_snapshots_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_snapshots_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_snapshots_list(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @lua_tostring(i32* %9, i32 1)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_6__* @zcp_run_info(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @FTAG, align 4
  %19 = call %struct.TYPE_5__* @zcp_dataset_hold(i32* %15, i32* %16, i8* %17, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @dsl_dataset_rele(%struct.TYPE_5__* %30, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @zcp_argerror(i32* %36, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %2, align 4
  br label %47

39:                                               ; preds = %23
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @lua_pushnumber(i32* %40, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pushnumber(i32* %43, i32 0)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_pushcclosure(i32* %45, i32* @zcp_snapshots_iter, i32 2)
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %39, %35, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @zcp_run_info(i32*) #1

declare dso_local %struct.TYPE_5__* @zcp_dataset_hold(i32*, i32*, i8*, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @zcp_argerror(i32*, i32, i8*, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
