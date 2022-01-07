; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_add_or_delete_single_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_add_or_delete_single_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, i64, i64, i8*, %struct.TYPE_13__, i8*, %struct.TYPE_12__, i32* }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@add_or_delete_single_line.hunk_header = internal global [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [15 x i8] c"@@ -1 +0,0 @@\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"@@ -0,0 +1 @@\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"\\ No newline at end of hunk\0A\00", align 1
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__**, i8*, i32*, i64, i32*, i32*)* @add_or_delete_single_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_or_delete_single_line(%struct.TYPE_16__** %0, i8* %1, i32* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.TYPE_16__* @apr_pcalloc(i32* %18, i32 136)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* @add_or_delete_single_line.hunk_header, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %14, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %15, align 8
  %28 = add nsw i64 1, %27
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = add nsw i64 %30, 1
  %32 = load i32*, i32** %12, align 8
  %33 = call %struct.TYPE_15__* @svn_stringbuf_create_ensure(i64 %31, i32* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %17, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 12
  store i32* %34, i32** %36, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %83

47:                                               ; preds = %6
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 11
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load i8*, i8** @FALSE, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 10
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %14, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 9
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  br label %119

83:                                               ; preds = %6
  %84 = load i64, i64* %14, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  store i64 %84, i64* %87, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load i8*, i8** @TRUE, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 10
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 9
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load i8*, i8** @FALSE, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 8
  store i8* %108, i8** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 3
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %83, %47
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds [2 x i8*], [2 x i8*]* @add_or_delete_single_line.hunk_header, i64 0, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_15__* %124, i8* %127, i64 %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 43, i32 45
  %135 = trunc i32 %134 to i8
  %136 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_15__* %130, i8 signext %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_15__* %137, i8* %138, i64 %139)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %142 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_15__* %141, i8 signext 10)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %144 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_15__* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @svn_io_open_unique_file3(i32* %152, i32* null, i32* null, i32 %153, i32* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @svn_io_file_write_full(i32 %160, i32 %163, i32 %166, i32* null, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %171 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %170, %struct.TYPE_16__** %171, align 8
  %172 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %172
}

declare dso_local %struct.TYPE_16__* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_15__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_15__*, i8*, i64) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_15__*, i8 signext) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
