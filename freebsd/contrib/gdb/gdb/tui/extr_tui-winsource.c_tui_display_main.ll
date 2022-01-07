; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_display_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-winsource.c_tui_display_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_display_main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.symtab_and_line, align 8
  %3 = alloca %struct.symtab_and_line, align 8
  %4 = call %struct.TYPE_4__* (...) @tui_source_windows()
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %0
  %9 = call i64 (...) @tui_get_begin_asm_address()
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @tui_update_source_windows_with_addr(i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = call %struct.TYPE_3__* @find_pc_line(i64 %15, i32 0)
  %17 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %3, i32 0, i32 0
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %17, align 8
  %18 = bitcast %struct.symtab_and_line* %2 to i8*
  %19 = bitcast %struct.symtab_and_line* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %2, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @tui_update_locator_filename(i8* %27)
  br label %31

29:                                               ; preds = %12
  %30 = call i32 @tui_update_locator_filename(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  br label %32

32:                                               ; preds = %31, %8
  br label %33

33:                                               ; preds = %32, %0
  ret void
}

declare dso_local %struct.TYPE_4__* @tui_source_windows(...) #1

declare dso_local i64 @tui_get_begin_asm_address(...) #1

declare dso_local i32 @tui_update_source_windows_with_addr(i64) #1

declare dso_local %struct.TYPE_3__* @find_pc_line(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tui_update_locator_filename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
