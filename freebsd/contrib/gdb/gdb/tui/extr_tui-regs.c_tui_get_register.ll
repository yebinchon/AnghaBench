; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_get_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_get_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }
%struct.tui_data_element = type { i64 }

@TUI_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i64 0, align 8
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TUI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdbarch*, %struct.frame_info*, %struct.tui_data_element*, i32, i32*)* @tui_get_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tui_get_register(%struct.gdbarch* %0, %struct.frame_info* %1, %struct.tui_data_element* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.gdbarch*, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca %struct.tui_data_element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %6, align 8
  store %struct.frame_info* %1, %struct.frame_info** %7, align 8
  store %struct.tui_data_element* %2, %struct.tui_data_element** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @TUI_FAILURE, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @FALSE, align 4
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i64, i64* @target_has_registers, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %23
  %27 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @get_frame_register(%struct.frame_info* %31, i32 %32, i8* %30)
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @register_cached(i32 %34)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %26
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %37
  %41 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @register_size(%struct.gdbarch* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load %struct.tui_data_element*, %struct.tui_data_element** %8, align 8
  %45 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %48

48:                                               ; preds = %77, %40
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %30, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8*, i8** %15, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %57, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %52
  %66 = load i32, i32* @TRUE, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %30, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %15, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8 %71, i8* %75, align 1
  br label %76

76:                                               ; preds = %65, %52
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %48

80:                                               ; preds = %48
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i32*, i32** %10, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84, %81
  %90 = load %struct.gdbarch*, %struct.gdbarch** %6, align 8
  %91 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %92 = load %struct.tui_data_element*, %struct.tui_data_element** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @tui_register_format(%struct.gdbarch* %90, %struct.frame_info* %91, %struct.tui_data_element* %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* @TUI_SUCCESS, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %95, %26
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %97, %23
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_frame_register(%struct.frame_info*, i32, i8*) #2

declare dso_local i64 @register_cached(i32) #2

declare dso_local i32 @register_size(%struct.gdbarch*, i32) #2

declare dso_local i32 @tui_register_format(%struct.gdbarch*, %struct.frame_info*, %struct.tui_data_element*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
