; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_free_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_free_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { %struct.tui_gen_win_info, %struct.TYPE_6__ }
%struct.tui_gen_win_info = type { i32, %struct.tui_win_info*, i32*, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, i32, i8* }
%struct.TYPE_4__ = type { %struct.tui_gen_win_info*, %struct.tui_win_info* }

@TUI_UNDEFINED_REGS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_free_window(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  %3 = alloca %struct.tui_gen_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %4 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %5 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %123 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %57
  ]

8:                                                ; preds = %1, %1
  %9 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %9, %struct.tui_gen_win_info** %3, align 8
  %10 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %11 = icmp ne %struct.tui_gen_win_info* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %14 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @tui_delete_win(i32* %15)
  %17 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %18 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %8
  %20 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %21 = call i32 @tui_free_win_content(%struct.tui_gen_win_info* %20)
  %22 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %23 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.tui_win_info*, %struct.tui_win_info** %25, align 8
  %27 = icmp ne %struct.tui_win_info* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %30 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.tui_win_info*, %struct.tui_win_info** %32, align 8
  %34 = call i32 @xfree(%struct.tui_win_info* %33)
  %35 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %36 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store %struct.tui_win_info* null, %struct.tui_win_info** %38, align 8
  br label %39

39:                                               ; preds = %28, %19
  %40 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %41 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %43, align 8
  store %struct.tui_gen_win_info* %44, %struct.tui_gen_win_info** %3, align 8
  %45 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %46 = icmp ne %struct.tui_gen_win_info* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %49 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @tui_delete_win(i32* %50)
  %52 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %53 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  %54 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %3, align 8
  %55 = call i32 @tui_free_win_content(%struct.tui_gen_win_info* %54)
  br label %56

56:                                               ; preds = %47, %39
  br label %124

57:                                               ; preds = %1
  %58 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %59 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %122

63:                                               ; preds = %57
  %64 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %65 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 6
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %70 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @tui_free_data_content(i8* %68, i32 %73)
  %75 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %76 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 6
  store i8* null, i8** %78, align 8
  %79 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %80 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i32 0, i32* %82, align 8
  %83 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %84 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %89 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @tui_free_data_content(i8* %87, i32 %92)
  %94 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %95 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  store i8* null, i8** %97, align 8
  %98 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %99 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %103 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %104 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  store i32 %102, i32* %106, align 8
  %107 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %108 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %113 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %117 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %120 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %120, i32 0, i32 3
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %63, %57
  br label %124

123:                                              ; preds = %1
  br label %124

124:                                              ; preds = %123, %122, %56
  %125 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %126 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %132 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @tui_delete_win(i32* %134)
  %136 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %137 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %137, i32 0, i32 2
  store i32* null, i32** %138, align 8
  %139 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %140 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %139, i32 0, i32 0
  %141 = call i32 @tui_free_win_content(%struct.tui_gen_win_info* %140)
  br label %142

142:                                              ; preds = %130, %124
  %143 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %144 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %144, i32 0, i32 1
  %146 = load %struct.tui_win_info*, %struct.tui_win_info** %145, align 8
  %147 = icmp ne %struct.tui_win_info* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %150 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %150, i32 0, i32 1
  %152 = load %struct.tui_win_info*, %struct.tui_win_info** %151, align 8
  %153 = call i32 @xfree(%struct.tui_win_info* %152)
  br label %154

154:                                              ; preds = %148, %142
  %155 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %156 = call i32 @xfree(%struct.tui_win_info* %155)
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i32 @tui_delete_win(i32*) #1

declare dso_local i32 @tui_free_win_content(%struct.tui_gen_win_info*) #1

declare dso_local i32 @xfree(%struct.tui_win_info*) #1

declare dso_local i32 @tui_free_data_content(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
