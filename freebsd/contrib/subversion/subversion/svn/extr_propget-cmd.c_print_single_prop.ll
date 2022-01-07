; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propget-cmd.c_print_single_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_propget-cmd.c_print_single_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Inherited properties on '%s',\0Afrom '%s':\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s - \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Properties on '%s':\0A\00", align 1
@APR_EOL_STR = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i8*, i8*, i8*, i32*, i8*, i64, i64, i64, i64, i32*)* @print_single_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_single_prop(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i64 %6, i64 %7, i64 %8, i64 %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32* %4, i32** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i32* %10, i32** %22, align 8
  %25 = load i64, i64* %18, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %91

27:                                               ; preds = %11
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @svn_path_is_url(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %15, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %22, align 8
  %35 = call i8* @svn_cl__local_style_skip_ancestor(i8* %32, i8* %33, i32* %34)
  store i8* %35, i8** %14, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i64, i64* %21, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = load i64, i64* %20, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @svn_path_is_url(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %15, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = call i8* @svn_cl__local_style_skip_ancestor(i8* %47, i8* %48, i32* %49)
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32*, i32** %22, align 8
  %53 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %52, i8* %53, i8* %54, i8* %55)
  store i8* %56, i8** %23, align 8
  br label %61

57:                                               ; preds = %39
  %58 = load i32*, i32** %22, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  store i8* %60, i8** %23, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %73

62:                                               ; preds = %36
  %63 = load i32*, i32** %22, align 8
  %64 = load i64, i64* %20, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %68 ]
  %71 = load i8*, i8** %14, align 8
  %72 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %63, i8* %70, i8* %71)
  store i8* %72, i8** %23, align 8
  br label %73

73:                                               ; preds = %69, %61
  %74 = load i8*, i8** %23, align 8
  %75 = load i32*, i32** %22, align 8
  %76 = call i32 @svn_cmdline_cstring_from_utf8(i8** %23, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i8*, i8** %23, align 8
  %79 = load i8*, i8** @APR_EOL_STR, align 8
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %22, align 8
  %83 = call i32 @svn_subst_translate_cstring2(i8* %78, i8** %23, i8* %79, i32 %80, i32* null, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %16, align 8
  %86 = load i8*, i8** %23, align 8
  %87 = load i8*, i8** %23, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = call i32 @stream_write(i32* %85, i8* %86, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %91

91:                                               ; preds = %73, %11
  %92 = load i64, i64* %20, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i32*, i32** %22, align 8
  %96 = call i32* @apr_hash_make(i32* %95)
  store i32* %96, i32** %24, align 8
  %97 = load i32*, i32** %24, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = call i32 @svn_hash_sets(i32* %97, i8* %98, %struct.TYPE_6__* %99)
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %24, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = call i32 @svn_cmdline__print_prop_hash(i32* %101, i32* %102, i32 %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %137

107:                                              ; preds = %91
  %108 = load i8*, i8** %17, align 8
  %109 = call i64 @svn_prop_needs_translation(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @svn_subst_detranslate_string(%struct.TYPE_6__** %12, %struct.TYPE_6__* %112, i32 %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i32*, i32** %16, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @stream_write(i32* %118, i8* %121, i32 %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i64, i64* %19, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %117
  %130 = load i32*, i32** %16, align 8
  %131 = load i8*, i8** @APR_EOL_STR, align 8
  %132 = load i8*, i8** @APR_EOL_STR, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = call i32 @stream_write(i32* %130, i8* %131, i32 %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %129, %117
  br label %137

137:                                              ; preds = %136, %94
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %138
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_cl__local_style_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_subst_translate_cstring2(i8*, i8**, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @stream_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @svn_cmdline__print_prop_hash(i32*, i32*, i32, i32*) #1

declare dso_local i64 @svn_prop_needs_translation(i8*) #1

declare dso_local i32 @svn_subst_detranslate_string(%struct.TYPE_6__**, %struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
