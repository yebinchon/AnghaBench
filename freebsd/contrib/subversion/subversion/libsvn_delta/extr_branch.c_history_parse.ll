; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_history_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch.c_history_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"history: parents %d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"parent: r%ld.%99s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__**, i32*, i32*, i32*)* @history_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @history_parse(%struct.TYPE_7__** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [100 x i8], align 16
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_7__* @svn_branch__history_create_empty(i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @svn_stream_readline(i32* %19, %struct.TYPE_6__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %70, %4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @svn_stream_readline(i32* %41, %struct.TYPE_6__** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @SVN_ERR_ASSERT(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %54 = call i32 (i32, i8*, i32*, ...) @sscanf(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %15, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %64 = call i32 @apr_pstrdup(i32* %62, i8* %63)
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @svn_branch__rev_bid_create(i32 %65, i8* %66, i32* %67)
  %69 = call i32 @svn_hash_sets(i32 %61, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  br label %36

73:                                               ; preds = %36
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %75 = icmp ne %struct.TYPE_7__** %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %80
}

declare dso_local %struct.TYPE_7__* @svn_branch__history_create_empty(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_6__**, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, ...) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_branch__rev_bid_create(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
