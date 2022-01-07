; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFakeSchema.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellFakeSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"PRAGMA \22%w\22.table_info=%Q;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @shellFakeSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shellFakeSchema(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %18 ]
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @sqlite3_prepare_v2(i32* %23, i8* %24, i32 -1, i32** %7, i32 0)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sqlite3_free(i8* %26)
  %28 = call i32 @initText(%struct.TYPE_5__* %9)
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = call signext i8 @quoteChar(i8* %32)
  store i8 %33, i8* %10, align 1
  %34 = load i8, i8* %10, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @sqlite3_stricmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8 0, i8* %10, align 1
  br label %42

42:                                               ; preds = %41, %37, %31
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %10, align 1
  %45 = call i32 @appendText(%struct.TYPE_5__* %9, i8* %43, i8 signext %44)
  %46 = call i32 @appendText(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8 signext 0)
  br label %47

47:                                               ; preds = %42, %19
  %48 = load i8*, i8** %6, align 8
  %49 = call signext i8 @quoteChar(i8* %48)
  store i8 %49, i8* %10, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %10, align 1
  %52 = call i32 @appendText(%struct.TYPE_5__* %9, i8* %50, i8 signext %51)
  br label %53

53:                                               ; preds = %58, %47
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @sqlite3_step(i32* %54)
  %56 = load i64, i64* @SQLITE_ROW, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @sqlite3_column_text(i32* %59, i32 1)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %13, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @appendText(%struct.TYPE_5__* %9, i8* %64, i8 signext 0)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call signext i8 @quoteChar(i8* %66)
  store i8 %67, i8* %10, align 1
  %68 = load i8*, i8** %13, align 8
  %69 = load i8, i8* %10, align 1
  %70 = call i32 @appendText(%struct.TYPE_5__* %9, i8* %68, i8 signext %69)
  br label %53

71:                                               ; preds = %53
  %72 = call i32 @appendText(%struct.TYPE_5__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8 signext 0)
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @sqlite3_finalize(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = call i32 @freeText(%struct.TYPE_5__* %9)
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i8* null, i8** %79, align 8
  br label %80

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  ret i8* %82
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @initText(%struct.TYPE_5__*) #1

declare dso_local signext i8 @quoteChar(i8*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @appendText(%struct.TYPE_5__*, i8*, i8 signext) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @freeText(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
