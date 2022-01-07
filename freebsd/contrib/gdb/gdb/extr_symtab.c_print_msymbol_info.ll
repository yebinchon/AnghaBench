; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_print_msymbol_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symtab.c_print_msymbol_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"08l\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"016l\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minimal_symbol*)* @print_msymbol_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_msymbol_info(%struct.minimal_symbol* %0) #0 {
  %2 = alloca %struct.minimal_symbol*, align 8
  %3 = alloca i8*, align 8
  store %struct.minimal_symbol* %0, %struct.minimal_symbol** %2, align 8
  %4 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %5 = icmp sle i32 %4, 32
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %8 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %7)
  %9 = call i8* @local_hex_string_custom(i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %3, align 8
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %12 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %11)
  %13 = call i8* @local_hex_string_custom(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %17 = call i32 @SYMBOL_PRINT_NAME(%struct.minimal_symbol* %16)
  %18 = call i32 @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %15, i32 %17)
  ret void
}

declare dso_local i8* @local_hex_string_custom(i32, i8*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
