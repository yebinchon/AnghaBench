; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__serialize_p2l_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__serialize_p2l_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__serialize_p2l_page(i8** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 12
  %26 = add i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @svn_temp_serializer__init(%struct.TYPE_6__* %22, i32 12, i32 %27, i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = bitcast i32* %32 to i8**
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @svn_temp_serializer__add_leaf(i32* %30, i8** %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = call %struct.TYPE_5__* @svn_temp_serializer__get(i32* %36)
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %11, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32* @svn_temp_serializer__init(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @svn_temp_serializer__add_leaf(i32*, i8**, i32) #1

declare dso_local %struct.TYPE_5__* @svn_temp_serializer__get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
