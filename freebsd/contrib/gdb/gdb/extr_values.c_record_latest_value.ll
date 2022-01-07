; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_record_latest_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_record_latest_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_history_chunk = type { %struct.value**, %struct.value_history_chunk* }
%struct.value = type { i64 }

@value_history_count = common dso_local global i32 0, align 4
@VALUE_HISTORY_CHUNK = common dso_local global i32 0, align 4
@value_history_chain = common dso_local global %struct.value_history_chunk* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @record_latest_value(%struct.value* %0) #0 {
  %2 = alloca %struct.value*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.value_history_chunk*, align 8
  store %struct.value* %0, %struct.value** %2, align 8
  %5 = load %struct.value*, %struct.value** %2, align 8
  %6 = call i64 @VALUE_LAZY(%struct.value* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.value*, %struct.value** %2, align 8
  %10 = call i32 @value_fetch_lazy(%struct.value* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.value*, %struct.value** %2, align 8
  %13 = getelementptr inbounds %struct.value, %struct.value* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.value*, %struct.value** %2, align 8
  %15 = call i32 @release_value(%struct.value* %14)
  %16 = load i32, i32* @value_history_count, align 4
  %17 = load i32, i32* @VALUE_HISTORY_CHUNK, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = call i64 @xmalloc(i32 16)
  %23 = inttoptr i64 %22 to %struct.value_history_chunk*
  store %struct.value_history_chunk* %23, %struct.value_history_chunk** %4, align 8
  %24 = load %struct.value_history_chunk*, %struct.value_history_chunk** %4, align 8
  %25 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %24, i32 0, i32 0
  %26 = load %struct.value**, %struct.value*** %25, align 8
  %27 = call i32 @memset(%struct.value** %26, i32 0, i32 8)
  %28 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %29 = load %struct.value_history_chunk*, %struct.value_history_chunk** %4, align 8
  %30 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %29, i32 0, i32 1
  store %struct.value_history_chunk* %28, %struct.value_history_chunk** %30, align 8
  %31 = load %struct.value_history_chunk*, %struct.value_history_chunk** %4, align 8
  store %struct.value_history_chunk* %31, %struct.value_history_chunk** @value_history_chain, align 8
  br label %32

32:                                               ; preds = %21, %11
  %33 = load %struct.value*, %struct.value** %2, align 8
  %34 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  %35 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %34, i32 0, i32 0
  %36 = load %struct.value**, %struct.value*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.value*, %struct.value** %36, i64 %38
  store %struct.value* %33, %struct.value** %39, align 8
  %40 = load i32, i32* @value_history_count, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @value_history_count, align 4
  ret i32 %41
}

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local i32 @value_fetch_lazy(%struct.value*) #1

declare dso_local i32 @release_value(%struct.value*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.value**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
