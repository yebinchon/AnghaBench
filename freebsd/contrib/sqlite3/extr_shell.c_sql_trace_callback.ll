; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sql_trace_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_sql_trace_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@SQLITE_TRACE_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"-- closing database connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.*s;\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%.*s; -- %lld ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*)* @sql_trace_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sql_trace_callback(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SQLITE_TRACE_CLOSE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i64, i8*, ...) @utf8_printf(i64 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %100

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 129
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %12, align 8
  br label %55

42:                                               ; preds = %34, %31
  %43 = load i8*, i8** %8, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %11, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %51 [
    i32 132, label %48
  ]

48:                                               ; preds = %42
  %49 = load i32*, i32** %11, align 8
  %50 = call i8* @sqlite3_expanded_sql(i32* %49)
  store i8* %50, i8** %12, align 8
  br label %54

51:                                               ; preds = %42
  %52 = load i32*, i32** %11, align 8
  %53 = call i8* @sqlite3_sql(i32* %52)
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i8*, i8** %12, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %100

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @strlen30(i8* %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %76, %59
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8*, i8** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 59
  br label %74

74:                                               ; preds = %65, %62
  %75 = phi i1 [ false, %62 ], [ %73, %65 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %13, align 4
  br label %62

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  switch i32 %80, label %99 [
    i32 129, label %81
    i32 128, label %81
    i32 130, label %88
  ]

81:                                               ; preds = %79, %79
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 (i64, i8*, ...) @utf8_printf(i64 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %85, i8* %86)
  br label %99

88:                                               ; preds = %79
  %89 = load i8*, i8** %9, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 (i64, i8*, ...) @utf8_printf(i64 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %79, %88, %81
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %58, %26, %21
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @utf8_printf(i64, i8*, ...) #1

declare dso_local i8* @sqlite3_expanded_sql(i32*) #1

declare dso_local i8* @sqlite3_sql(i32*) #1

declare dso_local i32 @strlen30(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
