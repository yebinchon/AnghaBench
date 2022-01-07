; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_config.c_svn_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_config_get(%struct.TYPE_7__* %0, i8** %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32* @find_option(%struct.TYPE_7__* %20, i8* %21, i8* %22, i32** %11)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i8**, i8*** %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @make_string_from_option(i8** %27, %struct.TYPE_7__* %28, i32* %29, i32* %30, i32* null)
  br label %72

32:                                               ; preds = %19
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @strchr(i8* %36, i8 signext 37)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @svn_pool_create(i32 %42)
  store i32* %43, i32** %13, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @expand_option_value(%struct.TYPE_7__* %44, i32* %45, i8* %46, i8** %14, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  %51 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  br label %68

52:                                               ; preds = %39
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @svn_stringbuf_set(%struct.TYPE_8__* %58, i8* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  br label %67

67:                                               ; preds = %55, %52
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @svn_pool_destroy(i32* %69)
  br label %71

71:                                               ; preds = %68, %35, %32
  br label %72

72:                                               ; preds = %71, %26
  br label %73

73:                                               ; preds = %72, %5
  ret void
}

declare dso_local i32* @find_option(%struct.TYPE_7__*, i8*, i8*, i32**) #1

declare dso_local i32 @make_string_from_option(i8**, %struct.TYPE_7__*, i32*, i32*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @expand_option_value(%struct.TYPE_7__*, i32*, i8*, i8**, i32*) #1

declare dso_local i32 @svn_stringbuf_set(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
