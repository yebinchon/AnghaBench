; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_catch_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_catch_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32 }

@EX_EVENT_CATCH = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Info catch not supported with this target/compiler combination.\0A\00", align 1
@deprecated_selected_frame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No frame selected.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @catch_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catch_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symtab_and_line*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EX_EVENT_CATCH, align 4
  %7 = call %struct.symtab_and_line* @target_enable_exception_callback(i32 %6, i32 1)
  store %struct.symtab_and_line* %7, %struct.symtab_and_line** %5, align 8
  %8 = load %struct.symtab_and_line*, %struct.symtab_and_line** %5, align 8
  %9 = icmp ne %struct.symtab_and_line* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @gdb_stdout, align 4
  %12 = call i32 @fprintf_filtered(i32 %11, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @deprecated_selected_frame, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @deprecated_selected_frame, align 4
  %20 = load i32, i32* @gdb_stdout, align 4
  %21 = call i32 @print_frame_label_vars(i32 %19, i32 0, i32 %20)
  br label %22

22:                                               ; preds = %18, %10
  ret void
}

declare dso_local %struct.symtab_and_line* @target_enable_exception_callback(i32, i32) #1

declare dso_local i32 @fprintf_filtered(i32, i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @print_frame_label_vars(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
