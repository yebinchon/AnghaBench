; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToCloneSchema.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tryToCloneSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"SELECT name, sql FROM sqlite_master WHERE %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error: (%d) %s on [%s]\0A\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s... \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Error: %s\0ASQL: [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"SELECT name, sql FROM sqlite_master WHERE %s ORDER BY rowid DESC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i8*, void (%struct.TYPE_5__*, i32*, i8*)*)* @tryToCloneSchema to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tryToCloneSchema(%struct.TYPE_5__* %0, i32* %1, i8* %2, void (%struct.TYPE_5__*, i32*, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca void (%struct.TYPE_5__*, i32*, i8*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store void (%struct.TYPE_5__*, i32*, i8*)* %3, void (%struct.TYPE_5__*, i32*, i8*)** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @sqlite3_prepare_v2(i32 %19, i8* %20, i32 -1, i32** %9, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %4
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sqlite3_extended_errcode(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sqlite3_errmsg(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i32, i8*, i8*, i8*, ...) @utf8_printf(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %37, i8* %38)
  br label %150

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %75, %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sqlite3_step(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @SQLITE_ROW, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = call i8* @sqlite3_column_text(i32* %47, i32 0)
  store i8* %48, i8** %12, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i8* @sqlite3_column_text(i32* %49, i32 1)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fflush(i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @sqlite3_exec(i32* %55, i8* %56, i32 0, i32 0, i8** %14)
  %58 = load i8*, i8** %14, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %46
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 (i32, i8*, i8*, i8*, ...) @utf8_printf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63)
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @sqlite3_free(i8* %65)
  store i8* null, i8** %14, align 8
  br label %67

67:                                               ; preds = %60, %46
  %68 = load void (%struct.TYPE_5__*, i32*, i8*)*, void (%struct.TYPE_5__*, i32*, i8*)** %8, align 8
  %69 = icmp ne void (%struct.TYPE_5__*, i32*, i8*)* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load void (%struct.TYPE_5__*, i32*, i8*)*, void (%struct.TYPE_5__*, i32*, i8*)** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %12, align 8
  call void %71(%struct.TYPE_5__* %72, i32* %73, i8* %74)
  br label %75

75:                                               ; preds = %70, %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %41

77:                                               ; preds = %41
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SQLITE_DONE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %149

81:                                               ; preds = %77
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @sqlite3_finalize(i32* %82)
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @sqlite3_free(i8* %84)
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  store i8* %87, i8** %10, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @sqlite3_prepare_v2(i32 %90, i8* %91, i32 -1, i32** %9, i32 0)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %81
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sqlite3_extended_errcode(i32 %99)
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @sqlite3_errmsg(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (i32, i8*, i8*, i8*, ...) @utf8_printf(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %102, i8* %108, i8* %109)
  br label %150

111:                                              ; preds = %81
  br label %112

112:                                              ; preds = %146, %111
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @sqlite3_step(i32* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @SQLITE_ROW, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %112
  %118 = load i32*, i32** %9, align 8
  %119 = call i8* @sqlite3_column_text(i32* %118, i32 0)
  store i8* %119, i8** %12, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i8* @sqlite3_column_text(i32* %120, i32 1)
  store i8* %121, i8** %13, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  %124 = load i32, i32* @stdout, align 4
  %125 = call i32 @fflush(i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @sqlite3_exec(i32* %126, i8* %127, i32 0, i32 0, i8** %14)
  %129 = load i8*, i8** %14, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %117
  %132 = load i32, i32* @stderr, align 4
  %133 = load i8*, i8** %14, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 (i32, i8*, i8*, i8*, ...) @utf8_printf(i32 %132, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %133, i8* %134)
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @sqlite3_free(i8* %136)
  store i8* null, i8** %14, align 8
  br label %138

138:                                              ; preds = %131, %117
  %139 = load void (%struct.TYPE_5__*, i32*, i8*)*, void (%struct.TYPE_5__*, i32*, i8*)** %8, align 8
  %140 = icmp ne void (%struct.TYPE_5__*, i32*, i8*)* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load void (%struct.TYPE_5__*, i32*, i8*)*, void (%struct.TYPE_5__*, i32*, i8*)** %8, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i8*, i8** %12, align 8
  call void %142(%struct.TYPE_5__* %143, i32* %144, i8* %145)
  br label %146

146:                                              ; preds = %141, %138
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %112

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %148, %77
  br label %150

150:                                              ; preds = %149, %95, %24
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @sqlite3_finalize(i32* %151)
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @sqlite3_free(i8* %153)
  ret void
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @utf8_printf(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_extended_errcode(i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
