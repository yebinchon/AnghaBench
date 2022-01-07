; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_simple_read_overlay_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_simple_read_overlay_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"_novlys\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"Error reading inferior's overlay table: couldn't find `_novlys' variable\0Ain inferior.  Use `overlay manual' mode.\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"_ovly_table\00", align 1
@.str.3 = private unnamed_addr constant [115 x i8] c"Error reading inferior's overlay table: couldn't find `_ovly_table' array\0Ain inferior.  Use `overlay manual' mode.\00", align 1
@cache_novlys = common dso_local global i32 0, align 4
@cache_ovly_table = common dso_local global i8* null, align 8
@cache_ovly_table_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @simple_read_overlay_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_read_overlay_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.minimal_symbol*, align 8
  %3 = alloca %struct.minimal_symbol*, align 8
  %4 = call i32 (...) @simple_free_overlay_table()
  %5 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %5, %struct.minimal_symbol** %2, align 8
  %6 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %7 = icmp ne %struct.minimal_symbol* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @error(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

10:                                               ; preds = %0
  %11 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  store %struct.minimal_symbol* %11, %struct.minimal_symbol** %3, align 8
  %12 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %13 = icmp ne %struct.minimal_symbol* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call i32 @error(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load %struct.minimal_symbol*, %struct.minimal_symbol** %2, align 8
  %18 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %17)
  %19 = call i32 @read_memory_integer(i32 %18, i32 4)
  store i32 %19, i32* @cache_novlys, align 4
  %20 = load i32, i32* @cache_novlys, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i64 @xmalloc(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** @cache_ovly_table, align 8
  %26 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %27 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %26)
  store i32 %27, i32* @cache_ovly_table_base, align 4
  %28 = load i32, i32* @cache_ovly_table_base, align 4
  %29 = load i8*, i8** @cache_ovly_table, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* @cache_novlys, align 4
  %32 = mul nsw i32 %31, 4
  %33 = call i32 @read_target_long_array(i32 %28, i32* %30, i32 %32)
  store i32 1, i32* %1, align 4
  br label %34

34:                                               ; preds = %16, %14, %8
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @simple_free_overlay_table(...) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @read_memory_integer(i32, i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @read_target_long_array(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
