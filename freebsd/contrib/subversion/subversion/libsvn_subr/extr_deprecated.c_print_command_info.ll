; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_print_command_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_print_command_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8**, i8*, i64* }
%struct.TYPE_9__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_OPT_MAX_ALIASES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@SVN_OPT_MAX_OPTIONS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"\0AValid options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, %struct.TYPE_9__*, i64, i32*, i32*)* @print_command_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @print_command_info(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_cmdline_fputs(i8* %18, i32* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %24

24:                                               ; preds = %62, %5
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @SVN_OPT_MAX_ALIASES, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i64, i64* %12, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %65

37:                                               ; preds = %28
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %11, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load i32*, i32** %10, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @svn_cmdline_fputs(i8* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %12, align 8
  br label %24

65:                                               ; preds = %36, %24
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %149

76:                                               ; preds = %73
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @_(i8* %82)
  %84 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %78, i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %137, %76
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @SVN_OPT_MAX_OPTIONS, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %140

90:                                               ; preds = %86
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %136

98:                                               ; preds = %90
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @svn_cmdline_fputs(i8* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i64, i64* @TRUE, align 8
  store i64 %107, i64* %14, align 8
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = call %struct.TYPE_9__* @svn_opt_get_option_from_code2(i64 %114, %struct.TYPE_9__* %115, i32* null, i32* %116)
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %13, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %108
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %127 = load i64, i64* @TRUE, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = call i32 @svn_opt_format_option(i8** %15, %struct.TYPE_9__* %126, i64 %127, i32* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %130, i32* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  br label %135

135:                                              ; preds = %125, %120, %108
  br label %136

136:                                              ; preds = %135, %90
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %12, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %12, align 8
  br label %86

140:                                              ; preds = %86
  %141 = load i64, i64* %14, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32*, i32** %10, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 (i32*, i32*, i8*, ...) @svn_cmdline_fprintf(i32* %144, i32* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %147 = call i32 @SVN_ERR(i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %148, %73
  %150 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_fputs(i8*, i32*, i32*) #1

declare dso_local i32 @svn_cmdline_fprintf(i32*, i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local %struct.TYPE_9__* @svn_opt_get_option_from_code2(i64, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @svn_opt_format_option(i8**, %struct.TYPE_9__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
