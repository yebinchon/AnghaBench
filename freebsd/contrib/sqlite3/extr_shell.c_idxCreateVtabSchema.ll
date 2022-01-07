; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxCreateVtabSchema.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxCreateVtabSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [268 x i8] c"SELECT type, name, sql, 1 FROM sqlite_master WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%%'  UNION ALL SELECT type, name, sql, 2 FROM sqlite_master WHERE type = 'trigger'  AND tbl_name IN(SELECT name FROM sqlite_master WHERE type = 'view') ORDER BY 4, 1\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"CREATE TABLE x(\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s%Q COLLATE %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"CREATE VIRTUAL TABLE %Q USING expert(%Q)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**)* @idxCreateVtabSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxCreateVtabSchema(%struct.TYPE_8__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @idxRegisterVtab(%struct.TYPE_8__* %14)
  store i32 %15, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = call i32 @idxPrepareStmt(i32 %18, i32** %6, i8** %19, i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %134, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SQLITE_OK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* @SQLITE_ROW, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @sqlite3_step(i32* %27)
  %29 = icmp eq i64 %26, %28
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ false, %21 ], [ %29, %25 ]
  br i1 %31, label %32, label %135

32:                                               ; preds = %30
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @sqlite3_column_text(i32* %33, i32 0)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @sqlite3_column_text(i32* %36, i32 1)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %8, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @sqlite3_column_text(i32* %39, i32 2)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 118
  br i1 %46, label %53, label %47

47:                                               ; preds = %32
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 114
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %32
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8**, i8*** %4, align 8
  %59 = call i32 @sqlite3_exec(i32 %56, i8* %57, i32 0, i32 0, i8** %58)
  store i32 %59, i32* %5, align 4
  br label %134

60:                                               ; preds = %47
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8**, i8*** %4, align 8
  %66 = call i32 @idxGetTableInfo(i32 %63, i8* %64, %struct.TYPE_9__** %10, i8** %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %133

70:                                               ; preds = %60
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %78, align 8
  %79 = call i8* (i32*, i8*, i8*, ...) @idxAppendText(i32* %5, i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %79, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %109, %70
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i8* (i32*, i8*, i8*, ...) @idxAppendText(i32* %5, i8* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %91, i32 %99, i32 %107)
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %86
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %80

112:                                              ; preds = %80
  %113 = load i8*, i8** %12, align 8
  %114 = call i8* (i32*, i8*, i8*, ...) @idxAppendText(i32* %5, i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i8* (i32*, i8*, i8*, ...) @idxAppendText(i32* %5, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %115, i8* %116)
  store i8* %117, i8** %13, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @SQLITE_OK, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load i8**, i8*** %4, align 8
  %127 = call i32 @sqlite3_exec(i32 %124, i8* %125, i32 0, i32 0, i8** %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %121, %112
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @sqlite3_free(i8* %129)
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @sqlite3_free(i8* %131)
  br label %133

133:                                              ; preds = %128, %60
  br label %134

134:                                              ; preds = %133, %53
  br label %21

135:                                              ; preds = %30
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @idxFinalize(i32* %5, i32* %136)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @idxRegisterVtab(%struct.TYPE_8__*) #1

declare dso_local i32 @idxPrepareStmt(i32, i32**, i8**, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i32, i8**) #1

declare dso_local i32 @idxGetTableInfo(i32, i8*, %struct.TYPE_9__**, i8**) #1

declare dso_local i8* @idxAppendText(i32*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @idxFinalize(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
