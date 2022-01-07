; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tableColumnList.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_tableColumnList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SHFLG_PreserveRowid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PRAGMA table_info=%Q\00", align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"SELECT 1 FROM pragma_index_list(%Q) WHERE origin='pk'\00", align 1
@tableColumnList.azRowid = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_rowid_\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (%struct.TYPE_4__*, i8*)* @tableColumnList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @tableColumnList(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = load i32, i32* @SHFLG_PreserveRowid, align 4
  %19 = call i32 @ShellHasFlag(%struct.TYPE_4__* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @sqlite3_prepare_v2(i32 %24, i8* %25, i32 -1, i32** %7, i32 0)
  store i32 %26, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @sqlite3_free(i8* %27)
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %190

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %85, %32
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @sqlite3_step(i32* %34)
  %36 = load i32, i32* @SQLITE_ROW, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 2
  %42 = icmp sge i32 %39, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %44, 2
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = add nsw i32 %47, 10
  store i32 %48, i32* %10, align 4
  %49 = load i8**, i8*** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i8** @sqlite3_realloc(i8** %49, i32 %53)
  store i8** %54, i8*** %6, align 8
  %55 = load i8**, i8*** %6, align 8
  %56 = icmp eq i8** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (...) @shell_out_of_memory()
  br label %59

59:                                               ; preds = %57, %43
  br label %60

60:                                               ; preds = %59, %38
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @sqlite3_column_text(i32* %61, i32 1)
  %63 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load i8**, i8*** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i64 @sqlite3_column_int(i32* %69, i32 5)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @sqlite3_column_text(i32* %78, i32 2)
  %80 = call i64 @sqlite3_stricmp(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  br label %84

83:                                               ; preds = %77, %72
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %82
  br label %85

85:                                               ; preds = %84, %60
  br label %33

86:                                               ; preds = %33
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @sqlite3_finalize(i32* %87)
  %89 = load i8**, i8*** %6, align 8
  %90 = icmp eq i8** %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i8** null, i8*** %3, align 8
  br label %190

92:                                               ; preds = %86
  %93 = load i8**, i8*** %6, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  store i8* null, i8** %94, align 8
  %95 = load i8**, i8*** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* null, i8** %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %92
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  %107 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  store i8* %107, i8** %8, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @sqlite3_prepare_v2(i32 %110, i8* %111, i32 -1, i32** %7, i32 0)
  store i32 %112, i32* %14, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @sqlite3_free(i8* %113)
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %105
  %118 = load i8**, i8*** %6, align 8
  %119 = call i32 @freeColumnList(i8** %118)
  store i8** null, i8*** %3, align 8
  br label %190

120:                                              ; preds = %105
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @sqlite3_step(i32* %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @sqlite3_finalize(i32* %123)
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @SQLITE_ROW, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %120, %102, %92
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %188

132:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %184, %132
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %134, 3
  br i1 %135, label %136, label %187

136:                                              ; preds = %133
  store i32 1, i32* %15, align 4
  br label %137

137:                                              ; preds = %155, %136
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** %6, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @sqlite3_stricmp(i8* %145, i8* %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %158

154:                                              ; preds = %141
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %137

158:                                              ; preds = %153, %137
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %183

162:                                              ; preds = %158
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @sqlite3_table_column_metadata(i32 %165, i32 0, i8* %166, i8* %170, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @SQLITE_OK, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %162
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i8*], [3 x i8*]* @tableColumnList.azRowid, i64 0, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i8**, i8*** %6, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 0
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %175, %162
  br label %187

183:                                              ; preds = %158
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %16, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %16, align 4
  br label %133

187:                                              ; preds = %182, %133
  br label %188

188:                                              ; preds = %187, %129
  %189 = load i8**, i8*** %6, align 8
  store i8** %189, i8*** %3, align 8
  br label %190

190:                                              ; preds = %188, %117, %91, %31
  %191 = load i8**, i8*** %3, align 8
  ret i8** %191
}

declare dso_local i32 @ShellHasFlag(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8** @sqlite3_realloc(i8**, i32) #1

declare dso_local i32 @shell_out_of_memory(...) #1

declare dso_local i8* @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_int(i32*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i32 @freeColumnList(i8**) #1

declare dso_local i32 @sqlite3_table_column_metadata(i32, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
