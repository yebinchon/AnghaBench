; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frame_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frame_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@SIGTRAMP_FRAME = common dso_local global i64 0, align 8
@SIG_FRAME_FP_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rs6000_frame_chain(%struct.frame_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %8 = load i32, i32* @current_gdbarch, align 4
  %9 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %13 = call i64 @get_frame_pc(%struct.frame_info* %12)
  %14 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %15 = call i64 @get_frame_base(%struct.frame_info* %14)
  %16 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %17 = call i64 @get_frame_base(%struct.frame_info* %16)
  %18 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i64 %13, i64 %15, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %22 = call i64 @get_frame_base(%struct.frame_info* %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @read_memory_addr(i64 %22, i32 %23)
  store i64 %24, i64* %2, align 8
  br label %76

25:                                               ; preds = %1
  %26 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %27 = call i64 @get_frame_pc(%struct.frame_info* %26)
  %28 = call i64 @deprecated_inside_entry_file(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %32 = call i64 @get_frame_pc(%struct.frame_info* %31)
  %33 = call i64 (...) @entry_point_address()
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25
  store i64 0, i64* %2, align 8
  br label %76

36:                                               ; preds = %30
  %37 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %38 = call i64 @get_frame_type(%struct.frame_info* %37)
  %39 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %43 = call i64 @get_frame_base(%struct.frame_info* %42)
  %44 = load i64, i64* @SIG_FRAME_FP_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @read_memory_addr(i64 %45, i32 %46)
  store i64 %47, i64* %4, align 8
  br label %74

48:                                               ; preds = %36
  %49 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %50 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %49)
  %51 = icmp ne %struct.frame_info* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %54 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %53)
  %55 = call i64 @get_frame_type(%struct.frame_info* %54)
  %56 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = call i64 (...) @DEPRECATED_FRAMELESS_FUNCTION_INVOCATION_P()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %63 = call i64 @DEPRECATED_FRAMELESS_FUNCTION_INVOCATION(%struct.frame_info* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %67 = call i64 @get_frame_base(%struct.frame_info* %66)
  store i64 %67, i64* %4, align 8
  br label %73

68:                                               ; preds = %61, %58, %52, %48
  %69 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %70 = call i64 @get_frame_base(%struct.frame_info* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @read_memory_addr(i64 %70, i32 %71)
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73, %41
  %75 = load i64, i64* %4, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %74, %35, %20
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i64, i64, i64) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i64 @get_frame_base(%struct.frame_info*) #1

declare dso_local i64 @read_memory_addr(i64, i32) #1

declare dso_local i64 @deprecated_inside_entry_file(i64) #1

declare dso_local i64 @entry_point_address(...) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local %struct.frame_info* @get_next_frame(%struct.frame_info*) #1

declare dso_local i64 @DEPRECATED_FRAMELESS_FUNCTION_INVOCATION_P(...) #1

declare dso_local i64 @DEPRECATED_FRAMELESS_FUNCTION_INVOCATION(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
