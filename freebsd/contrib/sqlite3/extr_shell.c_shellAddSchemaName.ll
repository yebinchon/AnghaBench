; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellAddSchemaName.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_shellAddSchemaName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shellAddSchemaName.aPrefix = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"UNIQUE INDEX\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TRIGGER\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"VIRTUAL TABLE\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CREATE \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%.*s \22%w\22.%s\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"%.*s %s.%s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s\0A/* %s */\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%z\0A/* %s */\00", align 1
@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @shellAddSchemaName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shellAddSchemaName(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @sqlite3_value_text(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %8, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @sqlite3_value_text(i32* %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %9, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_text(i32* %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %10, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @sqlite3_context_db_handle(i32* %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @UNUSED_PARAMETER(i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %151

37:                                               ; preds = %3
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %151

41:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %147, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 6
  br i1 %44, label %45, label %150

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i8*], [6 x i8*]* @shellAddSchemaName.aPrefix, i64 0, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen30(i8* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 7
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i8*], [6 x i8*]* @shellAddSchemaName.aPrefix, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @strncmp(i8* %52, i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %146

60:                                               ; preds = %45
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 7
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %146

69:                                               ; preds = %60
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = call signext i8 @quoteChar(i8* %73)
  store i8 %74, i8* %15, align 1
  %75 = load i8, i8* %15, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 @sqlite3_stricmp(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 7
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  %92 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %84, i8* %85, i8* %86, i8* %91)
  store i8* %92, i8** %13, align 8
  br label %104

93:                                               ; preds = %78, %72
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 7
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  %103 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %95, i8* %96, i8* %97, i8* %102)
  store i8* %103, i8** %13, align 8
  br label %104

104:                                              ; preds = %93, %82
  br label %105

105:                                              ; preds = %104, %69
  %106 = load i8*, i8** %10, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [6 x i8*], [6 x i8*]* @shellAddSchemaName.aPrefix, i64 0, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 86
  br i1 %116, label %117, label %137

117:                                              ; preds = %108
  %118 = load i32*, i32** %11, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i8* @shellFakeSchema(i32* %118, i8* %119, i8* %120)
  store i8* %121, i8** %14, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i8*, i8** %13, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %127, i8* %128)
  store i8* %129, i8** %13, align 8
  br label %134

130:                                              ; preds = %123
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %131, i8* %132)
  store i8* %133, i8** %13, align 8
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i8*, i8** %14, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %134, %117, %108, %105
  %138 = load i8*, i8** %13, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %4, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = load i32, i32* @sqlite3_free, align 4
  %144 = call i32 @sqlite3_result_text(i32* %141, i8* %142, i32 -1, i32 %143)
  br label %157

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145, %60, %45
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %42

150:                                              ; preds = %42
  br label %151

151:                                              ; preds = %150, %37, %3
  %152 = load i32*, i32** %4, align 8
  %153 = load i32**, i32*** %6, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @sqlite3_result_value(i32* %152, i32* %155)
  br label %157

157:                                              ; preds = %151, %140
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local signext i8 @quoteChar(i8*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i8* @shellFakeSchema(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
