; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frame_saved_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frame_saved_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.rs6000_framedata = type { i64 }
%struct.gdbarch_tdep = type { i32, i64, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@SIGTRAMP_FRAME = common dso_local global i64 0, align 8
@SIG_FRAME_PC_OFFSET = common dso_local global i64 0, align 8
@PC_REGNUM = common dso_local global i32 0, align 4
@SIG_FRAME_LR_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_frame_saved_pc(%struct.frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rs6000_framedata, align 8
  %6 = alloca %struct.gdbarch_tdep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %9 = load i32, i32* @current_gdbarch, align 4
  %10 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %9)
  store %struct.gdbarch_tdep* %10, %struct.gdbarch_tdep** %6, align 8
  %11 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %12 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %15 = call i64 @get_frame_type(%struct.frame_info* %14)
  %16 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %20 = call i64 @get_frame_base(%struct.frame_info* %19)
  %21 = load i64, i64* @SIG_FRAME_PC_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @read_memory_addr(i64 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %114

25:                                               ; preds = %1
  %26 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %27 = call i32 @get_frame_pc(%struct.frame_info* %26)
  %28 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %29 = call i64 @get_frame_base(%struct.frame_info* %28)
  %30 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %31 = call i64 @get_frame_base(%struct.frame_info* %30)
  %32 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %27, i64 %29, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %36 = call i32 @get_frame_pc(%struct.frame_info* %35)
  %37 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %38 = call i64 @get_frame_base(%struct.frame_info* %37)
  %39 = load i32, i32* @PC_REGNUM, align 4
  %40 = call i32 @deprecated_read_register_dummy(i32 %36, i64 %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %114

41:                                               ; preds = %25
  %42 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %43 = call i32 @get_frame_func(%struct.frame_info* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %114

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %50 = call i32 @get_frame_pc(%struct.frame_info* %49)
  %51 = call i32 @skip_prologue(i32 %48, i32 %50, %struct.rs6000_framedata* %5)
  %52 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %47
  %56 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %57 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %56)
  %58 = icmp ne %struct.frame_info* %57, null
  br i1 %58, label %59, label %96

59:                                               ; preds = %55
  %60 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %61 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %60)
  %62 = call i64 @get_frame_type(%struct.frame_info* %61)
  %63 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %67 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %66)
  %68 = call i64 @get_frame_base(%struct.frame_info* %67)
  %69 = load i64, i64* @SIG_FRAME_LR_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @read_memory_addr(i64 %70, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %114

73:                                               ; preds = %59
  %74 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %75 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %74)
  %76 = call i32 @get_frame_pc(%struct.frame_info* %75)
  %77 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %76, i64 0, i64 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %81 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %80)
  %82 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %83 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @frame_unwind_unsigned_register(%struct.frame_info* %81, i32 %84, i32* %8)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %114

87:                                               ; preds = %73
  %88 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %89 = call i64 @DEPRECATED_FRAME_CHAIN(%struct.frame_info* %88)
  %90 = load %struct.gdbarch_tdep*, %struct.gdbarch_tdep** %6, align 8
  %91 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @read_memory_addr(i64 %93, i32 %94)
  store i32 %95, i32* %2, align 4
  br label %114

96:                                               ; preds = %55, %47
  %97 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @current_gdbarch, align 4
  %102 = call %struct.gdbarch_tdep* @gdbarch_tdep(i32 %101)
  %103 = getelementptr inbounds %struct.gdbarch_tdep, %struct.gdbarch_tdep* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @read_register(i32 %104)
  store i32 %105, i32* %2, align 4
  br label %114

106:                                              ; preds = %96
  %107 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %108 = call i64 @DEPRECATED_FRAME_CHAIN(%struct.frame_info* %107)
  %109 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %108, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @read_memory_addr(i64 %111, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %106, %100, %87, %79, %65, %46, %34, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.gdbarch_tdep* @gdbarch_tdep(i32) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local i32 @read_memory_addr(i64, i32) #1

declare dso_local i64 @get_frame_base(%struct.frame_info*) #1

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32, i64, i64) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @deprecated_read_register_dummy(i32, i64, i32) #1

declare dso_local i32 @get_frame_func(%struct.frame_info*) #1

declare dso_local i32 @skip_prologue(i32, i32, %struct.rs6000_framedata*) #1

declare dso_local %struct.frame_info* @get_next_frame(%struct.frame_info*) #1

declare dso_local i32 @frame_unwind_unsigned_register(%struct.frame_info*, i32, i32*) #1

declare dso_local i64 @DEPRECATED_FRAME_CHAIN(%struct.frame_info*) #1

declare dso_local i32 @read_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
