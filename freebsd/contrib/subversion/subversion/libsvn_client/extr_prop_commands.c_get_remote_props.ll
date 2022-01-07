; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_get_remote_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_prop_commands.c_get_remote_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, i32, i32, i8*, %struct.TYPE_15__*, i32*)* @get_remote_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_remote_props(i8* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, %struct.TYPE_15__* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_14__, align 8
  %25 = alloca %struct.TYPE_14__, align 8
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store %struct.TYPE_15__* %8, %struct.TYPE_15__** %20, align 8
  store i32* %9, i32** %21, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %10
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %126

44:                                               ; preds = %38, %10
  %45 = load i8*, i8** %12, align 8
  %46 = call i64 @svn_path_is_url(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED, align 4
  %50 = call i32* @svn_error_create(i32 %49, i32* null, i32* null)
  store i32* %50, i32** %11, align 8
  br label %164

51:                                               ; preds = %44
  %52 = load i8*, i8** %12, align 8
  %53 = load i32*, i32** %21, align 8
  %54 = call i32 @svn_dirent_get_absolute(i8** %29, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %125

61:                                               ; preds = %51
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %29, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32*, i32** %21, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = call i32 @svn_wc__node_get_origin(i32* %30, i32* null, i8** %27, i8** %28, i32* null, i32* null, i32* null, i32 %64, i8* %65, i32 %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i8*, i8** %27, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %118

73:                                               ; preds = %61
  %74 = load i8*, i8** %28, align 8
  %75 = load i8*, i8** %27, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = call i8* @svn_path_url_add_component2(i8* %74, i8* %75, i32* %76)
  store i8* %77, i8** %12, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %73
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %29, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %89 = load i32*, i32** %21, align 8
  %90 = call i32 @svn_client__get_revision_number(i8** %31, i32* null, i32 %86, i8* %87, i32* null, %struct.TYPE_14__* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i8*, i8** @svn_opt_revision_number, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %31, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %13, align 8
  br label %97

97:                                               ; preds = %83, %73
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %29, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @svn_client__get_revision_number(i8** %32, i32* null, i32 %106, i8* %107, i32* null, %struct.TYPE_14__* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i8*, i8** @svn_opt_revision_number, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store i8* %112, i8** %113, align 8
  %114 = load i8*, i8** %32, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %14, align 8
  br label %117

117:                                              ; preds = %103, %97
  br label %124

118:                                              ; preds = %61
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %122, i32** %11, align 8
  br label %164

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %117
  br label %125

125:                                              ; preds = %124, %51
  br label %126

126:                                              ; preds = %125, %38
  %127 = load i8*, i8** %12, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %131 = load i32*, i32** %21, align 8
  %132 = call i32 @svn_client__ra_session_from_path2(i32** %22, %struct.TYPE_16__** %26, i8* %127, i32* null, %struct.TYPE_14__* %128, %struct.TYPE_14__* %129, %struct.TYPE_15__* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  %134 = load i32*, i32** %22, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %21, align 8
  %139 = call i32 @svn_ra_check_path(i32* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %137, i32* %23, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i8*, i8** %19, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %21, align 8
  %161 = call i32 @remote_proplist(i32 %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147, i32* %148, i32 %149, i32 %150, i32 %151, i32 %152, i8* %153, i32 %156, i32 %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %163, i32** %11, align 8
  br label %164

164:                                              ; preds = %126, %121, %48
  %165 = load i32*, i32** %11, align 8
  ret i32* %165
}

declare dso_local i64 @SVN_CLIENT__REVKIND_NEEDS_WC(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__get_revision_number(i8**, i32*, i32, i8*, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_16__**, i8*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @remote_proplist(i32, i8*, i32, i32, i32*, i32, i32, i32, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
