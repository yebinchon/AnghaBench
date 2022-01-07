; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_write_change_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_write_change_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACTION_MODIFY = common dso_local global i8* null, align 8
@ACTION_ADD = common dso_local global i8* null, align 8
@ACTION_DELETE = common dso_local global i8* null, align 8
@ACTION_REPLACE = common dso_local global i8* null, align 8
@ACTION_RESET = common dso_local global i8* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid change type %d\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@SVN_FS_FS__KIND_DIR = common dso_local global i32 0, align 4
@SVN_FS_FS__KIND_FILE = common dso_local global i32 0, align 4
@svn_tristate_unknown = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@svn_tristate_true = common dso_local global i64 0, align 8
@FLAG_TRUE = common dso_local global i32 0, align 4
@FLAG_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%s %s%s %s %s%s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%ld %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, %struct.TYPE_9__*, i64, i64, i32*)* @write_change_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_change_entry(i32* %0, i8* %1, %struct.TYPE_9__* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %33 [
    i32 130, label %23
    i32 132, label %25
    i32 131, label %27
    i32 129, label %29
    i32 128, label %31
  ]

23:                                               ; preds = %6
  %24 = load i8*, i8** @ACTION_MODIFY, align 8
  store i8* %24, i8** %15, align 8
  br label %40

25:                                               ; preds = %6
  %26 = load i8*, i8** @ACTION_ADD, align 8
  store i8* %26, i8** %15, align 8
  br label %40

27:                                               ; preds = %6
  %28 = load i8*, i8** @ACTION_DELETE, align 8
  store i8* %28, i8** %15, align 8
  br label %40

29:                                               ; preds = %6
  %30 = load i8*, i8** @ACTION_REPLACE, align 8
  store i8* %30, i8** %15, align 8
  br label %40

31:                                               ; preds = %6
  %32 = load i8*, i8** @ACTION_RESET, align 8
  store i8* %32, i8** %15, align 8
  br label %40

33:                                               ; preds = %6
  %34 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @svn_error_createf(i32 %34, i32* null, i32 %35, i32 %38)
  store i32* %39, i32** %7, align 8
  br label %166

40:                                               ; preds = %31, %29, %27, %25, %23
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call %struct.TYPE_10__* @svn_fs_fs__id_unparse(i64 %48, i32* %49)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  br label %55

53:                                               ; preds = %40
  %54 = load i8*, i8** @ACTION_RESET, align 8
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %53, %45
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_node_dir, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @svn_node_file, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %64, %58
  %71 = phi i1 [ true, %58 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @SVN_ERR_ASSERT(i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @svn_node_dir, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @SVN_FS_FS__KIND_DIR, align 4
  br label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @SVN_FS_FS__KIND_FILE, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = call i8* (i32*, i8*, i32, ...) @apr_psprintf(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  store i8* %86, i8** %16, align 8
  br label %87

87:                                               ; preds = %84, %55
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @svn_tristate_unknown, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %90
  %97 = load i32*, i32** %13, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @svn_tristate_true, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @FLAG_TRUE, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @FLAG_FALSE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i8* (i32*, i8*, i32, ...) @apr_psprintf(i32* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  store i8* %109, i8** %17, align 8
  br label %110

110:                                              ; preds = %107, %90, %87
  %111 = load i32*, i32** %13, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* @FLAG_TRUE, align 4
  br label %123

121:                                              ; preds = %110
  %122 = load i32, i32* @FLAG_FALSE, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @FLAG_TRUE, align 4
  br label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @FLAG_FALSE, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = call %struct.TYPE_8__* @svn_stringbuf_createf(i32* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %112, i8* %113, i8* %114, i32 %124, i32 %134, i8* %135, i8* %136)
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %18, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @SVN_IS_VALID_REVNUM(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %133
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i8* (i32*, i8*, i32, ...) @apr_psprintf(i32* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32 %151)
  %153 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_8__* %144, i8* %152)
  br label %154

154:                                              ; preds = %143, %133
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %156 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_8__* %155, i8 signext 10)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %19, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @svn_stream_write(i32* %160, i32 %163, i32* %19)
  %165 = call i32* @svn_error_trace(i32 %164)
  store i32* %165, i32** %7, align 8
  br label %166

166:                                              ; preds = %154, %33
  %167 = load i32*, i32** %7, align 8
  ret i32* %167
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_fs__id_unparse(i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @svn_stringbuf_createf(i32*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_write(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
