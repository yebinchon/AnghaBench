; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_run_schema_dump_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_run_schema_dump_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@dump_callback = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"/****** CORRUPTION ERROR *******/\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"/****** %s ******/\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s ORDER BY rowid DESC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"/****** ERROR: %s ******/\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @run_schema_dump_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_schema_dump_query(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @dump_callback, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = call i32 @sqlite3_exec(i32 %12, i8* %13, i32 %14, %struct.TYPE_4__* %15, i8** %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SQLITE_CORRUPT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strlen30(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @raw_printf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @utf8_printf(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @sqlite3_free(i8* %35)
  store i8* null, i8** %7, align 8
  br label %37

37:                                               ; preds = %29, %20
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 100
  %40 = call i8* @malloc(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 100
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @sqlite3_snprintf(i32 %47, i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @dump_callback, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = call i32 @sqlite3_exec(i32 %53, i8* %54, i32 %55, %struct.TYPE_4__* %56, i8** %7)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @utf8_printf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  br label %68

66:                                               ; preds = %45
  %67 = load i32, i32* @SQLITE_CORRUPT, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @sqlite3_free(i8* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %68, %2
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %43
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i32 @raw_printf(i32, i8*) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
