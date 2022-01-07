; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_init_client_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_svnrdump.c_init_client_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"svnrdump: \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"--config-option\00", align 1
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_CATEGORY_SERVERS = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GLOBAL = common dso_local global i8* null, align 8
@SVN_CONFIG_OPTION_HTTP_BULK_UPDATES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_GROUPS = common dso_local global i32 0, align 4
@check_cancel = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*)* @init_client_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init_client_context(%struct.TYPE_6__** %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_6__**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_6__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_7__, align 4
  %34 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %15, align 8
  store i32 %1, i32* %16, align 4
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %29, align 8
  %35 = load i32*, i32** %28, align 8
  %36 = call i32 @svn_ra_initialize(i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i8*, i8** %19, align 8
  %39 = load i32*, i32** %28, align 8
  %40 = call i32 @svn_config_ensure(i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %28, align 8
  %43 = call i32 @svn_client_create_context2(%struct.TYPE_6__** %29, i32* null, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i8*, i8** %19, align 8
  %48 = load i32*, i32** %28, align 8
  %49 = call i32 @svn_config_get_config(i32* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %27, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %14
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %27, align 8
  %58 = call i32 @svn_cmdline__apply_config_options(i32 %56, i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %53, %14
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %65 = call i32* @svn_hash_gets(i32 %63, i32 %64)
  store i32* %65, i32** %30, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SVN_CONFIG_CATEGORY_SERVERS, align 4
  %70 = call i32* @svn_hash_gets(i32 %68, i32 %69)
  store i32* %70, i32** %31, align 8
  %71 = load i32*, i32** %31, align 8
  %72 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %73 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, align 4
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @svn_config_set_bool(i32* %71, i8* %72, i32 %73, i32 %74)
  %76 = load i32*, i32** %31, align 8
  %77 = load i8*, i8** @SVN_CONFIG_SECTION_GLOBAL, align 8
  %78 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, align 4
  %79 = call i32 @svn_config_set_int64(i32* %76, i8* %77, i32 %78, i32 2)
  %80 = load i32*, i32** %31, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %109

82:                                               ; preds = %60
  %83 = load i32*, i32** %28, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = call i32 @apr_uri_parse(i32* %83, i8* %84, %struct.TYPE_7__* %33)
  store i32 %85, i32* %32, align 4
  %86 = load i32, i32* %32, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %82
  %89 = load i32*, i32** %31, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SVN_CONFIG_SECTION_GROUPS, align 4
  %93 = load i32*, i32** %28, align 8
  %94 = call i8* @svn_config_find_group(i32* %89, i32 %91, i32 %92, i32* %93)
  store i8* %94, i8** %34, align 8
  %95 = load i8*, i8** %34, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i32*, i32** %31, align 8
  %99 = load i8*, i8** %34, align 8
  %100 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_BULK_UPDATES, align 4
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @svn_config_set_bool(i32* %98, i8* %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %31, align 8
  %104 = load i8*, i8** %34, align 8
  %105 = load i32, i32* @SVN_CONFIG_OPTION_HTTP_MAX_CONNECTIONS, align 4
  %106 = call i32 @svn_config_set_int64(i32* %103, i8* %104, i32 %105, i32 2)
  br label %107

107:                                              ; preds = %97, %88
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %60
  %110 = load i32, i32* @check_cancel, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %16, align 4
  %116 = load i8*, i8** %17, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i32*, i32** %30, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %28, align 8
  %133 = call i32 @svn_cmdline_create_auth_baton2(i32* %114, i32 %115, i8* %116, i8* %117, i8* %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32* %125, i32 %128, i32 %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %136 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  store %struct.TYPE_6__* %135, %struct.TYPE_6__** %136, align 8
  %137 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %137
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_initialize(i32*) #1

declare dso_local i32 @svn_config_ensure(i8*, i32*) #1

declare dso_local i32 @svn_client_create_context2(%struct.TYPE_6__**, i32*, i32*) #1

declare dso_local i32 @svn_config_get_config(i32*, i8*, i32*) #1

declare dso_local i32 @svn_cmdline__apply_config_options(i32, i32*, i8*, i8*) #1

declare dso_local i32* @svn_hash_gets(i32, i32) #1

declare dso_local i32 @svn_config_set_bool(i32*, i8*, i32, i32) #1

declare dso_local i32 @svn_config_set_int64(i32*, i8*, i32, i32) #1

declare dso_local i32 @apr_uri_parse(i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i8* @svn_config_find_group(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_cmdline_create_auth_baton2(i32*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
