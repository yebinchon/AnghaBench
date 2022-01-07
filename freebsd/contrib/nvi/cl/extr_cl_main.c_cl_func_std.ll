; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_main.c_cl_func_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_main.c_cl_func_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }

@cl_addstr = common dso_local global i32 0, align 4
@cl_waddstr = common dso_local global i32 0, align 4
@cl_attr = common dso_local global i32 0, align 4
@cl_baud = common dso_local global i32 0, align 4
@cl_bell = common dso_local global i32 0, align 4
@cl_clrtoeol = common dso_local global i32 0, align 4
@cl_cursor = common dso_local global i32 0, align 4
@cl_deleteln = common dso_local global i32 0, align 4
@cl_discard = common dso_local global i32 0, align 4
@cl_event = common dso_local global i32 0, align 4
@cl_ex_adjust = common dso_local global i32 0, align 4
@cl_fmap = common dso_local global i32 0, align 4
@cl_insertln = common dso_local global i32 0, align 4
@cl_keyval = common dso_local global i32 0, align 4
@cl_move = common dso_local global i32 0, align 4
@cl_optchange = common dso_local global i32 0, align 4
@cl_refresh = common dso_local global i32 0, align 4
@cl_rename = common dso_local global i32 0, align 4
@cl_screen = common dso_local global i32 0, align 4
@cl_split = common dso_local global i32 0, align 4
@cl_suspend = common dso_local global i32 0, align 4
@cl_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cl_func_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cl_func_std(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @cl_addstr, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 25
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @cl_waddstr, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 24
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @cl_attr, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 23
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @cl_baud, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 22
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @cl_bell, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 21
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 20
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 19
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @cl_clrtoeol, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 18
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @cl_cursor, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @cl_deleteln, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 16
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 15
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @cl_discard, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 14
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @cl_event, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @cl_ex_adjust, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @cl_fmap, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @cl_insertln, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @cl_keyval, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @cl_move, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @cl_optchange, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @cl_refresh, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @cl_rename, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @cl_screen, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @cl_split, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @cl_suspend, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @cl_usage, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
