; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_import_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_import.c_import_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 (i32, %struct.TYPE_14__*, i32*)* }
%struct.TYPE_14__ = type { i8*, i32, i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_commit_added = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@SVN_PROP_SPECIAL = common dso_local global i8* null, align 8
@SVN_PROP_BOOLEAN_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i8*, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*)* @import_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @import_file(%struct.TYPE_16__* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_15__* %4, %struct.TYPE_18__* %5, %struct.TYPE_17__* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %15, align 8
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %18, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @svn_path_check_valid(i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i32 (i8*, i8*, i32*, i32, i32*, i8**)*, i32 (i8*, i8*, i32*, i32, i32*, i8**)** %31, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 %32(i8* %33, i8* %34, i32* null, i32 %35, i32* %36, i8** %17)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32, i32* @TRUE, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @svn_client__get_paths_auto_props(i32** %21, i8** %18, i8* %47, i32 %50, i32 %53, %struct.TYPE_17__* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %62

59:                                               ; preds = %8
  %60 = load i32*, i32** %16, align 8
  %61 = call i32* @apr_hash_make(i32* %60)
  store i32* %61, i32** %21, align 8
  br label %62

62:                                               ; preds = %59, %46
  %63 = load i32*, i32** %21, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = call i32* @apr_hash_first(i32* %66, i32* %67)
  store i32* %68, i32** %22, align 8
  br label %69

69:                                               ; preds = %86, %65
  %70 = load i32*, i32** %22, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load i32*, i32** %22, align 8
  %74 = call i8* @apr_hash_this_key(i32* %73)
  store i8* %74, i8** %23, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = call i32* @apr_hash_this_val(i32* %75)
  store i32* %76, i32** %24, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %78, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = load i8*, i8** %23, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = call i32 %79(i8* %80, i8* %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %72
  %87 = load i32*, i32** %22, align 8
  %88 = call i32* @apr_hash_next(i32* %87)
  store i32* %88, i32** %22, align 8
  br label %69

89:                                               ; preds = %69
  br label %90

90:                                               ; preds = %89, %62
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %92, align 8
  %94 = icmp ne i32 (i32, %struct.TYPE_14__*, i32*)* %93, null
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @svn_wc_notify_commit_added, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = call %struct.TYPE_14__* @svn_wc_create_notify(i8* %96, i32 %97, i32* %98)
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %25, align 8
  %100 = load i32, i32* @svn_node_file, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load i8*, i8** %18, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  store i32 %106, i32* %110, align 8
  %111 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32 (i32, %struct.TYPE_14__*, i32*)*, i32 (i32, %struct.TYPE_14__*, i32*)** %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 %116(i32 %119, %struct.TYPE_14__* %120, i32* %121)
  br label %123

123:                                              ; preds = %95, %90
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %123
  %129 = load i32*, i32** %21, align 8
  %130 = load i8*, i8** @SVN_PROP_SPECIAL, align 8
  %131 = load i32, i32* @SVN_PROP_BOOLEAN_TRUE, align 4
  %132 = load i32*, i32** %16, align 8
  %133 = call i32 @svn_string_create(i32 %131, i32* %132)
  %134 = call i32 @svn_hash_sets(i32* %129, i8* %130, i32 %133)
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32 (i8*, i8*, i32*, i32*)*, i32 (i8*, i8*, i32*, i32*)** %136, align 8
  %138 = load i8*, i8** %17, align 8
  %139 = load i8*, i8** @SVN_PROP_SPECIAL, align 8
  %140 = load i32*, i32** %21, align 8
  %141 = load i8*, i8** @SVN_PROP_SPECIAL, align 8
  %142 = call i32* @svn_hash_gets(i32* %140, i8* %141)
  %143 = load i32*, i32** %16, align 8
  %144 = call i32 %137(i8* %138, i8* %139, i32* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %146

146:                                              ; preds = %128, %123
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @send_file_contents(i32** %19, i8* %147, i8* %148, %struct.TYPE_16__* %149, i32* %150, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i32*, i32** %19, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = call i8* @svn_checksum_to_cstring(i32* %154, i32* %155)
  store i8* %156, i8** %20, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %158, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = load i32*, i32** %16, align 8
  %163 = call i32 %159(i8* %160, i8* %161, i32* %162)
  %164 = call i32* @svn_error_trace(i32 %163)
  ret i32* %164
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_check_valid(i8*, i32*) #1

declare dso_local i32 @svn_client__get_paths_auto_props(i32**, i8**, i8*, i32, i32, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32) #1

declare dso_local i32 @svn_string_create(i32, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @send_file_contents(i32**, i8*, i8*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
