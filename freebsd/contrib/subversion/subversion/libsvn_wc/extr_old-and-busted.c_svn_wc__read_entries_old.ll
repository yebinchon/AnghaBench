; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_svn_wc__read_entries_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_svn_wc__read_entries_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i32 }

@SVN_WC__ADM_ENTRIES = common dso_local global i32 0, align 4
@SVN__STREAM_CHUNK_SIZE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid version line in entries file of '%s'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing entry terminator\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid entry terminator\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Error at entry %d in entries file for '%s':\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_wc__read_entries_old(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @apr_hash_make(i32* %19)
  %21 = load i32**, i32*** %6, align 8
  store i32* %20, i32** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @SVN_WC__ADM_ENTRIES, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_wc__open_adm_stream(i32** %13, i8* %22, i32 %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @svn_string_from_stream2(%struct.TYPE_14__** %14, i32* %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %4
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @svn_ctype_isdigit(i8 signext %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32**, i32*** %6, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @parse_entries_xml(i8* %53, i32* %55, i8* %58, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %155

66:                                               ; preds = %47, %4
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @read_val(i8** %17, i8** %10, i8* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i8*, i8** %17, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i8*, i8** %17, align 8
  %74 = call i64 @apr_strtoi64(i8* %73, i32* null, i32 0)
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %16, align 4
  br label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** %7, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @svn_dirent_local_style(i8* %79, i32* %80)
  %82 = call %struct.TYPE_15__* (i32, %struct.TYPE_15__*, i32, i32, ...) @svn_error_createf(i32 %77, %struct.TYPE_15__* null, i32 %78, i32 %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %5, align 8
  br label %161

83:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  br label %84

84:                                               ; preds = %142, %83
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ne i8* %85, %86
  br i1 %87, label %88, label %154

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = call %struct.TYPE_15__* @read_entry(%struct.TYPE_13__** %12, i8** %10, i8* %89, i32 %90, i32* %91)
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %18, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %94 = icmp ne %struct.TYPE_15__* %93, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %88
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @memchr(i8* %96, float 1.200000e+01, i32 %102)
  store i8* %103, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %108 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %109 = call %struct.TYPE_15__* @svn_error_create(i32 %107, i32* null, i32 %108)
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %18, align 8
  br label %110

110:                                              ; preds = %106, %95
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %112 = icmp ne %struct.TYPE_15__* %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %110
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp eq i8* %114, %115
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 10
  br i1 %122, label %123, label %127

123:                                              ; preds = %117, %113
  %124 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %125 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %126 = call %struct.TYPE_15__* @svn_error_create(i32 %124, i32* null, i32 %125)
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %18, align 8
  br label %127

127:                                              ; preds = %123, %117, %110
  br label %128

128:                                              ; preds = %127, %88
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %130 = icmp ne %struct.TYPE_15__* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %136 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* %15, align 4
  %138 = load i8*, i8** %7, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @svn_dirent_local_style(i8* %138, i32* %139)
  %141 = call %struct.TYPE_15__* (i32, %struct.TYPE_15__*, i32, i32, ...) @svn_error_createf(i32 %134, %struct.TYPE_15__* %135, i32 %136, i32 %137, i32 %140)
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %5, align 8
  br label %161

142:                                              ; preds = %128
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %10, align 8
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  %147 = load i32**, i32*** %6, align 8
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %153 = call i32 @svn_hash_sets(i32* %148, i32 %151, %struct.TYPE_13__* %152)
  br label %84

154:                                              ; preds = %84
  br label %155

155:                                              ; preds = %154, %52
  %156 = load i32**, i32*** %6, align 8
  %157 = load i32*, i32** %156, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @resolve_to_defaults(i32* %157, i32* %158)
  %160 = call %struct.TYPE_15__* @svn_error_trace(i32 %159)
  store %struct.TYPE_15__* %160, %struct.TYPE_15__** %5, align 8
  br label %161

161:                                              ; preds = %155, %131, %76
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %162
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__open_adm_stream(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_string_from_stream2(%struct.TYPE_14__**, i32*, i32, i32*) #1

declare dso_local i32 @svn_ctype_isdigit(i8 signext) #1

declare dso_local i32 @parse_entries_xml(i8*, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @read_val(i8**, i8**, i8*) #1

declare dso_local i64 @apr_strtoi64(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @svn_error_createf(i32, %struct.TYPE_15__*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_15__* @read_entry(%struct.TYPE_13__**, i8**, i8*, i32, i32*) #1

declare dso_local i8* @memchr(i8*, float, i32) #1

declare dso_local %struct.TYPE_15__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(i32) #1

declare dso_local i32 @resolve_to_defaults(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
