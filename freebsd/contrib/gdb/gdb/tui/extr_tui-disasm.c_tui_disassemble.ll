; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_disassemble.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-disasm.c_tui_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_asm_line = type { i8*, i8*, i64 }
%struct.ui_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tui_asm_line*, i64, i32)* @tui_disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tui_disassemble(%struct.tui_asm_line* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.tui_asm_line*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ui_file*, align 8
  store %struct.tui_asm_line* %0, %struct.tui_asm_line** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.ui_file* @tui_sfileopen(i32 256)
  store %struct.ui_file* %8, %struct.ui_file** %7, align 8
  br label %9

9:                                                ; preds = %58, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %9
  %13 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %14 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %19 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @xfree(i8* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %24 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %29 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @xfree(i8* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %35 = call i32 @print_address(i64 %33, %struct.ui_file* %34)
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %38 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %40 = call i32 @tui_file_get_strbuf(%struct.ui_file* %39)
  %41 = call i8* @xstrdup(i32 %40)
  %42 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %43 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %45 = call i32 @ui_file_rewind(%struct.ui_file* %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %49 = call i64 @gdb_print_insn(i64 %47, %struct.ui_file* %48)
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %5, align 8
  %51 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %52 = call i32 @tui_file_get_strbuf(%struct.ui_file* %51)
  %53 = call i8* @xstrdup(i32 %52)
  %54 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %55 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %57 = call i32 @ui_file_rewind(%struct.ui_file* %56)
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = load %struct.tui_asm_line*, %struct.tui_asm_line** %4, align 8
  %62 = getelementptr inbounds %struct.tui_asm_line, %struct.tui_asm_line* %61, i32 1
  store %struct.tui_asm_line* %62, %struct.tui_asm_line** %4, align 8
  br label %9

63:                                               ; preds = %9
  %64 = load %struct.ui_file*, %struct.ui_file** %7, align 8
  %65 = call i32 @ui_file_delete(%struct.ui_file* %64)
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local %struct.ui_file* @tui_sfileopen(i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @print_address(i64, %struct.ui_file*) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @tui_file_get_strbuf(%struct.ui_file*) #1

declare dso_local i32 @ui_file_rewind(%struct.ui_file*) #1

declare dso_local i64 @gdb_print_insn(i64, %struct.ui_file*) #1

declare dso_local i32 @ui_file_delete(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
