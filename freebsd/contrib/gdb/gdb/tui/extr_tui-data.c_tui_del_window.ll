; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_del_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_del_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8*, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.tui_gen_win_info*, i32 }
%struct.tui_gen_win_info = type { i8*, i32* }

@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_del_window(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %4 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %5 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %89 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %59
  ]

8:                                                ; preds = %1, %1
  %9 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %9, %struct.tui_gen_win_info** %3, align 8
  %10 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %11 = icmp ne %struct.tui_gen_win_info* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %14 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @tui_delete_win(i32* %15)
  %17 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %18 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load i8*, i8** @FALSE, align 8
  %20 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %21 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %12, %8
  %23 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %24 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %31 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @xfree(i32 %34)
  %36 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %37 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %29, %22
  %41 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %42 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %44, align 8
  store %struct.tui_gen_win_info* %45, %struct.tui_gen_win_info** %3, align 8
  %46 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %47 = icmp ne %struct.tui_gen_win_info* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %50 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @tui_delete_win(i32* %51)
  %53 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %54 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %57 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %40
  br label %90

59:                                               ; preds = %1
  %60 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %61 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %67 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %72 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @tui_del_data_windows(i32 %70, i32 %75)
  %77 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %78 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %83 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @tui_del_data_windows(i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %65, %59
  br label %90

89:                                               ; preds = %1
  br label %90

90:                                               ; preds = %89, %88, %58
  %91 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %92 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %98 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @tui_delete_win(i32* %100)
  %102 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %103 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  %105 = load i8*, i8** @FALSE, align 8
  %106 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %107 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  br label %109

109:                                              ; preds = %96, %90
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_delete_win(i32*) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @tui_del_data_windows(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
