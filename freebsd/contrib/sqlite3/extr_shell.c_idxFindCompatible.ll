; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxFindCompatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_idxFindCompatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"PRAGMA index_list=%Q\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"PRAGMA index_xInfo=%Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @idxFindCompatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idxFindCompatible(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %14, align 8
  br label %30

30:                                               ; preds = %36, %5
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %14, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @idxPrintfPrepareStmt(i32* %41, i32** %13, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %42)
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %170, %40
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @SQLITE_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @sqlite3_step(i32* %49)
  %51 = load i64, i64* @SQLITE_ROW, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i1 [ false, %44 ], [ %52, %48 ]
  br i1 %54, label %55, label %171

55:                                               ; preds = %53
  store i32 1, i32* %17, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %18, align 8
  store i32* null, i32** %19, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @sqlite3_column_text(i32* %57, i32 1)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %20, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %14, align 8
  br label %61

61:                                               ; preds = %67, %55
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %14, align 8
  br label %61

71:                                               ; preds = %61
  %72 = load i32*, i32** %8, align 8
  %73 = load i8*, i8** %20, align 8
  %74 = call i32 @idxPrintfPrepareStmt(i32* %72, i32** %19, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %157, %71
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @SQLITE_OK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32*, i32** %19, align 8
  %81 = call i64 @sqlite3_step(i32* %80)
  %82 = load i64, i64* @SQLITE_ROW, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %79, %75
  %85 = phi i1 [ false, %75 ], [ %83, %79 ]
  br i1 %85, label %86, label %158

86:                                               ; preds = %84
  %87 = load i32*, i32** %19, align 8
  %88 = call i32 @sqlite3_column_int(i32* %87, i32 0)
  store i32 %88, i32* %21, align 4
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @sqlite3_column_int(i32* %89, i32 1)
  store i32 %90, i32* %22, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = call i64 @sqlite3_column_text(i32* %91, i32 4)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %23, align 8
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %86
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %14, align 8
  br label %99

99:                                               ; preds = %126, %97
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %130

102:                                              ; preds = %99
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %126

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %126

115:                                              ; preds = %108
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %23, align 8
  %120 = call i64 @sqlite3_stricmp(i32 %118, i8* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %126

123:                                              ; preds = %115
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %130

126:                                              ; preds = %122, %114, %107
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %14, align 8
  br label %99

130:                                              ; preds = %123, %99
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %132 = icmp eq %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 0, i32* %17, align 4
  br label %158

134:                                              ; preds = %130
  br label %157

135:                                              ; preds = %86
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %137 = icmp ne %struct.TYPE_9__* %136, null
  br i1 %137, label %138, label %156

138:                                              ; preds = %135
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %22, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %23, align 8
  %149 = call i64 @sqlite3_stricmp(i32 %147, i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144, %138
  store i32 0, i32* %17, align 4
  br label %158

152:                                              ; preds = %144
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %18, align 8
  br label %156

156:                                              ; preds = %152, %135
  br label %157

157:                                              ; preds = %156, %134
  br label %75

158:                                              ; preds = %151, %133, %84
  %159 = load i32*, i32** %19, align 8
  %160 = call i32 @idxFinalize(i32* %16, i32* %159)
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @SQLITE_OK, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 @sqlite3_finalize(i32* %168)
  store i32 1, i32* %6, align 4
  br label %176

170:                                              ; preds = %164, %158
  br label %44

171:                                              ; preds = %53
  %172 = load i32*, i32** %13, align 8
  %173 = call i32 @idxFinalize(i32* %16, i32* %172)
  %174 = load i32, i32* %16, align 4
  %175 = load i32*, i32** %7, align 8
  store i32 %174, i32* %175, align 4
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %171, %167
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @idxPrintfPrepareStmt(i32*, i32**, i32, i8*, i8*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i32, i8*) #1

declare dso_local i32 @idxFinalize(i32*, i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
