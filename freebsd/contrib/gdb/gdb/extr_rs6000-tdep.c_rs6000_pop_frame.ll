; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_pop_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_pop_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs6000_framedata = type { i64, i32, i64, i32, i64, i64 }
%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DEPRECATED_REGISTER_BYTES = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@PC_REGNUM = common dso_local global i32 0, align 4
@deprecated_registers = common dso_local global i32* null, align 8
@FP0_REGNUM = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs6000_pop_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_pop_frame() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rs6000_framedata, align 8
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %10, %struct.frame_info** %7, align 8
  %11 = call i64 (...) @read_pc()
  store i64 %11, i64* %1, align 8
  %12 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %13 = call i64 @get_frame_base(%struct.frame_info* %12)
  store i64 %13, i64* %3, align 8
  %14 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %15 = call i32 @get_frame_pc(%struct.frame_info* %14)
  %16 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %17 = call i64 @get_frame_base(%struct.frame_info* %16)
  %18 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %19 = call i64 @get_frame_base(%struct.frame_info* %18)
  %20 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %15, i64 %17, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = call i32 (...) @generic_pop_dummy_frame()
  %24 = call i32 (...) @flush_cached_frames()
  br label %132

25:                                               ; preds = %0
  %26 = load i32, i32* @DEPRECATED_REGISTER_BYTES, align 4
  %27 = call i32 @deprecated_read_register_bytes(i32 0, i32* null, i32 %26)
  %28 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %29 = call i64 @get_frame_func(%struct.frame_info* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %32 = call i32 @get_frame_pc(%struct.frame_info* %31)
  %33 = call i32 @skip_prologue(i64 %30, i32 %32, %struct.rs6000_framedata* %6)
  %34 = load i32, i32* @current_gdbarch, align 4
  %35 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %4, align 8
  br label %47

43:                                               ; preds = %25
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @read_memory_addr(i64 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @current_gdbarch, align 4
  %53 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @read_register(i32 %55)
  store i64 %56, i64* %2, align 8
  br label %64

57:                                               ; preds = %47
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @read_memory_addr(i64 %61, i32 %62)
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i32, i32* @PC_REGNUM, align 4
  %66 = load i64, i64* %2, align 8
  %67 = call i32 @write_register(i32 %65, i64 %66)
  %68 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %97

71:                                               ; preds = %64
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %72, %74
  store i64 %75, i64* %5, align 8
  %76 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %93, %71
  %79 = load i32, i32* %8, align 4
  %80 = icmp sle i32 %79, 31
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load i64, i64* %5, align 8
  %83 = load i32*, i32** @deprecated_registers, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %84)
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @read_memory(i64 %82, i32* %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %78

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %64
  %98 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %102, %104
  store i64 %105, i64* %5, align 8
  %106 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %6, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %122, %101
  %109 = load i32, i32* %8, align 4
  %110 = icmp sle i32 %109, 31
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i64, i64* %5, align 8
  %113 = load i32*, i32** @deprecated_registers, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @FP0_REGNUM, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %116)
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = call i32 @read_memory(i64 %112, i32* %118, i32 8)
  %120 = load i64, i64* %5, align 8
  %121 = add nsw i64 %120, 8
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %108

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %97
  %127 = load i32, i32* @SP_REGNUM, align 4
  %128 = load i64, i64* %4, align 8
  %129 = call i32 @write_register(i32 %127, i64 %128)
  %130 = call i32 @target_store_registers(i32 -1)
  %131 = call i32 (...) @flush_cached_frames()
  br label %132

132:                                              ; preds = %126, %22
  ret void
}

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i64 @read_pc(...) #1

declare dso_local i64 @get_frame_base(%struct.frame_info*) #1

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32, i64, i64) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @generic_pop_dummy_frame(...) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @deprecated_read_register_bytes(i32, i32*, i32) #1

declare dso_local i64 @get_frame_func(%struct.frame_info*) #1

declare dso_local i32 @skip_prologue(i64, i32, %struct.rs6000_framedata*) #1

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local i64 @read_memory_addr(i64, i32) #1

declare dso_local i64 @read_register(i32) #1

declare dso_local i32 @write_register(i32, i64) #1

declare dso_local i32 @read_memory(i64, i32*, i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @target_store_registers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
