; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32, i32* }
%struct.TYPE_12__ = type { i32*, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, %struct.TYPE_13__, i64, %struct.TYPE_16__*, i32, %struct.TYPE_16__*, i8*, %struct.TYPE_14__*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@svn_ra_serf__expect_empty_body = common dso_local global i8* null, align 8
@setup_delete_headers = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@create_delete_body = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = call i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_12__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @svn_path_url_add_component2(i32 %26, i8* %27, i32* %30)
  store i8* %31, i8** %13, align 8
  br label %44

32:                                               ; preds = %4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @checkout_dir(%struct.TYPE_15__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i8* @svn_relpath_basename(i8* %40, i32* null)
  %42 = load i32*, i32** %9, align 8
  %43 = call i8* @svn_path_url_add_component2(i32 %39, i8* %41, i32* %42)
  store i8* %43, i8** %13, align 8
  br label %44

44:                                               ; preds = %32, %21
  %45 = load i32*, i32** %9, align 8
  %46 = call %struct.TYPE_16__* @apr_pcalloc(i32* %45, i32 24)
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %11, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @apr_pstrdup(i32* %47, i8* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = call %struct.TYPE_14__* @svn_ra_serf__create_handler(i32 %64, i32* %65)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %12, align 8
  %67 = load i8*, i8** @svn_ra_serf__expect_empty_body, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 9
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %72, align 8
  %73 = load i8*, i8** @setup_delete_headers, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 7
  store %struct.TYPE_16__* %76, %struct.TYPE_16__** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %80, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @TRUE, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 11
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_14__* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 400
  br i1 %95, label %96, label %136

96:                                               ; preds = %44
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = call %struct.TYPE_14__* @svn_ra_serf__create_handler(i32 %104, i32* %105)
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %12, align 8
  %107 = load i8*, i8** @svn_ra_serf__expect_empty_body, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 10
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 9
  store %struct.TYPE_14__* %110, %struct.TYPE_14__** %112, align 8
  %113 = load i8*, i8** @setup_delete_headers, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 8
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 7
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %120, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %125, align 8
  %126 = load i32, i32* @create_delete_body, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 5
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_14__* %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %96, %44
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32* @svn_ra_serf__server_error_create(%struct.TYPE_14__* %142, i32* %143)
  store i32* %144, i32** %5, align 8
  br label %170

145:                                              ; preds = %136
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 204
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_14__* %152)
  %154 = call i32* @svn_error_trace(i32 %153)
  store i32* %154, i32** %5, align 8
  br label %170

155:                                              ; preds = %145
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = call i32 @apr_pstrdup(i32* %165, i8* %166)
  %168 = call i32 @svn_hash_sets(i32 %160, i32 %167, i8* inttoptr (i64 1 to i8*))
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %5, align 8
  br label %170

170:                                              ; preds = %155, %151, %141
  %171 = load i32*, i32** %5, align 8
  ret i32* %171
}

declare dso_local i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_12__*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @checkout_dir(%struct.TYPE_15__*, i32*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_14__* @svn_ra_serf__create_handler(i32, i32*) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_ra_serf__server_error_create(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
