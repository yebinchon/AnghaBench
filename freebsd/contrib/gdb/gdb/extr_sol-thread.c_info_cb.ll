; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_info_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64, i64, i32, i32 }
%struct.minimal_symbol = type { i32 }

@TD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s thread #%d, lwp %d, \00", align 1
@TD_THR_SYSTEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"user  \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"<unknown state>\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(stopped)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"(run)    \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"(active) \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"(zombie) \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"(asleep) \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"(stopped asleep)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"   startfunc: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"   startfunc: 0x%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c" - Sleep func: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c" - Sleep func: 0x%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"info sol-thread: failed to get info for thread.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca %struct.minimal_symbol*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @p_td_thr_get_info(i32* %9, %struct.TYPE_3__* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @TD_OK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %93

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TD_THR_SYSTEM, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %27 [
    i32 129, label %28
    i32 131, label %30
    i32 133, label %32
    i32 134, label %34
    i32 128, label %36
    i32 132, label %38
    i32 130, label %40
  ]

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %13, %27
  %29 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %42

30:                                               ; preds = %13
  %31 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %42

32:                                               ; preds = %13
  %33 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %42

34:                                               ; preds = %13
  %35 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %42

36:                                               ; preds = %13
  %37 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %42

38:                                               ; preds = %13
  %39 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %42

40:                                               ; preds = %13
  %41 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38, %36, %34, %32, %30, %28
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %48)
  store %struct.minimal_symbol* %49, %struct.minimal_symbol** %7, align 8
  %50 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %51 = icmp ne %struct.minimal_symbol* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %54 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %53)
  %55 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  br label %61

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @paddr(i64 %58)
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %42
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 132
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %68)
  store %struct.minimal_symbol* %69, %struct.minimal_symbol** %8, align 8
  %70 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %71 = icmp ne %struct.minimal_symbol* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %74 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %73)
  %75 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %74)
  br label %81

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @paddr(i64 %78)
  %80 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  br label %82

82:                                               ; preds = %81, %62
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 132
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86, %82
  br label %95

93:                                               ; preds = %2
  %94 = call i32 @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92
  ret i32 0
}

declare dso_local i32 @p_td_thr_get_info(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @paddr(i64) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
