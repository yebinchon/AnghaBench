; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_svn_cl__append_conflict_info_xml.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_svn_cl__append_conflict_info_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@svn_xml_normal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"source-left\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"source-right\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"prev-base-file\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"prev-wc-file\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"cur-base-file\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"prop-file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__append_conflict_info_xml(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @svn_client_conflict_get_operation(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @svn_client_conflict_get_conflicted(i64* %9, %struct.TYPE_3__** %10, i64* %11, i32* %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @append_tree_conflict_info_xml(i32* %31, i32* %32, i32* %33)
  %35 = call i32* @svn_error_trace(i32 %34)
  store i32* %35, i32** %4, align 8
  br label %176

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @svn_client_conflict_get_repos_info(i8** %13, i32* null, i32* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* @apr_hash_make(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @svn_cl__operation_str_xml(i32 %45, i32* %46)
  %48 = call i32 @svn_hash_sets(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i8* @svn_cl__operation_str_xml(i32 %50, i32* %51)
  %53 = call i32 @svn_hash_sets(i32* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %117

56:                                               ; preds = %36
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @svn_hash_sets(i32* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @svn_xml_normal, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @svn_xml_make_open_tag_hash(i32** %5, i32* %59, i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %14, i32* %15, i32* %16, i32* %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %56
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @add_conflict_version_xml(i32** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %74, i8* %75, i32 %76, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %73, %70, %56
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %14, i32* %15, i32* %16, i32* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @add_conflict_version_xml(i32** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %93, i8* %94, i32 %95, i32 %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %92, %89, %81
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @svn_client_conflict_text_get_contents(i32* null, i8** %18, i8** %17, i8** %19, i32* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i8*, i8** %17, align 8
  %108 = call i32 @svn_cl__xml_tagged_cdata(i32** %5, i32* %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @svn_cl__xml_tagged_cdata(i32** %5, i32* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = call i32 @svn_cl__xml_tagged_cdata(i32** %5, i32* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %113)
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @svn_xml_make_close_tag(i32** %5, i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %100, %36
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %174

122:                                              ; preds = %117
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @svn_hash_sets(i32* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @svn_xml_normal, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @svn_xml_make_open_tag_hash(i32** %5, i32* %125, i32 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %14, i32* %15, i32* %16, i32* %129, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %122
  %137 = load i8*, i8** %14, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i8*, i8** %13, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = call i32 @add_conflict_version_xml(i32** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %140, i8* %141, i32 %142, i32 %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %139, %136, %122
  %148 = load i32*, i32** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %14, i32* %15, i32* %16, i32* %148, i32* %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = load i8*, i8** %13, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %147
  %156 = load i8*, i8** %14, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i8*, i8** %13, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @add_conflict_version_xml(i32** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %159, i8* %160, i32 %161, i32 %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  br label %166

166:                                              ; preds = %158, %155, %147
  %167 = load i32*, i32** %6, align 8
  %168 = call i8* @svn_client_conflict_prop_get_reject_abspath(i32* %167)
  store i8* %168, i8** %20, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load i8*, i8** %20, align 8
  %171 = call i32 @svn_cl__xml_tagged_cdata(i32** %5, i32* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @svn_xml_make_close_tag(i32** %5, i32* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %174

174:                                              ; preds = %166, %117
  %175 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %175, i32** %4, align 8
  br label %176

176:                                              ; preds = %174, %30
  %177 = load i32*, i32** %4, align 8
  ret i32* %177
}

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_conflicted(i64*, %struct.TYPE_3__**, i64*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @append_tree_conflict_info_xml(i32*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i8* @svn_cl__operation_str_xml(i32, i32*) #1

declare dso_local i32 @svn_xml_make_open_tag_hash(i32**, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @add_conflict_version_xml(i32**, i8*, i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_text_get_contents(i32*, i8**, i8**, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cl__xml_tagged_cdata(i32**, i32*, i8*, i8*) #1

declare dso_local i32 @svn_xml_make_close_tag(i32**, i32*, i8*) #1

declare dso_local i8* @svn_client_conflict_prop_get_reject_abspath(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
