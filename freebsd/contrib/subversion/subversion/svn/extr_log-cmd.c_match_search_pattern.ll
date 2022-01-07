; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_log-cmd.c_match_search_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_log-cmd.c_match_search_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"*%s*\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32*, i32*, i32*)* @match_search_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_search_pattern(i8* %0, i8* %1, i8* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i8* @apr_psprintf(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %7
  %26 = load i8*, i8** %16, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i64 @match(i8* %26, i8* %27, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %8, align 4
  br label %105

33:                                               ; preds = %25, %7
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i8*, i8** %16, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i64 @match(i8* %37, i8* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %8, align 4
  br label %105

44:                                               ; preds = %36, %33
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i64 @match(i8* %48, i8* %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %8, align 4
  br label %105

55:                                               ; preds = %47, %44
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32* @apr_hash_first(i32* %59, i32* %60)
  store i32* %61, i32** %17, align 8
  br label %62

62:                                               ; preds = %99, %58
  %63 = load i32*, i32** %17, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %102

65:                                               ; preds = %62
  %66 = load i32*, i32** %17, align 8
  %67 = call i8* @apr_hash_this_key(i32* %66)
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i64 @match(i8* %68, i8* %69, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %8, align 4
  br label %105

75:                                               ; preds = %65
  %76 = load i32*, i32** %17, align 8
  %77 = call %struct.TYPE_3__* @apr_hash_this_val(i32* %76)
  store %struct.TYPE_3__* %77, %struct.TYPE_3__** %19, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @SVN_IS_VALID_REVNUM(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %82
  %89 = load i8*, i8** %16, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i64 @match(i8* %89, i8* %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %8, align 4
  br label %105

98:                                               ; preds = %88, %82, %75
  br label %99

99:                                               ; preds = %98
  %100 = load i32*, i32** %17, align 8
  %101 = call i32* @apr_hash_next(i32* %100)
  store i32* %101, i32** %17, align 8
  br label %62

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102, %55
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %96, %73, %53, %42, %31
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*) #1

declare dso_local i64 @match(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_3__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
