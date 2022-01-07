; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_blame_closed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blame.c_blame_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32, i32 (i32, i8*, i32, i32, i32, i32*, i32*, i32, i32*)* }
%struct.TYPE_4__ = type { i8*, i32* }

@FILE_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MERGED_REVISION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"merged-revision\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@TXDELTA = common dso_local global i32 0, align 4
@REV_PROP = common dso_local global i32 0, align 4
@SET_PROP = common dso_local global i32 0, align 4
@REMOVE_PROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32, i32*, i32*, i32*)* @blame_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @blame_closed(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FILE_REV, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load i32*, i32** %11, align 8
  %32 = call i8* @svn_hash_gets(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %14, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i8* @svn_hash_gets(i32* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %15, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 5
  %37 = load i32 (i32, i8*, i32, i32, i32, i32*, i32*, i32, i32*)*, i32 (i32, i8*, i32, i32, i32, i32*, i32*, i32, i32*)** %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @SVN_STR_TO_REV(i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 %37(i32 %40, i8* %41, i32 %43, i32 %46, i32 %47, i32* null, i32* null, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %30, %25
  br label %146

55:                                               ; preds = %6
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @MERGED_REVISION, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @FILE_REV, align 4
  %62 = call i32 @svn_ra_serf__xml_note(i32* %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %145

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TXDELTA, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @svn_stream_close(i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %144

73:                                               ; preds = %63
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @REV_PROP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @SET_PROP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @REMOVE_PROP, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %77, %73
  %86 = phi i1 [ true, %77 ], [ true, %73 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @SVN_ERR_ASSERT(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i8* @svn_hash_gets(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i8* @apr_pstrdup(i32 %91, i8* %93)
  store i8* %94, i8** %16, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @REMOVE_PROP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store i32* null, i32** %17, align 8
  br label %121

99:                                               ; preds = %85
  %100 = load i32*, i32** %11, align 8
  %101 = call i8* @svn_hash_gets(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %101, i8** %18, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i8*, i8** %18, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i32*, i32** %10, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32* @svn_base64_decode_string(i32* %109, i32 %112)
  store i32* %113, i32** %17, align 8
  br label %120

114:                                              ; preds = %104, %99
  %115 = load i32*, i32** %10, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32* @svn_string_dup(i32* %115, i32 %118)
  store i32* %119, i32** %17, align 8
  br label %120

120:                                              ; preds = %114, %108
  br label %121

121:                                              ; preds = %120, %98
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @REV_PROP, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %16, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i32 @svn_hash_sets(i32 %128, i8* %129, i32* %130)
  br label %143

132:                                              ; preds = %121
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call %struct.TYPE_4__* @apr_array_push(i32 %135)
  store %struct.TYPE_4__* %136, %struct.TYPE_4__** %19, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  br label %143

143:                                              ; preds = %132, %125
  br label %144

144:                                              ; preds = %143, %67
  br label %145

145:                                              ; preds = %144, %59
  br label %146

146:                                              ; preds = %145, %54
  %147 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %147
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @SVN_STR_TO_REV(i8*) #1

declare dso_local i32 @svn_ra_serf__xml_note(i32*, i32, i8*, i8*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_base64_decode_string(i32*, i32) #1

declare dso_local i32* @svn_string_dup(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @apr_array_push(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
