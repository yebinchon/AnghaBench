; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_stack_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_stack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.print_stack_frame_args = type { i32, i32, i32, %struct.frame_info* }

@print_stack_frame_stub = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stack_frame(%struct.frame_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.print_stack_frame_args, align 8
  store %struct.frame_info* %0, %struct.frame_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %9 = getelementptr inbounds %struct.print_stack_frame_args, %struct.print_stack_frame_args* %7, i32 0, i32 3
  store %struct.frame_info* %8, %struct.frame_info** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %struct.print_stack_frame_args, %struct.print_stack_frame_args* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.print_stack_frame_args, %struct.print_stack_frame_args* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.print_stack_frame_args, %struct.print_stack_frame_args* %7, i32 0, i32 2
  store i32 1, i32* %14, align 8
  %15 = load i32, i32* @print_stack_frame_stub, align 4
  %16 = bitcast %struct.print_stack_frame_args* %7 to i8*
  %17 = load i32, i32* @RETURN_MASK_ALL, align 4
  %18 = call i32 @catch_errors(i32 %15, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local i32 @catch_errors(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
