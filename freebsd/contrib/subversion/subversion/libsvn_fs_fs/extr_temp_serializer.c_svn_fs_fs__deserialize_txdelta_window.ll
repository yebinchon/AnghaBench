; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__deserialize_txdelta_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_temp_serializer.c_svn_fs_fs__deserialize_txdelta_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__deserialize_txdelta_window(i8** %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %10, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = bitcast %struct.TYPE_5__** %15 to i8**
  %17 = call i32 @svn_temp_deserializer__resolve(%struct.TYPE_5__* %13, i8** %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to i8**
  %25 = call i32 @svn_temp_deserializer__resolve(%struct.TYPE_5__* %21, i8** %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to i32**
  %30 = call i32 @deserialize_svn_string(%struct.TYPE_5__* %26, i32** %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = bitcast %struct.TYPE_5__* %31 to i8*
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %34
}

declare dso_local i32 @svn_temp_deserializer__resolve(%struct.TYPE_5__*, i8**) #1

declare dso_local i32 @deserialize_svn_string(%struct.TYPE_5__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
