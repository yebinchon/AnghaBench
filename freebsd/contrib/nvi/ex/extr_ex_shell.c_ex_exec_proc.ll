; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shell.c_ex_exec_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_shell.c_ex_exec_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*, i32, i32)*, i64 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@O_SHELL = common dso_local global i32 0, align 4
@SC_VI = common dso_local global i32 0, align 4
@SC_EX = common dso_local global i32 0, align 4
@EXM_NOCANON = common dso_local global i32 0, align 4
@SA_ALTERNATE = common dso_local global i32 0, align 4
@SC_SCR_EX = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"execl: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_exec_proc(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %19 = load i32, i32* @O_SHELL, align 4
  %20 = call i64 @opts_empty(%struct.TYPE_21__* %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %123

23:                                               ; preds = %5
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = load i32, i32* @SC_VI, align 4
  %26 = call i64 @F_ISSET(%struct.TYPE_21__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %31 = load i64 (%struct.TYPE_21__*, i32)*, i64 (%struct.TYPE_21__*, i32)** %30, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = load i32, i32* @SC_EX, align 4
  %34 = call i64 %31(%struct.TYPE_21__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXM_NOCANON, align 4
  %44 = call i32 @ex_wemsg(%struct.TYPE_21__* %37, i32 %42, i32 %43)
  store i32 1, i32* %6, align 4
  br label %123

45:                                               ; preds = %28
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = load i32, i32* @SA_ALTERNATE, align 4
  %51 = call i32 %48(%struct.TYPE_21__* %49, i32 %50, i32 0)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = load i32, i32* @SC_SCR_EX, align 4
  %54 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @F_SET(%struct.TYPE_21__* %52, i32 %55)
  br label %57

57:                                               ; preds = %45, %23
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = call i32 @ex_puts(%struct.TYPE_21__* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @ex_puts(%struct.TYPE_21__* %67, i8* %68)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %71 = call i32 @ex_puts(%struct.TYPE_21__* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = call i32 @ex_fflush(%struct.TYPE_21__* %73)
  %75 = call i64 (...) @vfork()
  store i64 %75, i64* %14, align 8
  switch i64 %75, label %118 [
    i64 -1, label %76
    i64 0, label %80
  ]

76:                                               ; preds = %72
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %78 = load i32, i32* @M_SYSERR, align 4
  %79 = call i32 @msgq(%struct.TYPE_21__* %77, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %123

80:                                               ; preds = %72
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_21__*)* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = call i32 %88(%struct.TYPE_21__* %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = load i32, i32* @O_SHELL, align 4
  %94 = call i8* @O_STR(%struct.TYPE_21__* %92, i32 %93)
  %95 = call i8* @strrchr(i8* %94, i8 signext 47)
  store i8* %95, i8** %13, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %99 = load i32, i32* @O_SHELL, align 4
  %100 = call i8* @O_STR(%struct.TYPE_21__* %98, i32 %99)
  store i8* %100, i8** %13, align 8
  br label %104

101:                                              ; preds = %91
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %13, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = load i32, i32* @O_SHELL, align 4
  %107 = call i8* @O_STR(%struct.TYPE_21__* %105, i32 %106)
  %108 = load i8*, i8** %13, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @execl(i8* %107, i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %109, i8* null)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = load i32, i32* @M_SYSERR, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = load i32, i32* @O_SHELL, align 4
  %115 = call i8* @O_STR(%struct.TYPE_21__* %113, i32 %114)
  %116 = call i32 @msgq_str(%struct.TYPE_21__* %111, i32 %112, i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %117 = call i32 @_exit(i32 127) #3
  unreachable

118:                                              ; preds = %72
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = call i32 @proc_wait(%struct.TYPE_21__* %119, i64 %120, i8* %121, i32 0, i32 0)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %76, %36, %22
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i64 @opts_empty(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ex_wemsg(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ex_puts(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ex_fflush(%struct.TYPE_21__*) #1

declare dso_local i64 @vfork(...) #1

declare dso_local i32 @msgq(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @O_STR(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @execl(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @msgq_str(%struct.TYPE_21__*, i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @proc_wait(%struct.TYPE_21__*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
