; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_skip_trampoline_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_skip_trampoline_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }
%struct.TYPE_2__ = type { i32 }

@rs6000_skip_trampoline_code.trampoline_code = internal global [8 x i32] [i32 -2146762752, i32 -1874788332, i32 2080965542, i32 -2142568444, i32 -2123694072, i32 1317012512, i32 1317011488, i32 0], align 16
@current_gdbarch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rs6000_skip_trampoline_code(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.minimal_symbol*, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %9)
  store %struct.minimal_symbol* %10, %struct.minimal_symbol** %8, align 8
  %11 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %12 = icmp ne %struct.minimal_symbol* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %16 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %15)
  %17 = call i64 @rs6000_in_solib_return_trampoline(i64 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 8
  %22 = call i32 @read_memory_integer(i64 %21, i32 4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -67108861
  %25 = icmp eq i32 %24, 1207959552
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 6
  %29 = ashr i32 %28, 6
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  store i64 %34, i64* %2, align 8
  br label %77

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %13, %1
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @find_solib_trampoline_target(i64 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %2, align 8
  br label %77

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* @rs6000_skip_trampoline_code.trampoline_code, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = mul i32 %52, 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @read_memory_integer(i64 %55, i32 4)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* @rs6000_skip_trampoline_code.trampoline_code, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i64 0, i64* %2, align 8
  br label %77

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %44

68:                                               ; preds = %44
  %69 = call i32 @read_register(i32 11)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @current_gdbarch, align 4
  %72 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @read_memory_addr(i32 %70, i32 %74)
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %68, %63, %41, %26
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i64 @rs6000_in_solib_return_trampoline(i64, i32) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @read_memory_integer(i64, i32) #1

declare dso_local i64 @find_solib_trampoline_target(i64) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i64 @read_memory_addr(i32, i32) #1

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
