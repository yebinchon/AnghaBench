; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_script.c_db_script_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_recursion_data = type { i8* }
%struct.ddb_script = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"script '%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@db_recursion = common dso_local global i64 0, align 8
@DB_MAXSCRIPTRECURSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Script stack too deep\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@db_recursion_data = common dso_local global %struct.db_recursion_data* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"db:%d:%s> %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Script command '%s' returned error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @db_script_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_script_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.db_recursion_data*, align 8
  %7 = alloca %struct.ddb_script*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.ddb_script* @db_script_lookup(i8* %12)
  store %struct.ddb_script* %13, %struct.ddb_script** %7, align 8
  %14 = load %struct.ddb_script*, %struct.ddb_script** %7, align 8
  %15 = icmp eq %struct.ddb_script* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @ENOENT, align 4
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load i64, i64* @db_recursion, align 8
  %26 = load i64, i64* @DB_MAXSCRIPTRECURSION, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @E2BIG, align 4
  store i32 %30, i32* %3, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load i64, i64* @db_recursion, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @db_recursion, align 8
  %34 = load %struct.db_recursion_data*, %struct.db_recursion_data** @db_recursion_data, align 8
  %35 = load i64, i64* @db_recursion, align 8
  %36 = getelementptr inbounds %struct.db_recursion_data, %struct.db_recursion_data* %34, i64 %35
  store %struct.db_recursion_data* %36, %struct.db_recursion_data** %6, align 8
  %37 = load %struct.db_recursion_data*, %struct.db_recursion_data** %6, align 8
  %38 = getelementptr inbounds %struct.db_recursion_data, %struct.db_recursion_data* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.ddb_script*, %struct.ddb_script** %7, align 8
  %42 = getelementptr inbounds %struct.ddb_script, %struct.ddb_script* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %67, %31
  %46 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %46, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i64, i64* @db_recursion, align 8
  %50 = load %struct.ddb_script*, %struct.ddb_script** %7, align 8
  %51 = getelementptr inbounds %struct.ddb_script, %struct.ddb_script* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %49, i32 %52, i8* %53)
  %55 = call i32 @db_command_trim(i8** %9)
  %56 = load i8*, i8** %11, align 8
  %57 = call i8* @kdb_jmpbuf(i8* %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @setjmp(i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @db_command_script(i8* %62)
  br label %67

64:                                               ; preds = %48
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %10, align 8
  %69 = call i8* @kdb_jmpbuf(i8* %68)
  br label %45

70:                                               ; preds = %45
  %71 = load i64, i64* @db_recursion, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* @db_recursion, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %28, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.ddb_script* @db_script_lookup(i8*) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @db_command_trim(i8**) #1

declare dso_local i8* @kdb_jmpbuf(i8*) #1

declare dso_local i64 @setjmp(i8*) #1

declare dso_local i32 @db_command_script(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
