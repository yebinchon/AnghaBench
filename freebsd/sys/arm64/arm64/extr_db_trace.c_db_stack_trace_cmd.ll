; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_trace.c_db_stack_trace_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_trace.c_db_stack_trace_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32, i32, i32 }

@DB_STGY_ANY = common dso_local global i32 0, align 4
@C_DB_SYM_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s() at \00", align 1
@DB_STGY_PROC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\09 pc = 0x%016lx  lr = 0x%016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\09 sp = 0x%016lx  fp = 0x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_state*)* @db_stack_trace_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stack_trace_cmd(%struct.unwind_state* %0) #0 {
  %2 = alloca %struct.unwind_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.unwind_state* %0, %struct.unwind_state** %2, align 8
  br label %9

9:                                                ; preds = %1, %29
  %10 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %11 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %14 = call i32 @unwind_frame(%struct.unwind_state* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %51

18:                                               ; preds = %9
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DB_STGY_ANY, align 4
  %21 = call i64 @db_search_symbol(i32 %19, i32 %20, i64* %6)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @C_DB_SYM_NULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i64 0, i64* %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @db_symbol_values(i64 %27, i8** %4, i64* %5)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %33 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DB_STGY_PROC, align 4
  %36 = call i32 @db_printsym(i32 %34, i32 %35)
  %37 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %40 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %44 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.unwind_state*, %struct.unwind_state** %2, align 8
  %47 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32 %48)
  %50 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %9

51:                                               ; preds = %17
  ret void
}

declare dso_local i32 @unwind_frame(%struct.unwind_state*) #1

declare dso_local i64 @db_search_symbol(i32, i32, i64*) #1

declare dso_local i32 @db_symbol_values(i64, i8**, i64*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
