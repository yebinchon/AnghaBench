; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_add_content_elements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-data.c_tui_add_content_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i8**, i32, i32 }
%struct.tui_win_element = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tui_add_content_elements(%struct.tui_gen_win_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tui_gen_win_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tui_win_element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tui_gen_win_info* %0, %struct.tui_gen_win_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %10 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %16 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @tui_alloc_content(i32 %14, i32 %17)
  %19 = inttoptr i64 %18 to i8**
  %20 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %21 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %20, i32 0, i32 0
  store i8** %19, i8*** %21, align 8
  store i32 0, i32* %8, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %24 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %22, %13
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %63, %31
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = call i64 @xmalloc(i32 4)
  %41 = inttoptr i64 %40 to %struct.tui_win_element*
  store %struct.tui_win_element* %41, %struct.tui_win_element** %6, align 8
  %42 = icmp ne %struct.tui_win_element* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %45 = bitcast %struct.tui_win_element* %44 to i8*
  %46 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %47 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  %52 = load %struct.tui_win_element*, %struct.tui_win_element** %6, align 8
  %53 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %54 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @init_content_element(%struct.tui_win_element* %52, i32 %55)
  %57 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %4, align 8
  %58 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %62

61:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %69

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %33

66:                                               ; preds = %33
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @tui_alloc_content(i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @init_content_element(%struct.tui_win_element*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
