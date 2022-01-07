; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_set_locator_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_set_locator_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_gen_win_info = type { i32, i8**, i32 }
%struct.tui_locator_element = type { i8*, i32, i32 }
%struct.tui_win_element = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tui_locator_element }

@MAX_LOCATOR_ELEMENT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @tui_set_locator_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_set_locator_info(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tui_gen_win_info*, align 8
  %10 = alloca %struct.tui_locator_element*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call %struct.tui_gen_win_info* (...) @tui_locator_win_info_ptr()
  store %struct.tui_gen_win_info* %11, %struct.tui_gen_win_info** %9, align 8
  %12 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %13 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %18 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @tui_alloc_content(i32 1, i32 %19)
  %21 = inttoptr i64 %20 to i8**
  %22 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %23 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %22, i32 0, i32 1
  store i8** %21, i8*** %23, align 8
  %24 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %25 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %16, %4
  %27 = load %struct.tui_gen_win_info*, %struct.tui_gen_win_info** %9, align 8
  %28 = getelementptr inbounds %struct.tui_gen_win_info, %struct.tui_gen_win_info* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.tui_win_element*
  %33 = getelementptr inbounds %struct.tui_win_element, %struct.tui_win_element* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.tui_locator_element* %34, %struct.tui_locator_element** %10, align 8
  %35 = load %struct.tui_locator_element*, %struct.tui_locator_element** %10, align 8
  %36 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load %struct.tui_locator_element*, %struct.tui_locator_element** %10, align 8
  %40 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* @MAX_LOCATOR_ELEMENT_LEN, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcat_to_buf(i8* %41, i32 %42, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.tui_locator_element*, %struct.tui_locator_element** %10, align 8
  %47 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.tui_locator_element*, %struct.tui_locator_element** %10, align 8
  %50 = getelementptr inbounds %struct.tui_locator_element, %struct.tui_locator_element* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @tui_set_locator_filename(i8* %51)
  ret void
}

declare dso_local %struct.tui_gen_win_info* @tui_locator_win_info_ptr(...) #1

declare dso_local i64 @tui_alloc_content(i32, i32) #1

declare dso_local i32 @strcat_to_buf(i8*, i32, i8*) #1

declare dso_local i32 @tui_set_locator_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
