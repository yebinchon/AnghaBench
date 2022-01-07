; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_remove_inferior_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somsolib.c_som_solib_remove_inferior_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"__dld_flags\00", align 1
@DLD_FLAGS_HOOKVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @som_solib_remove_inferior_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.minimal_symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %9, %struct.cleanup** %8, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @pid_to_ptid(i32 %10)
  store i32 %11, i32* @inferior_ptid, align 4
  %12 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %12, %struct.minimal_symbol** %4, align 8
  %13 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %14 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %17 = call i32 @target_read_memory(i32 %15, i8* %16, i32 4)
  store i32 %17, i32* %5, align 4
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %19 = call i32 @extract_unsigned_integer(i8* %18, i32 4)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @DLD_FLAGS_HOOKVALID, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @store_unsigned_integer(i8* %24, i32 4, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %29 = call i32 @target_write_memory(i32 %27, i8* %28, i32 4)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %31 = call i32 @do_cleanups(%struct.cleanup* %30)
  ret void
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @target_read_memory(i32, i8*, i32) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

declare dso_local i32 @target_write_memory(i32, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
