; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_mouse.c_mouse_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_mouse.c_mouse_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"xterm mouse initialization\00", align 1
@_nc_mouse_event = common dso_local global i32 0, align 4
@_nc_mouse_inline = common dso_local global i32 0, align 4
@_nc_mouse_parse = common dso_local global i32 0, align 4
@_nc_mouse_resume = common dso_local global i32 0, align 4
@_nc_mouse_wrap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xterm mouse deinitialization\00", align 1
@FALSE = common dso_local global i8* null, align 8
@SIGUSR2 = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@handle_sysmouse = common dso_local global i32 0, align 4
@my_gpm_fd = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @mouse_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mouse_activate(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %58

13:                                               ; preds = %7, %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @_nc_mouse_init(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %58

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %32 [
    i32 128, label %27
    i32 131, label %31
  ]

27:                                               ; preds = %21
  %28 = call i32 @TPUTS_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = call i32 @enable_xterm_mouse(%struct.TYPE_6__* %29, i32 1)
  br label %32

31:                                               ; preds = %21
  br label %58

32:                                               ; preds = %21, %27
  %33 = load i32, i32* @_nc_mouse_event, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @_nc_mouse_inline, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @_nc_mouse_parse, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @_nc_mouse_resume, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @_nc_mouse_wrap, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  br label %58

48:                                               ; preds = %18
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %57 [
    i32 128, label %52
    i32 131, label %56
  ]

52:                                               ; preds = %48
  %53 = call i32 @TPUTS_TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32 @enable_xterm_mouse(%struct.TYPE_6__* %54, i32 0)
  br label %57

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %48, %52
  br label %58

58:                                               ; preds = %12, %17, %31, %56, %57, %32
  ret void
}

declare dso_local i32 @_nc_mouse_init(%struct.TYPE_6__*) #1

declare dso_local i32 @TPUTS_TRACE(i8*) #1

declare dso_local i32 @enable_xterm_mouse(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
