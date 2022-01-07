; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_software_single_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_software_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@stepBreaks = common dso_local global %struct.TYPE_2__* null, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_software_single_step(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = call i8* @rs6000_breakpoint_from_pc(i32* %5, i32* %6)
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %2
  %17 = call i32 (...) @read_pc()
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @read_memory_integer(i32 %18, i32 4)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 26
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @branch_dest(i32 %26, i32 %27, i32 %28, i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 -1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %16
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %75, %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %75

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @target_insert_breakpoint(i32 %58, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %54, %53
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %44

78:                                               ; preds = %44
  br label %110

79:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %106, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stepBreaks, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @target_remove_breakpoint(i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %91, %83
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %80

109:                                              ; preds = %80
  br label %110

110:                                              ; preds = %109, %78
  store i64 0, i64* @errno, align 8
  ret void
}

declare dso_local i8* @rs6000_breakpoint_from_pc(i32*, i32*) #1

declare dso_local i32 @read_pc(...) #1

declare dso_local i32 @read_memory_integer(i32, i32) #1

declare dso_local i32 @branch_dest(i32, i32, i32, i32) #1

declare dso_local i32 @target_insert_breakpoint(i32, i32) #1

declare dso_local i32 @target_remove_breakpoint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
