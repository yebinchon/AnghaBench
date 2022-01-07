; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_variables.c_db_find_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_variables.c_db_find_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_variable = type { i32 }

@tIDENT = common dso_local global i32 0, align 4
@db_vars = common dso_local global %struct.db_variable* null, align 8
@db_evars = common dso_local global %struct.db_variable* null, align 8
@db_tok_string = common dso_local global i32 0, align 4
@db_regs = common dso_local global %struct.db_variable* null, align 8
@db_eregs = common dso_local global %struct.db_variable* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Unknown variable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_variable**)* @db_find_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_find_variable(%struct.db_variable** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.db_variable**, align 8
  %4 = alloca %struct.db_variable*, align 8
  %5 = alloca i32, align 4
  store %struct.db_variable** %0, %struct.db_variable*** %3, align 8
  %6 = call i32 (...) @db_read_token()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @tIDENT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.db_variable*, %struct.db_variable** @db_vars, align 8
  store %struct.db_variable* %11, %struct.db_variable** %4, align 8
  br label %12

12:                                               ; preds = %27, %10
  %13 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %14 = load %struct.db_variable*, %struct.db_variable** @db_evars, align 8
  %15 = icmp ult %struct.db_variable* %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load i32, i32* @db_tok_string, align 4
  %18 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %19 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %25 = load %struct.db_variable**, %struct.db_variable*** %3, align 8
  store %struct.db_variable* %24, %struct.db_variable** %25, align 8
  store i32 1, i32* %2, align 4
  br label %53

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %29 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %28, i32 1
  store %struct.db_variable* %29, %struct.db_variable** %4, align 8
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.db_variable*, %struct.db_variable** @db_regs, align 8
  store %struct.db_variable* %31, %struct.db_variable** %4, align 8
  br label %32

32:                                               ; preds = %47, %30
  %33 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %34 = load %struct.db_variable*, %struct.db_variable** @db_eregs, align 8
  %35 = icmp ult %struct.db_variable* %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* @db_tok_string, align 4
  %38 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %39 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcmp(i32 %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %45 = load %struct.db_variable**, %struct.db_variable*** %3, align 8
  store %struct.db_variable* %44, %struct.db_variable** %45, align 8
  store i32 1, i32* %2, align 4
  br label %53

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.db_variable*, %struct.db_variable** %4, align 8
  %49 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %48, i32 1
  store %struct.db_variable* %49, %struct.db_variable** %4, align 8
  br label %32

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %1
  %52 = call i32 @db_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %43, %23
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @db_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
