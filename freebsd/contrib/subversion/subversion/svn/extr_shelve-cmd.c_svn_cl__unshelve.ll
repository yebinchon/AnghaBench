; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_svn_cl__unshelve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_shelve-cmd.c_svn_cl__unshelve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unshelving the youngest change, '%s'\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"unshelved '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__unshelve(%struct.TYPE_17__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @svn_dirent_get_absolute(i8** %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %38 = call i32* @svn_error_create(i32 %37, i32 0, i32* null)
  store i32* %38, i32** %4, align 8
  br label %127

39:                                               ; preds = %28
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @shelves_list(i8* %40, i32 %46, %struct.TYPE_14__* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %4, align 8
  br label %127

52:                                               ; preds = %3
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @get_name(i8** %11, %struct.TYPE_17__* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %78

66:                                               ; preds = %52
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @name_of_youngest(i8** %11, i8* %67, %struct.TYPE_14__* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @svn_cmdline_printf(i32* %73, i8* %74, i8* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %66, %60
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = load i32, i32* @FALSE, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_18__** %12, %struct.TYPE_17__* %79, i32 %82, %struct.TYPE_14__* %83, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %78
  %93 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %94 = call i32* @svn_error_create(i32 %93, i32 0, i32* null)
  store i32* %94, i32** %4, align 8
  br label %127

95:                                               ; preds = %78
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @svn_client_unshelve(i8* %104, i8* %105, i32 %108, i32 %111, %struct.TYPE_14__* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %103
  %121 = load i32*, i32** %7, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @svn_cmdline_printf(i32* %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %122)
  %124 = call i32 @SVN_ERR(i32 %123)
  br label %125

125:                                              ; preds = %120, %103
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %4, align 8
  br label %127

127:                                              ; preds = %125, %92, %39, %36
  %128 = load i32*, i32** %4, align 8
  ret i32* %128
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32, i32*) #1

declare dso_local i32 @shelves_list(i8*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @get_name(i8**, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @name_of_youngest(i8**, i8*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_cl__args_to_target_array_print_reserved(%struct.TYPE_18__**, %struct.TYPE_17__*, i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @svn_client_unshelve(i8*, i8*, i32, i32, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
