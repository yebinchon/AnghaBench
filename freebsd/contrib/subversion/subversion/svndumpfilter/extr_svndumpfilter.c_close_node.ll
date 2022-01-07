; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_close_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_close_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton_t = type { %struct.TYPE_4__*, i32, i32, i32, i32*, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PROPS-END\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_node(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.node_baton_t*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.node_baton_t*
  store %struct.node_baton_t* %7, %struct.node_baton_t** %4, align 8
  store i32 2, i32* %5, align 4
  %8 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %9 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %13, i32** %2, align 8
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %16 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %66, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* @TRUE, align 8
  %21 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %22 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %21, i32 0, i32 7
  store i64 %20, i64* %22, align 8
  %23 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %24 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %29 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @svn_stringbuf_appendcstr(i32* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %19
  %33 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %34 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %41 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %44 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %49 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  br label %52

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32* [ %50, %47 ], [ null, %51 ]
  %54 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %55 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %58 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @TRUE, align 8
  %61 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %62 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @svn_repos__dump_node_record(i32 %39, i32 %42, i32* %53, i32 %56, i32 %59, i64 %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %52, %14
  %67 = load %struct.node_baton_t*, %struct.node_baton_t** %4, align 8
  %68 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @svn_stream_write(i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %2, align 8
  br label %77

77:                                               ; preds = %66, %12
  %78 = load i32*, i32** %2, align 8
  ret i32* %78
}

declare dso_local i32 @svn_stringbuf_appendcstr(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos__dump_node_record(i32, i32, i32*, i32, i32, i64, i32) #1

declare dso_local i32 @svn_stream_write(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
