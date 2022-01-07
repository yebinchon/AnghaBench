; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_parse_element_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_parse_element_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"e%d: %9s %d%n\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"subbranch\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8**, i32*, i32*, i32*)* @parse_element_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_element_line(i32* %0, i32* %1, i32* %2, i8** %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [10 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i32 @svn_stream_readline(i32* %20, %struct.TYPE_3__** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @sscanf(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %32, i8* %33, i32* %34, i32* %19)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp sge i32 %36, 3
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i8* @apr_pstrdup(i32* %51, i8* %58)
  %60 = load i8**, i8*** %11, align 8
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 0
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i8**, i8*** %11, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %7
  %71 = load i8**, i8*** %11, align 8
  store i8* null, i8** %71, align 8
  br label %80

72:                                               ; preds = %7
  %73 = load i8**, i8*** %11, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %78, align 8
  br label %79

79:                                               ; preds = %77, %72
  br label %80

80:                                               ; preds = %79, %70
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_3__**, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
