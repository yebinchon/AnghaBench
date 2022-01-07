; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_check_lsi_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_check_lsi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsi_error = type { i32, i32 }

@W_WARN = common dso_local global i32 0, align 4
@monitor_warnings = common dso_local global i64 0, align 8
@lsi_warning_table = common dso_local global %struct.lsi_error* null, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"common_breakpoint (0x%s): Warning: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"common_breakpoint (0x%s): Unknown warning: 0x%x\0A\00", align 1
@lsi_error_table = common dso_local global %struct.lsi_error* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"common_breakpoint (0x%s): Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"common_breakpoint (0x%s): Unknown error: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @check_lsi_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_lsi_error(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lsi_error*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @paddr_nz(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @W_WARN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %14
  %20 = load i64, i64* @monitor_warnings, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  %23 = load %struct.lsi_error*, %struct.lsi_error** @lsi_warning_table, align 8
  store %struct.lsi_error* %23, %struct.lsi_error** %6, align 8
  br label %24

24:                                               ; preds = %47, %22
  %25 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %26 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %31 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %36 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  %40 = load i32, i32* @gdb_stderr, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %43 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fprintf_unfiltered(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %29
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %49 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %48, i32 1
  store %struct.lsi_error* %49, %struct.lsi_error** %6, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @gdb_stderr, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @fprintf_unfiltered(i32 %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %19
  store i32 0, i32* %3, align 4
  br label %93

60:                                               ; preds = %14
  %61 = load %struct.lsi_error*, %struct.lsi_error** @lsi_error_table, align 8
  store %struct.lsi_error* %61, %struct.lsi_error** %6, align 8
  br label %62

62:                                               ; preds = %85, %60
  %63 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %64 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %62
  %68 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %69 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %74 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i32, i32* @gdb_stderr, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %81 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fprintf_unfiltered(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %79, i32 %82)
  store i32 1, i32* %3, align 4
  br label %93

84:                                               ; preds = %67
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.lsi_error*, %struct.lsi_error** %6, align 8
  %87 = getelementptr inbounds %struct.lsi_error, %struct.lsi_error* %86, i32 1
  store %struct.lsi_error* %87, %struct.lsi_error** %6, align 8
  br label %62

88:                                               ; preds = %62
  %89 = load i32, i32* @gdb_stderr, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @fprintf_unfiltered(i32 %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %91)
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %77, %59, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i8* @paddr_nz(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
