; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_insert_actual_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_entries.c_insert_actual_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STMT_INSERT_ACTUAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, %struct.TYPE_6__*, i32*)* @insert_actual_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @insert_actual_node(i32* %0, i32* %1, i8* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @STMT_INSERT_ACTUAL_NODE, align 4
  %16 = call i32 @svn_sqlite__get_statement(i32** %11, i32* %14, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @svn_sqlite__bind_int64(i32* %18, i32 1, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @svn_sqlite__bind_text(i32* %24, i32 2, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @svn_sqlite__bind_text(i32* %30, i32 3, i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = load i32*, i32** %11, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @svn_sqlite__bind_properties(i32* %41, i32 4, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %40, %5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @svn_sqlite__bind_text(i32* %54, i32 5, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %60
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @strlen(i64 %88)
  br label %91

90:                                               ; preds = %60
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i32 [ %89, %85 ], [ 0, %90 ]
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @svn_wc__upgrade_conflict_skel_from_raw(i32** %12, i32* %61, i8* %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i64 %80, i32 %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call %struct.TYPE_5__* @svn_skel__unparse(i32* %100, i32* %101)
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %13, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @svn_sqlite__bind_blob(i32* %103, i32 6, i32 %106, i32 %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %99, %91
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @svn_sqlite__insert(i32* null, i32* %113)
  %115 = call i32* @svn_error_trace(i32 %114)
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bind_int64(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_text(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__upgrade_conflict_skel_from_raw(i32**, i32*, i8*, i32, i32, i32, i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local %struct.TYPE_5__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_blob(i32*, i32, i32, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
