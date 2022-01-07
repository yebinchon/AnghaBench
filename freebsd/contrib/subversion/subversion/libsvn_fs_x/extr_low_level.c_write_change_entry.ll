; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_write_change_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_low_level.c_write_change_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32, i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACTION_MODIFY = common dso_local global i8* null, align 8
@ACTION_ADD = common dso_local global i8* null, align 8
@ACTION_DELETE = common dso_local global i8* null, align 8
@ACTION_REPLACE = common dso_local global i8* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid change type %d\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@SVN_FS_X__KIND_DIR = common dso_local global i32 0, align 4
@SVN_FS_X__KIND_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"%s%s %s %s %s %s\0A\00", align 1
@FLAG_TRUE = common dso_local global i32 0, align 4
@FLAG_FALSE = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%ld %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_10__*, i32*)* @write_change_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_change_entry(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 131, label %17
    i32 130, label %19
    i32 128, label %21
  ]

15:                                               ; preds = %3
  %16 = load i8*, i8** @ACTION_MODIFY, align 8
  store i8* %16, i8** %8, align 8
  br label %30

17:                                               ; preds = %3
  %18 = load i8*, i8** @ACTION_ADD, align 8
  store i8* %18, i8** %8, align 8
  br label %30

19:                                               ; preds = %3
  %20 = load i8*, i8** @ACTION_DELETE, align 8
  store i8* %20, i8** %8, align 8
  br label %30

21:                                               ; preds = %3
  %22 = load i8*, i8** @ACTION_REPLACE, align 8
  store i8* %22, i8** %8, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @svn_error_createf(i32 %24, i32* null, i32 %25, i32 %28)
  store i32* %29, i32** %4, align 8
  br label %130

30:                                               ; preds = %21, %19, %17, %15
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_node_dir, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @svn_node_file, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @svn_node_dir, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @SVN_FS_X__KIND_DIR, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @SVN_FS_X__KIND_FILE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = call i8* (i32*, i8*, i32, ...) @apr_psprintf(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @FLAG_TRUE, align 4
  br label %70

68:                                               ; preds = %56
  %69 = load i32, i32* @FLAG_FALSE, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @FLAG_TRUE, align 4
  br label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @FLAG_FALSE, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @svn_tristate_true, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @FLAG_TRUE, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @FLAG_FALSE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @auto_escape_path(i32 %96, i32* %97)
  %99 = call %struct.TYPE_9__* @svn_stringbuf_createf(i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %61, i32 %71, i32 %81, i32 %92, i32 %98)
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %10, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @SVN_IS_VALID_REVNUM(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %91
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @auto_escape_path(i32 %113, i32* %114)
  %116 = call i8* (i32*, i8*, i32, ...) @apr_psprintf(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %115)
  %117 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__* %106, i8* %116)
  br label %118

118:                                              ; preds = %105, %91
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %120 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_9__* %119, i8 signext 10)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @svn_stream_write(i32* %124, i32 %127, i32* %11)
  %129 = call i32* @svn_error_trace(i32 %128)
  store i32* %129, i32** %4, align 8
  br label %130

130:                                              ; preds = %118, %23
  %131 = load i32*, i32** %4, align 8
  ret i32* %131
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_9__* @svn_stringbuf_createf(i32*, i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @auto_escape_path(i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
