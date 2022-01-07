; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_compute_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_compute_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@svn_txdelta_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i8*, i8*, i32, i32*)* @compute_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @compute_window(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @svn_stringbuf_create_empty(i32* %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* @svn_txdelta_new, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_txdelta__insert_op(%struct.TYPE_9__* %11, i32 %20, i32 0, i8* %21, i8* %22, i32* %23)
  br label %31

25:                                               ; preds = %5
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_txdelta__xdelta(%struct.TYPE_9__* %11, i8* %26, i8* %27, i8* %28, i32* %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load i32*, i32** %10, align 8
  %33 = call %struct.TYPE_8__* @svn_txdelta__make_window(%struct.TYPE_9__* %11, i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  ret %struct.TYPE_8__* %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #2

declare dso_local i32 @svn_txdelta__insert_op(%struct.TYPE_9__*, i32, i32, i8*, i8*, i32*) #2

declare dso_local i32 @svn_txdelta__xdelta(%struct.TYPE_9__*, i8*, i8*, i8*, i32*) #2

declare dso_local %struct.TYPE_8__* @svn_txdelta__make_window(%struct.TYPE_9__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
