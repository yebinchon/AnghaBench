; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_tsd_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_tsd_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@builtin_type_void_func_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Key %d, destructor %p <%s>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, void (i8*)*, i8*)* @tsd_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsd_cb(i32 %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast void (i8*)** %5 to void (i8*)*
  %10 = load i32, i32* @builtin_type_void_func_ptr, align 4
  %11 = call i32 @extract_typed_address(void (i8*)* %9, i32 %10)
  %12 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %11)
  store %struct.minimal_symbol* %12, %struct.minimal_symbol** %7, align 8
  %13 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %14 = icmp ne %struct.minimal_symbol* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %18 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %17)
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i32, i32* %4, align 4
  %21 = load void (i8*)*, void (i8*)** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @printf_filtered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20, void (i8*)* %21, i8* %22)
  ret i32 0
}

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @extract_typed_address(void (i8*)*, i32) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @printf_filtered(i8*, i32, void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
