; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_args_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_print_args_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_args_args = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @print_args_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_args_stub(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.print_args_args*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.print_args_args*
  store %struct.print_args_args* %6, %struct.print_args_args** %4, align 8
  %7 = call i64 (...) @FRAME_NUM_ARGS_P()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.print_args_args*, %struct.print_args_args** %4, align 8
  %11 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FRAME_NUM_ARGS(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @gdb_assert(i32 %16)
  br label %19

18:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %9
  %20 = load %struct.print_args_args*, %struct.print_args_args** %4, align 8
  %21 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.print_args_args*, %struct.print_args_args** %4, align 8
  %24 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.print_args_args*, %struct.print_args_args** %4, align 8
  %28 = getelementptr inbounds %struct.print_args_args, %struct.print_args_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @print_frame_args(i32 %22, i32 %25, i32 %26, i32 %29)
  ret i32 0
}

declare dso_local i64 @FRAME_NUM_ARGS_P(...) #1

declare dso_local i32 @FRAME_NUM_ARGS(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @print_frame_args(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
