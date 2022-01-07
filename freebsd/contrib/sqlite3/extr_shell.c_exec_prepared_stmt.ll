; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_exec_prepared_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_exec_prepared_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@MODE_Insert = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @exec_prepared_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_prepared_stmt(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @sqlite3_step(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @SQLITE_ROW, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %149

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sqlite3_column_count(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 3, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = add i64 %24, 1
  %26 = trunc i64 %25 to i32
  %27 = call i8* @sqlite3_malloc64(i32 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %31, i32* %5, align 4
  br label %148

32:                                               ; preds = %18
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %8, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8** %38, i8*** %9, align 8
  %39 = load i8**, i8*** %9, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = bitcast i8** %42 to i32*
  store i32* %43, i32** %10, align 8
  %44 = call i32 @assert(i32 1)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %58, %32
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @sqlite3_column_name(i32* %50, i32 %51)
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8**, i8*** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %45

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %141, %61
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %119, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sqlite3_column_type(i32* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @SQLITE_BLOB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MODE_Insert, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i8**, i8*** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %91, align 8
  br label %101

92:                                               ; preds = %81, %78, %67
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @sqlite3_column_text(i32* %93, i32 %94)
  %96 = inttoptr i64 %95 to i8*
  %97 = load i8**, i8*** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %96, i8** %100, align 8
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i8**, i8*** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SQLITE_NULL, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %117, i32* %5, align 4
  br label %122

118:                                              ; preds = %108, %101
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %63

122:                                              ; preds = %116, %63
  %123 = load i32, i32* @SQLITE_ROW, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i8**, i8*** %9, align 8
  %130 = load i8**, i8*** %8, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i64 @shell_callback(%struct.TYPE_4__* %127, i32 %128, i8** %129, i8** %130, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @SQLITE_ABORT, align 4
  store i32 %135, i32* %5, align 4
  br label %139

136:                                              ; preds = %126
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @sqlite3_step(i32* %137)
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %136, %134
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* @SQLITE_ROW, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %62, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @sqlite3_free(i8* %146)
  br label %148

148:                                              ; preds = %145, %30
  br label %149

149:                                              ; preds = %148, %2
  ret void
}

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_column_name(i32*, i32) #1

declare dso_local i32 @sqlite3_column_type(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @shell_callback(%struct.TYPE_4__*, i32, i8**, i8**, i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
