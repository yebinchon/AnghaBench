; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_convert_organisation_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_util.c_convert_organisation_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @convert_organisation_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_organisation_to_str(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @svn_hash_gets(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @svn_hash_gets(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @svn_hash_gets(i32* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @svn_hash_gets(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %20, i8** %8, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @svn_hash_gets(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %22, i8** %9, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @svn_hash_gets(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @svn_hash_gets(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %26, i8** %11, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_5__* @svn_stringbuf_create_empty(i32* %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %12, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %32, i8* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %37

37:                                               ; preds = %31, %2
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %41, i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %50, i8* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %59, i8* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %68, i8* %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %72 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %77, i8* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = call i32 @svn_stringbuf_chop(%struct.TYPE_5__* %83, i32 2)
  %85 = load i8*, i8** %11, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %90, i8* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  ret i8* %98
}

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_5__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @svn_stringbuf_chop(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
