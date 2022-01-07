; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_open_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64*, i64 }

@OPEN_DB_ZIPFILE = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"apndvfs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@globalDb = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Error: unable to open database \22%s\22: %s\0A\00", align 1
@OPEN_DB_KEEPALIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"shell_add_schema\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@shellAddSchemaName = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"shell_module_schema\00", align 1
@shellModuleSchema = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"shell_putsnl\00", align 1
@shellPutsFunc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"shell_escape_crnl\00", align 1
@shellEscapeCrnl = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"shell_int32\00", align 1
@shellInt32 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"shell_idquote\00", align 1
@shellIdQuote = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@editFunc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"CREATE VIRTUAL TABLE zip USING zipfile(%Q);\00", align 1
@SQLITE_DESERIALIZE_FREEONCLOSE = common dso_local global i32 0, align 4
@SQLITE_DESERIALIZE_RESIZEABLE = common dso_local global i32 0, align 4
@SQLITE_FCNTL_SIZE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @open_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_db(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %201

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %15
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i32 131, i32* %29, align 8
  br label %43

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @OPEN_DB_ZIPFILE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @deduceDatabaseType(i64* %33, i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %30, %27
  br label %44

44:                                               ; preds = %43, %10
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %82 [
    i32 134, label %48
    i32 132, label %58
    i32 133, label %58
    i32 128, label %62
    i32 130, label %66
    i32 129, label %74
    i32 131, label %74
  ]

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %55 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @sqlite3_open_v2(i64* %51, i64* %53, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %82

58:                                               ; preds = %44, %44
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @sqlite3_open(i8* null, i64* %60)
  br label %82

62:                                               ; preds = %44
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @sqlite3_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %64)
  br label %82

66:                                               ; preds = %44
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  %73 = call i32 @sqlite3_open_v2(i64* %69, i64* %71, i32 %72, i8* null)
  br label %82

74:                                               ; preds = %44, %44
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = bitcast i64* %77 to i8*
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @sqlite3_open(i8* %78, i64* %80)
  br label %82

82:                                               ; preds = %44, %74, %66, %62, %58, %48
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* @globalDb, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %82
  %91 = load i64, i64* @SQLITE_OK, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @sqlite3_errcode(i64 %94)
  %96 = icmp ne i64 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90, %82
  %98 = load i32, i32* @stderr, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @sqlite3_errmsg(i64 %104)
  %106 = call i32 (i32, i8*, ...) @utf8_printf(i32 %98, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64* %101, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @OPEN_DB_KEEPALIVE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %97
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @sqlite3_open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %113)
  br label %201

115:                                              ; preds = %97
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %90
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @sqlite3_enable_load_extension(i64 %120, i32 1)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @sqlite3_fileio_init(i64 %124, i32 0, i32 0)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @sqlite3_shathree_init(i64 %128, i32 0, i32 0)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @sqlite3_completion_init(i64 %132, i32 0, i32 0)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* @SQLITE_UTF8, align 4
  %138 = load i32, i32* @shellAddSchemaName, align 4
  %139 = call i32 @sqlite3_create_function(i64 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 %137, %struct.TYPE_5__* null, i32 %138, i32 0, i32 0)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @SQLITE_UTF8, align 4
  %144 = load i32, i32* @shellModuleSchema, align 4
  %145 = call i32 @sqlite3_create_function(i64 %142, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 %143, %struct.TYPE_5__* null, i32 %144, i32 0, i32 0)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @SQLITE_UTF8, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %151 = load i32, i32* @shellPutsFunc, align 4
  %152 = call i32 @sqlite3_create_function(i64 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %149, %struct.TYPE_5__* %150, i32 %151, i32 0, i32 0)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @SQLITE_UTF8, align 4
  %157 = load i32, i32* @shellEscapeCrnl, align 4
  %158 = call i32 @sqlite3_create_function(i64 %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 1, i32 %156, %struct.TYPE_5__* null, i32 %157, i32 0, i32 0)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @SQLITE_UTF8, align 4
  %163 = load i32, i32* @shellInt32, align 4
  %164 = call i32 @sqlite3_create_function(i64 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 2, i32 %162, %struct.TYPE_5__* null, i32 %163, i32 0, i32 0)
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @SQLITE_UTF8, align 4
  %169 = load i32, i32* @shellIdQuote, align 4
  %170 = call i32 @sqlite3_create_function(i64 %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 1, i32 %168, %struct.TYPE_5__* null, i32 %169, i32 0, i32 0)
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @SQLITE_UTF8, align 4
  %175 = load i32, i32* @editFunc, align 4
  %176 = call i32 @sqlite3_create_function(i64 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 1, i32 %174, %struct.TYPE_5__* null, i32 %175, i32 0, i32 0)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @SQLITE_UTF8, align 4
  %181 = load i32, i32* @editFunc, align 4
  %182 = call i32 @sqlite3_create_function(i64 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 2, i32 %180, %struct.TYPE_5__* null, i32 %181, i32 0, i32 0)
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 128
  br i1 %186, label %187, label %200

187:                                              ; preds = %117
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = bitcast i64* %190 to i8*
  %192 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %191)
  store i8* %192, i8** %5, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = call i32 @sqlite3_exec(i64 %195, i8* %196, i32 0, i32 0, i32 0)
  %198 = load i8*, i8** %5, align 8
  %199 = call i32 @sqlite3_free(i8* %198)
  br label %200

200:                                              ; preds = %187, %117
  br label %201

201:                                              ; preds = %111, %200, %2
  ret void
}

declare dso_local i64 @deduceDatabaseType(i64*, i32) #1

declare dso_local i32 @sqlite3_open_v2(i64*, i64*, i32, i8*) #1

declare dso_local i32 @sqlite3_open(i8*, i64*) #1

declare dso_local i64 @sqlite3_errcode(i64) #1

declare dso_local i32 @utf8_printf(i32, i8*, ...) #1

declare dso_local i32 @sqlite3_errmsg(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sqlite3_enable_load_extension(i64, i32) #1

declare dso_local i32 @sqlite3_fileio_init(i64, i32, i32) #1

declare dso_local i32 @sqlite3_shathree_init(i64, i32, i32) #1

declare dso_local i32 @sqlite3_completion_init(i64, i32, i32) #1

declare dso_local i32 @sqlite3_create_function(i64, i8*, i32, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_exec(i64, i8*, i32, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
