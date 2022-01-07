; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_internal_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_internal_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.svn_wc__db_info_t = type { i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32**, i32*, i8*, i64, i32*, i32*)* @internal_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @internal_status(i32** %0, i32* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.svn_wc__db_info_t*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i8*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %19, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = call %struct.TYPE_9__* @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t** %18, i32* %26, i8* %27, i32 %31, i32* %32, i32* %33)
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %20, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %6
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %45 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %7, align 8
  br label %173

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %48 = call i32 @svn_error_clear(%struct.TYPE_9__* %47)
  store %struct.svn_wc__db_info_t* null, %struct.svn_wc__db_info_t** %18, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* @FALSE, align 8
  %54 = load i64, i64* @TRUE, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @svn_io_stat_dirent2(i32** %14, i8* %52, i64 %53, i64 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  br label %71

60:                                               ; preds = %6
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @stat_wc_dirent_case_sensitive(i32** %14, i32* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %73 = icmp ne %struct.svn_wc__db_info_t* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %76 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @svn_node_unknown, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %98, label %80

80:                                               ; preds = %74
  %81 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %82 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %88 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %94 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %92, %86, %80, %74, %71
  %99 = load i32**, i32*** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %104 = icmp ne %struct.svn_wc__db_info_t* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %107 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  br label %111

109:                                              ; preds = %98
  %110 = load i64, i64* @FALSE, align 8
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi i64 [ %108, %105 ], [ %110, %109 ]
  %113 = load i64, i64* @FALSE, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call %struct.TYPE_9__* @assemble_unversioned(i32** %99, i32* %100, i8* %101, i32* %102, i64 %112, i64 %113, i32* %114, i32* %115)
  %117 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %116)
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %7, align 8
  br label %173

118:                                              ; preds = %92
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = call i64 @svn_dirent_is_root(i8* %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %19, align 8
  br label %132

126:                                              ; preds = %118
  %127 = load i32*, i32** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @svn_wc__db_is_wcroot(i64* %19, i32* %127, i8* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  br label %132

132:                                              ; preds = %126, %124
  %133 = load i64, i64* %19, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %132
  %136 = load i8*, i8** %10, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i8* @svn_dirent_dirname(i8* %136, i32* %137)
  store i8* %138, i8** %21, align 8
  %139 = load i64, i64* %11, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load i32*, i32** %9, align 8
  %143 = load i8*, i8** %21, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @svn_wc__db_read_info(i32* null, i32* null, i32* null, i8** %15, i8** %16, i8** %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %142, i8* %143, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  br label %155

148:                                              ; preds = %135
  %149 = load i32*, i32** %9, align 8
  %150 = load i8*, i8** %21, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i8** %15, i8** %16, i8** %17, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %149, i8* %150, i32* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %155

155:                                              ; preds = %148, %141
  br label %157

156:                                              ; preds = %132
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %17, align 8
  br label %157

157:                                              ; preds = %156, %155
  %158 = load i32**, i32*** %8, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = load i8*, i8** %17, align 8
  %164 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = load i64, i64* @FALSE, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32*, i32** %12, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = call %struct.TYPE_9__* @assemble_status(i32** %158, i32* %159, i8* %160, i8* %161, i8* %162, i8* %163, %struct.svn_wc__db_info_t* %164, i32* %165, i64 %166, i64 %167, i64 %168, i32* null, i32* %169, i32* %170)
  %172 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %171)
  store %struct.TYPE_9__* %172, %struct.TYPE_9__** %7, align 8
  br label %173

173:                                              ; preds = %157, %111, %43
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %174
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_9__* @svn_wc__db_read_single_info(%struct.svn_wc__db_info_t**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_stat_dirent2(i32**, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32 @stat_wc_dirent_case_sensitive(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @assemble_unversioned(i32**, i32*, i8*, i32*, i64, i64, i32*, i32*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @assemble_status(i32**, i32*, i8*, i8*, i8*, i8*, %struct.svn_wc__db_info_t*, i32*, i64, i64, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
