; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_register_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-regs.c_tui_register_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.gdbarch = type { i32 }
%struct.frame_info = type { i32 }
%struct.tui_data_element = type { i32 }
%struct.cleanup = type { i32 }
%struct.type = type { i32 }

@pagination_enabled = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global %struct.ui_file* null, align 8
@tui_restore_gdbout = common dso_local global i32 0, align 4
@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%-14s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gdbarch*, %struct.frame_info*, %struct.tui_data_element*, i32)* @tui_register_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_register_format(%struct.gdbarch* %0, %struct.frame_info* %1, %struct.tui_data_element* %2, i32 %3) #0 {
  %5 = alloca %struct.gdbarch*, align 8
  %6 = alloca %struct.frame_info*, align 8
  %7 = alloca %struct.tui_data_element*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ui_file*, align 8
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cleanup*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.type*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.gdbarch* %0, %struct.gdbarch** %5, align 8
  store %struct.frame_info* %1, %struct.frame_info** %6, align 8
  store %struct.tui_data_element* %2, %struct.tui_data_element** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.type* @gdbarch_register_type(%struct.gdbarch* %20, i32 %21)
  store %struct.type* %22, %struct.type** %16, align 8
  %23 = load %struct.gdbarch*, %struct.gdbarch** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @gdbarch_register_name(%struct.gdbarch* %23, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %92

29:                                               ; preds = %4
  store i64 0, i64* @pagination_enabled, align 8
  %30 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  store %struct.ui_file* %30, %struct.ui_file** %10, align 8
  %31 = call %struct.ui_file* @tui_sfileopen(i32 256)
  store %struct.ui_file* %31, %struct.ui_file** %9, align 8
  %32 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  store %struct.ui_file* %32, %struct.ui_file** @gdb_stdout, align 8
  %33 = load i32, i32* @tui_restore_gdbout, align 4
  %34 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %35 = bitcast %struct.ui_file* %34 to i8*
  %36 = call %struct.cleanup* @make_cleanup(i32 %33, i8* %35)
  store %struct.cleanup* %36, %struct.cleanup** %12, align 8
  %37 = load %struct.type*, %struct.type** %16, align 8
  %38 = call i64 @TYPE_VECTOR(%struct.type* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %29
  br i1 false, label %41, label %60

41:                                               ; preds = %40
  %42 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %17, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %18, align 8
  %46 = load i32, i32* @current_gdbarch, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @register_size(i32 %46, i32 %47)
  store i32 %48, i32* %19, align 4
  %49 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @fprintf_filtered(%struct.ui_file* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @get_frame_register(%struct.frame_info* %52, i32 %53, i8* %45)
  %55 = load %struct.type*, %struct.type** %16, align 8
  %56 = load i32, i32* %19, align 4
  %57 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %58 = call i32 @print_scalar_formatted(i8* %45, %struct.type* %55, float 1.020000e+02, i32 %56, %struct.ui_file* %57)
  %59 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %59)
  br label %66

60:                                               ; preds = %40, %29
  %61 = load i32, i32* @current_gdbarch, align 4
  %62 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %63 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @gdbarch_print_registers_info(i32 %61, %struct.ui_file* %62, %struct.frame_info* %63, i32 %64, i32 1)
  br label %66

66:                                               ; preds = %60, %41
  %67 = load %struct.ui_file*, %struct.ui_file** %9, align 8
  %68 = call i8* @tui_file_get_strbuf(%struct.ui_file* %67)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i8* @strrchr(i8* %69, i8 signext 10)
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i8*, i8** %14, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i8*, i8** %14, align 8
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %73, %66
  %82 = load %struct.tui_data_element*, %struct.tui_data_element** %7, align 8
  %83 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @xfree(i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = call i32 @xstrdup(i8* %86)
  %88 = load %struct.tui_data_element*, %struct.tui_data_element** %7, align 8
  %89 = getelementptr inbounds %struct.tui_data_element, %struct.tui_data_element* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %91 = call i32 @do_cleanups(%struct.cleanup* %90)
  br label %92

92:                                               ; preds = %81, %28
  ret void
}

declare dso_local %struct.type* @gdbarch_register_type(%struct.gdbarch*, i32) #1

declare dso_local i8* @gdbarch_register_name(%struct.gdbarch*, i32) #1

declare dso_local %struct.ui_file* @tui_sfileopen(i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @TYPE_VECTOR(%struct.type*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @register_size(i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8*) #1

declare dso_local i32 @get_frame_register(%struct.frame_info*, i32, i8*) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, float, i32, %struct.ui_file*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @gdbarch_print_registers_info(i32, %struct.ui_file*, %struct.frame_info*, i32, i32) #1

declare dso_local i8* @tui_file_get_strbuf(%struct.ui_file*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
