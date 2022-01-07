; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxCreateFromCons.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxCreateFromCons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s_idx_%08x\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"CREATE INDEX '%q' ON %Q(%s)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CREATE INDEX %s ON %s(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*)* @idxCreateFromCons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxCreateFromCons(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32, i32* @SQLITE_OK, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = icmp ne %struct.TYPE_17__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %28 = icmp ne %struct.TYPE_17__* %27, null
  br i1 %28, label %29, label %144

29:                                               ; preds = %26, %4
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = call i64 @idxFindCompatible(i32* %10, i32* %30, %struct.TYPE_16__* %31, %struct.TYPE_17__* %32, %struct.TYPE_17__* %33)
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %144

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %14, align 8
  br label %41

41:                                               ; preds = %49, %36
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %48 = call i8* @idxAppendColDefn(i32* %10, i8* %45, %struct.TYPE_15__* %46, %struct.TYPE_17__* %47)
  store i8* %48, i8** %12, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %14, align 8
  br label %41

53:                                               ; preds = %41
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %14, align 8
  br label %55

55:                                               ; preds = %63, %53
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %62 = call i8* @idxAppendColDefn(i32* %10, i8* %59, %struct.TYPE_15__* %60, %struct.TYPE_17__* %61)
  store i8* %62, i8** %12, align 8
  br label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %14, align 8
  br label %55

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @SQLITE_OK, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %141

71:                                               ; preds = %67
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %17, align 8
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %96, %71
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  %86 = shl i32 %85, 3
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = add i32 %86, %92
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %101)
  store i8* %102, i8** %18, align 8
  %103 = load i8*, i8** %18, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %106, i32* %10, align 4
  br label %140

107:                                              ; preds = %99
  %108 = load i8*, i8** %17, align 8
  %109 = call i64 @idxIdentifierRequiresQuotes(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %113

112:                                              ; preds = %107
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %18, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = call i8* (i8*, i8*, ...) @sqlite3_mprintf(i8* %114, i8* %115, i8* %116, i8* %117)
  store i8* %118, i8** %13, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %122, i32* %10, align 4
  br label %135

123:                                              ; preds = %113
  %124 = load i32*, i32** %9, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sqlite3_exec(i32* %124, i8* %125, i32 0, i32 0, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i8*, i8** %18, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = call i32 @idxHashAdd(i32* %10, i32* %131, i8* %132, i8* %133)
  br label %135

135:                                              ; preds = %123, %121
  %136 = load i8*, i8** %18, align 8
  %137 = call i32 @sqlite3_free(i8* %136)
  %138 = load i8*, i8** %13, align 8
  %139 = call i32 @sqlite3_free(i8* %138)
  br label %140

140:                                              ; preds = %135, %105
  br label %141

141:                                              ; preds = %140, %67
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @sqlite3_free(i8* %142)
  br label %144

144:                                              ; preds = %141, %29, %26
  %145 = load i32, i32* %10, align 4
  ret i32 %145
}

declare dso_local i64 @idxFindCompatible(i32*, i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i8* @idxAppendColDefn(i32*, i8*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, ...) #1

declare dso_local i64 @idxIdentifierRequiresQuotes(i8*) #1

declare dso_local i32 @sqlite3_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @idxHashAdd(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
