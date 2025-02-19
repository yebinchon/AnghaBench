; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp.c_zcp_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@zcp_debug_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"txg %lld ZCP: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_debug(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_7__* @zcp_run_info(i32* %6)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* @zcp_debug_info, %struct.TYPE_8__** %5, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zcp_parse_args(i32* %8, i32 %11, i32 %14, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @lua_tostring(i32* %19, i32 1)
  store i8* %20, i8** %3, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25, i8* %26)
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @zcp_run_info(i32*) #1

declare dso_local i32 @zcp_parse_args(i32*, i32, i32, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
