; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_close_apr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_close_apr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i8**, i32*, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@STMT_INTERNAL_LAST = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @close_apr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @close_apr(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %16, i64* %2, align 8
  br label %109

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %19, align 8
  %21 = icmp ne %struct.TYPE_14__** %20, null
  br i1 %21, label %22, label %84

22:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %80, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @STMT_INTERNAL_LAST, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %34, i64 %36
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %79

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %49, i64 %51
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %61, i64 %63
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call %struct.TYPE_13__* @svn_sqlite__reset(%struct.TYPE_14__* %65)
  %67 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %58, %struct.TYPE_13__* %66)
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %5, align 8
  br label %68

68:                                               ; preds = %57, %46, %40
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %71, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = call %struct.TYPE_13__* @svn_sqlite__finalize(%struct.TYPE_14__* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %76, %struct.TYPE_13__* %77)
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %5, align 8
  br label %79

79:                                               ; preds = %68, %31
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %23

83:                                               ; preds = %23
  br label %84

84:                                               ; preds = %83, %17
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @sqlite3_close(i32* %87)
  store i64 %88, i64* %6, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = icmp ne %struct.TYPE_13__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %6, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = call i32 @svn_error_clear(%struct.TYPE_13__* %95)
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %2, align 8
  br label %109

98:                                               ; preds = %84
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @SQLITE_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %6, align 8
  %104 = call i64 @SQLITE_ERROR_CODE(i64 %103)
  store i64 %104, i64* %2, align 8
  br label %109

105:                                              ; preds = %98
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %108, i64* %2, align 8
  br label %109

109:                                              ; preds = %105, %102, %91, %15
  %110 = load i64, i64* %2, align 8
  ret i64 %110
}

declare dso_local %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_sqlite__reset(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @svn_sqlite__finalize(%struct.TYPE_14__*) #1

declare dso_local i64 @sqlite3_close(i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i64 @SQLITE_ERROR_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
