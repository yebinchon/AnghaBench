; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToClone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToClone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"File \22%s\22 already exists.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot create output database: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"PRAGMA writable_schema=ON;\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"BEGIN EXCLUSIVE;\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"type='table'\00", align 1
@tryToCloneData = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"type!='table'\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"COMMIT;\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=OFF;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @tryToClone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tryToClone(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @access(i8* %7, i32 0)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @utf8_printf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %47

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @sqlite3_open(i8* %15, i32** %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @sqlite3_errmsg(i32* %21)
  %23 = call i32 @utf8_printf(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %44

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @sqlite3_exec(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @sqlite3_exec(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @tryToCloneData, align 4
  %34 = call i32 @tryToCloneSchema(%struct.TYPE_4__* %31, i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @tryToCloneSchema(%struct.TYPE_4__* %35, i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @sqlite3_exec(i32* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @sqlite3_exec(i32* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %44

44:                                               ; preds = %24, %19
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @close_db(i32* %45)
  br label %47

47:                                               ; preds = %44, %10
  ret void
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i32**) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @tryToCloneSchema(%struct.TYPE_4__*, i32*, i8*, i32) #1

declare dso_local i32 @close_db(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
