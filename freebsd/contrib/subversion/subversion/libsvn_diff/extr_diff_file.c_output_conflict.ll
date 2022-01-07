; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_output_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_file.c_output_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@svn_diff_conflict_display_only_conflicts = common dso_local global i64 0, align 8
@svn_diff_conflict_display_resolved_modified_latest = common dso_local global i64 0, align 8
@svn_diff3__file_output_vtable = common dso_local global i32 0, align 4
@svn_diff_conflict_display_modified_latest = common dso_local global i64 0, align 8
@svn_diff_conflict_display_modified_original_latest = common dso_local global i64 0, align 8
@svn_diff_conflict_display_modified = common dso_local global i64 0, align 8
@svn_diff_conflict_display_latest = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32, i32, i32, i32, i32, i32*)* @output_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @output_conflict(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %18, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* %19, align 8
  %26 = load i64, i64* @svn_diff_conflict_display_only_conflicts, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32* @output_conflict_with_context(%struct.TYPE_4__* %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32* %36, i32** %9, align 8
  br label %156

37:                                               ; preds = %8
  %38 = load i64, i64* %19, align 8
  %39 = load i64, i64* @svn_diff_conflict_display_resolved_modified_latest, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %17, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %17, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @svn_diff_output2(i32* %45, i8* %46, i32* @svn_diff3__file_output_vtable, i32 %49, i32 %52)
  store i32* %53, i32** %9, align 8
  br label %156

54:                                               ; preds = %41
  %55 = load i64, i64* @svn_diff_conflict_display_modified_latest, align 8
  store i64 %55, i64* %19, align 8
  br label %56

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* @svn_diff_conflict_display_modified_latest, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* @svn_diff_conflict_display_modified_original_latest, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %61, %57
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @svn_stream_puts(i32 %68, i32 %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %75 = call i32 @output_marker_eol(%struct.TYPE_4__* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @output_hunk(i8* %77, i32 1, i32 %78, i32 %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* @svn_diff_conflict_display_modified_original_latest, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %65
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @svn_stream_puts(i32 %88, i32 %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %95 = call i32 @output_marker_eol(%struct.TYPE_4__* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @output_hunk(i8* %97, i32 0, i32 %98, i32 %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %85, %65
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @svn_stream_puts(i32 %105, i32 %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %112 = call i32 @output_marker_eol(%struct.TYPE_4__* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @output_hunk(i8* %114, i32 2, i32 %115, i32 %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @svn_stream_puts(i32 %121, i32 %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %128 = call i32 @output_marker_eol(%struct.TYPE_4__* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  br label %154

130:                                              ; preds = %61
  %131 = load i64, i64* %19, align 8
  %132 = load i64, i64* @svn_diff_conflict_display_modified, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @output_hunk(i8* %135, i32 1, i32 %136, i32 %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  br label %153

140:                                              ; preds = %130
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* @svn_diff_conflict_display_latest, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @output_hunk(i8* %145, i32 2, i32 %146, i32 %147)
  %149 = call i32 @SVN_ERR(i32 %148)
  br label %152

150:                                              ; preds = %140
  %151 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %152

152:                                              ; preds = %150, %144
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %102
  %155 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %155, i32** %9, align 8
  br label %156

156:                                              ; preds = %154, %44, %28
  %157 = load i32*, i32** %9, align 8
  ret i32* %157
}

declare dso_local i32* @output_conflict_with_context(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @svn_diff_output2(i32*, i8*, i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_puts(i32, i32) #1

declare dso_local i32 @output_marker_eol(%struct.TYPE_4__*) #1

declare dso_local i32 @output_hunk(i8*, i32, i32, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
