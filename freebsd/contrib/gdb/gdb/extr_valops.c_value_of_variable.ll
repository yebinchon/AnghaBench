; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_of_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_of_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.frame_info = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"No frame is currently executing in block %s.\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"No frame is currently executing in specified block\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Address of symbol \22%s\22 is unknown.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_of_variable(%struct.symbol* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.frame_info*, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  store %struct.frame_info* null, %struct.frame_info** %6, align 8
  %7 = load %struct.block*, %struct.block** %4, align 8
  %8 = icmp ne %struct.block* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.frame_info* null, %struct.frame_info** %6, align 8
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.symbol*, %struct.symbol** %3, align 8
  %12 = call i64 @symbol_read_needs_frame(%struct.symbol* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.block*, %struct.block** %4, align 8
  %16 = call %struct.frame_info* @block_innermost_frame(%struct.block* %15)
  store %struct.frame_info* %16, %struct.frame_info** %6, align 8
  %17 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %18 = icmp ne %struct.frame_info* %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %14
  %20 = load %struct.block*, %struct.block** %4, align 8
  %21 = call %struct.symbol* @BLOCK_FUNCTION(%struct.block* %20)
  %22 = icmp ne %struct.symbol* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.block*, %struct.block** %4, align 8
  %25 = call %struct.symbol* @BLOCK_FUNCTION(%struct.block* %24)
  %26 = call i64 @SYMBOL_PRINT_NAME(%struct.symbol* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.block*, %struct.block** %4, align 8
  %30 = call %struct.symbol* @BLOCK_FUNCTION(%struct.block* %29)
  %31 = call i64 @SYMBOL_PRINT_NAME(%struct.symbol* %30)
  %32 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %35

33:                                               ; preds = %23, %19
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %36, %10
  br label %38

38:                                               ; preds = %37, %9
  %39 = load %struct.symbol*, %struct.symbol** %3, align 8
  %40 = load %struct.frame_info*, %struct.frame_info** %6, align 8
  %41 = call %struct.value* @read_var_value(%struct.symbol* %39, %struct.frame_info* %40)
  store %struct.value* %41, %struct.value** %5, align 8
  %42 = load %struct.value*, %struct.value** %5, align 8
  %43 = icmp ne %struct.value* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.symbol*, %struct.symbol** %3, align 8
  %46 = call i64 @SYMBOL_PRINT_NAME(%struct.symbol* %45)
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %49
}

declare dso_local i64 @symbol_read_needs_frame(%struct.symbol*) #1

declare dso_local %struct.frame_info* @block_innermost_frame(%struct.block*) #1

declare dso_local %struct.symbol* @BLOCK_FUNCTION(%struct.block*) #1

declare dso_local i64 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @read_var_value(%struct.symbol*, %struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
