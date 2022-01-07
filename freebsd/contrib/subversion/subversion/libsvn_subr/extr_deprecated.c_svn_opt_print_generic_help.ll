; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_opt_print_generic_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_opt_print_generic_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"   \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"svn: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_opt_print_generic_help(i8* %0, %struct.TYPE_4__* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32* @svn_cmdline_fputs(i8* %18, i32* %19, i32* %20)
  store i32* %21, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %77

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %6
  br label %26

26:                                               ; preds = %56, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @svn_cmdline_fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %35, i32* %36)
  store i32* %37, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32* @print_command_info(%struct.TYPE_4__* %43, i32* %44, i32 %45, i32* %46, i32* %47)
  store i32* %48, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %51, i32* %52)
  store i32* %53, i32** %14, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %39, %34
  br label %77

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32* @svn_cmdline_fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %60, i32* %61)
  store i32* %62, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %77

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i8*, i8** %10, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32* @svn_cmdline_fputs(i8* %69, i32* %70, i32* %71)
  store i32* %72, i32** %14, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %77

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %65
  br label %84

77:                                               ; preds = %74, %64, %55, %23
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @svn_handle_error2(i32* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @svn_error_clear(i32* %82)
  br label %84

84:                                               ; preds = %77, %76
  ret void
}

declare dso_local i32* @svn_cmdline_fputs(i8*, i32*, i32*) #1

declare dso_local i32* @print_command_info(%struct.TYPE_4__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_handle_error2(i32*, i32, i32, i8*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
