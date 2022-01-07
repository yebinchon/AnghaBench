; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_set_fulltext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_set_fulltext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton_t = type { %struct.TYPE_4__*, i32, i32, i8*, i32*, i64, i32, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"PROPS-END\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8*)* @set_fulltext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_fulltext(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.node_baton_t*, align 8
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.node_baton_t*
  store %struct.node_baton_t* %7, %struct.node_baton_t** %5, align 8
  %8 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %9 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %76, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** @TRUE, align 8
  %14 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %15 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %17 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %16, i32 0, i32 7
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %67, label %20

20:                                               ; preds = %12
  %21 = load i8*, i8** @TRUE, align 8
  %22 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %23 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %25 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %30 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @svn_stringbuf_appendcstr(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %20
  %34 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %35 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %42 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %45 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %50 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  br label %53

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32* [ %51, %48 ], [ null, %52 ]
  %55 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %56 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %59 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** @TRUE, align 8
  %62 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %63 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @svn_repos__dump_node_record(i32* %40, i32 %43, i32* %54, i8* %57, i32 %60, i8* %61, i32 %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %67

67:                                               ; preds = %53, %12
  %68 = load %struct.node_baton_t*, %struct.node_baton_t** %5, align 8
  %69 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32**, i32*** %3, align 8
  store i32* %74, i32** %75, align 8
  br label %76

76:                                               ; preds = %67, %2
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__dump_node_record(i32*, i32, i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
