; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_change_file_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_change_file_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.file_baton = type { i32, i32, i8*, i32, i8*, i8*, i8*, %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@SVN_PROP_KEYWORDS = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i32 0, align 4
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_6__*, i32*)* @change_file_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_file_prop(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.file_baton*
  store %struct.file_baton* %12, %struct.file_baton** %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %16, i32** %5, align 8
  br label %126

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %20 = call i64 @strcmp(i8* %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @svn_string_dup(%struct.TYPE_6__* %23, i32 %26)
  %28 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %29 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  br label %124

30:                                               ; preds = %17
  %31 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 7
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @SVN_PROP_KEYWORDS, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %45 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @svn_string_dup(%struct.TYPE_6__* %43, i32 %46)
  %48 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %49 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  br label %123

50:                                               ; preds = %37, %30
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %58 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @svn_string_dup(%struct.TYPE_6__* %56, i32 %59)
  %61 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %62 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  br label %122

63:                                               ; preds = %50
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_REV, align 4
  %66 = call i64 @strcmp(i8* %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %70 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @apr_pstrdup(i32 %71, i32 %74)
  %76 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %77 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %121

78:                                               ; preds = %63
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* @SVN_PROP_ENTRY_COMMITTED_DATE, align 4
  %81 = call i64 @strcmp(i8* %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %85 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %90 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @svn_time_from_cstring(i32* %85, i32 %88, i32 %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %120

94:                                               ; preds = %78
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* @SVN_PROP_ENTRY_LAST_AUTHOR, align 4
  %97 = call i64 @strcmp(i8* %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %94
  %100 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %101 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @apr_pstrdup(i32 %102, i32 %105)
  %107 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %108 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %119

109:                                              ; preds = %94
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %112 = call i64 @strcmp(i8* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @TRUE, align 4
  %116 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %117 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %99
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %68
  br label %122

122:                                              ; preds = %121, %55
  br label %123

123:                                              ; preds = %122, %42
  br label %124

124:                                              ; preds = %123, %22
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %124, %15
  %127 = load i32*, i32** %5, align 8
  ret i32* %127
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @svn_string_dup(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @apr_pstrdup(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_time_from_cstring(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
