; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_trad-frame.c_trad_frame_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_trad-frame.c_trad_frame_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.trad_frame_saved_reg = type { i64, i32 }
%struct.gdbarch = type { i32 }

@lval_memory = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Register %s not available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trad_frame_prev_register(%struct.frame_info* %0, %struct.trad_frame_saved_reg* %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca %struct.trad_frame_saved_reg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.gdbarch*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store %struct.trad_frame_saved_reg* %1, %struct.trad_frame_saved_reg** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %19 = call %struct.gdbarch* @get_frame_arch(%struct.frame_info* %18)
  store %struct.gdbarch* %19, %struct.gdbarch** %17, align 8
  %20 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @trad_frame_addr_p(%struct.trad_frame_saved_reg* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %8
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @lval_memory, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %28, i64 %30
  %32 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %14, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %15, align 8
  store i32 -1, i32* %35, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %24
  %39 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %40 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %40, i64 %42
  %44 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load %struct.gdbarch*, %struct.gdbarch** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @register_size(%struct.gdbarch* %47, i32 %48)
  %50 = call i32 @get_frame_memory(%struct.frame_info* %39, i64 %45, i8* %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %24
  br label %104

52:                                               ; preds = %8
  %53 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @trad_frame_realreg_p(%struct.trad_frame_saved_reg* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %59 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %59, i64 %61
  %63 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = call i32 @frame_register_unwind(%struct.frame_info* %58, i32 %64, i32* %65, i32* %66, i64* %67, i32* %68, i8* %69)
  br label %103

71:                                               ; preds = %52
  %72 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @trad_frame_value_p(%struct.trad_frame_saved_reg* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load i32*, i32** %12, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @not_lval, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i64*, i64** %14, align 8
  store i64 0, i64* %80, align 8
  %81 = load i32*, i32** %15, align 8
  store i32 -1, i32* %81, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = load i8*, i8** %16, align 8
  %86 = load %struct.gdbarch*, %struct.gdbarch** %17, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @register_size(%struct.gdbarch* %86, i32 %87)
  %89 = load %struct.trad_frame_saved_reg*, %struct.trad_frame_saved_reg** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %89, i64 %91
  %93 = getelementptr inbounds %struct.trad_frame_saved_reg, %struct.trad_frame_saved_reg* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @store_unsigned_integer(i8* %85, i32 %88, i64 %94)
  br label %96

96:                                               ; preds = %84, %76
  br label %102

97:                                               ; preds = %71
  %98 = load %struct.gdbarch*, %struct.gdbarch** %17, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @gdbarch_register_name(%struct.gdbarch* %98, i32 %99)
  %101 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %96
  br label %103

103:                                              ; preds = %102, %57
  br label %104

104:                                              ; preds = %103, %51
  ret void
}

declare dso_local %struct.gdbarch* @get_frame_arch(%struct.frame_info*) #1

declare dso_local i64 @trad_frame_addr_p(%struct.trad_frame_saved_reg*, i32) #1

declare dso_local i32 @get_frame_memory(%struct.frame_info*, i64, i8*, i32) #1

declare dso_local i32 @register_size(%struct.gdbarch*, i32) #1

declare dso_local i64 @trad_frame_realreg_p(%struct.trad_frame_saved_reg*, i32) #1

declare dso_local i32 @frame_register_unwind(%struct.frame_info*, i32, i32*, i32*, i64*, i32*, i8*) #1

declare dso_local i64 @trad_frame_value_p(%struct.trad_frame_saved_reg*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @gdbarch_register_name(%struct.gdbarch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
