; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_clear_value_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_clear_value_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_history_chunk = type { %struct.value_history_chunk*, %struct.value_history_chunk** }
%struct.value = type { %struct.value*, %struct.value** }

@value_history_chain = common dso_local global %struct.value_history_chunk* null, align 8
@VALUE_HISTORY_CHUNK = common dso_local global i32 0, align 4
@value_history_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_value_history() #0 {
  %1 = alloca %struct.value_history_chunk*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  br label %4

4:                                                ; preds = %30, %0
  %5 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %6 = icmp ne %struct.value_history_chunk* %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @VALUE_HISTORY_CHUNK, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %14 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %13, i32 0, i32 1
  %15 = load %struct.value_history_chunk**, %struct.value_history_chunk*** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.value_history_chunk*, %struct.value_history_chunk** %15, i64 %17
  %19 = load %struct.value_history_chunk*, %struct.value_history_chunk** %18, align 8
  %20 = bitcast %struct.value_history_chunk* %19 to %struct.value*
  store %struct.value* %20, %struct.value** %3, align 8
  %21 = icmp ne %struct.value* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.value*, %struct.value** %3, align 8
  %24 = bitcast %struct.value* %23 to %struct.value_history_chunk*
  %25 = call i32 @xfree(%struct.value_history_chunk* %24)
  br label %26

26:                                               ; preds = %22, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %32 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %31, i32 0, i32 0
  %33 = load %struct.value_history_chunk*, %struct.value_history_chunk** %32, align 8
  store %struct.value_history_chunk* %33, %struct.value_history_chunk** %1, align 8
  %34 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %35 = call i32 @xfree(%struct.value_history_chunk* %34)
  %36 = load %struct.value_history_chunk*, %struct.value_history_chunk** %1, align 8
  store %struct.value_history_chunk* %36, %struct.value_history_chunk** @value_history_chain, align 8
  br label %4

37:                                               ; preds = %4
  store i64 0, i64* @value_history_count, align 8
  ret void
}

declare dso_local i32 @xfree(%struct.value_history_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
