; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_variables.c_db_set_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_variables.c_db_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_variable = type { i32 }

@tEOL = common dso_local global i32 0, align 4
@db_vars = common dso_local global %struct.db_variable* null, align 8
@db_evars = common dso_local global %struct.db_variable* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"$%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"$%-8s = %ld\0A\00", align 1
@tDOLLAR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown variable\0A\00", align 1
@tEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"No value\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_set_cmd(i64 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.db_variable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = call i32 (...) @db_read_token()
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @tEOL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load %struct.db_variable*, %struct.db_variable** @db_vars, align 8
  store %struct.db_variable* %17, %struct.db_variable** %9, align 8
  br label %18

18:                                               ; preds = %37, %16
  %19 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %20 = load %struct.db_variable*, %struct.db_variable** @db_evars, align 8
  %21 = icmp ult %struct.db_variable* %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %24 = call i32 @db_read_variable(%struct.db_variable* %23, i64* %10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %28 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @db_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %33 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %10, align 8
  %36 = call i32 (i8*, i32, ...) @db_printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %39 = getelementptr inbounds %struct.db_variable, %struct.db_variable* %38, i32 1
  store %struct.db_variable* %39, %struct.db_variable** %9, align 8
  br label %18

40:                                               ; preds = %18
  br label %75

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @tDOLLAR, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @db_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %75

47:                                               ; preds = %41
  %48 = call i32 @db_find_variable(%struct.db_variable** %9)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call i32 @db_error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %75

52:                                               ; preds = %47
  %53 = call i32 (...) @db_read_token()
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @tEQ, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @db_unread_token(i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = call i32 @db_expression(i64* %10)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call i32 @db_error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %75

65:                                               ; preds = %60
  %66 = call i32 (...) @db_read_token()
  %67 = load i32, i32* @tEOL, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @db_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.db_variable*, %struct.db_variable** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @db_write_variable(%struct.db_variable* %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %63, %50, %45, %40
  ret void
}

declare dso_local i32 @db_read_token(...) #1

declare dso_local i32 @db_read_variable(%struct.db_variable*, i64*) #1

declare dso_local i32 @db_printf(i8*, i32, ...) #1

declare dso_local i32 @db_error(i8*) #1

declare dso_local i32 @db_find_variable(%struct.db_variable**) #1

declare dso_local i32 @db_unread_token(i32) #1

declare dso_local i32 @db_expression(i64*) #1

declare dso_local i32 @db_write_variable(%struct.db_variable*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
