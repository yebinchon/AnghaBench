; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_access_value_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_values.c_access_value_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_history_chunk = type { i32*, %struct.value_history_chunk* }
%struct.value = type { i32 }

@value_history_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"The history is empty.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"There is only one value in the history.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"History does not go back to $$%d.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"History has not yet reached $%d.\00", align 1
@value_history_chain = common dso_local global %struct.value_history_chunk* null, align 8
@VALUE_HISTORY_CHUNK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @access_value_history(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value_history_chunk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @value_history_count, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %31

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  br label %31

31:                                               ; preds = %30, %19
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @value_history_count, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = load %struct.value_history_chunk*, %struct.value_history_chunk** @value_history_chain, align 8
  store %struct.value_history_chunk* %42, %struct.value_history_chunk** %3, align 8
  %43 = load i32, i32* @value_history_count, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @VALUE_HISTORY_CHUNK, align 4
  %46 = sdiv i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @VALUE_HISTORY_CHUNK, align 4
  %49 = sdiv i32 %47, %48
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %58, %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.value_history_chunk*, %struct.value_history_chunk** %3, align 8
  %56 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %55, i32 0, i32 1
  %57 = load %struct.value_history_chunk*, %struct.value_history_chunk** %56, align 8
  store %struct.value_history_chunk* %57, %struct.value_history_chunk** %3, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  br label %51

61:                                               ; preds = %51
  %62 = load %struct.value_history_chunk*, %struct.value_history_chunk** %3, align 8
  %63 = getelementptr inbounds %struct.value_history_chunk, %struct.value_history_chunk* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @VALUE_HISTORY_CHUNK, align 4
  %67 = srem i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.value* @value_copy(i32 %70)
  ret %struct.value* %71
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @value_copy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
