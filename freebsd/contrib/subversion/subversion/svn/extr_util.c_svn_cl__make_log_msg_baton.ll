; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__make_log_msg_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_util.c_svn_cl__make_log_msg_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.log_msg_baton = type { i8*, i32*, i32, i32, i32*, i32*, i32*, i32, i32 }

@SVN_ERR_CL_BAD_LOG_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Log message contains a zero byte\00", align 1
@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_LOG_ENCODING = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__make_log_msg_baton(i8** %0, %struct.TYPE_5__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.log_msg_baton*, align 8
  %13 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = call %struct.log_msg_baton* @apr_pcalloc(i32* %14, i32 56)
  store %struct.log_msg_baton* %15, %struct.log_msg_baton** %12, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %5
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strlen(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %26, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32, i32* @SVN_ERR_CL_BAD_LOG_MESSAGE, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = call i32* @svn_error_create(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %6, align 8
  br label %110

37:                                               ; preds = %20
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %44 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  br label %51

45:                                               ; preds = %5
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %50 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %56 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %66 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  br label %84

67:                                               ; preds = %51
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %73 = call i32* @svn_hash_gets(i32* %71, i32 %72)
  store i32* %73, i32** %13, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %76 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %75, i32 0, i32 6
  %77 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %78 = load i32, i32* @SVN_CONFIG_OPTION_LOG_ENCODING, align 4
  %79 = call i32 @svn_config_get(i32* %74, i32** %76, i32 %77, i32 %78, i32* null)
  br label %83

80:                                               ; preds = %67
  %81 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %82 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %70
  br label %84

84:                                               ; preds = %83, %61
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %87 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %89 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %88, i32 0, i32 5
  store i32* null, i32** %89, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %92 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %91, i32 0, i32 4
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %97 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %102 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %105 = getelementptr inbounds %struct.log_msg_baton, %struct.log_msg_baton* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load %struct.log_msg_baton*, %struct.log_msg_baton** %12, align 8
  %107 = bitcast %struct.log_msg_baton* %106 to i8*
  %108 = load i8**, i8*** %7, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %109, i32** %6, align 8
  br label %110

110:                                              ; preds = %84, %33
  %111 = load i32*, i32** %6, align 8
  ret i32* %111
}

declare dso_local %struct.log_msg_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_config_get(i32*, i32**, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
