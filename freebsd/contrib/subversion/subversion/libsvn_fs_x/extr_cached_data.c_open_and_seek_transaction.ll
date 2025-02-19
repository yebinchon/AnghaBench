; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_open_and_seek_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_open_and_seek_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, %struct.TYPE_4__*, i32*, i32*)* @open_and_seek_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_and_seek_transaction(i32** %0, i32* %1, %struct.TYPE_4__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @svn_fs_x__get_txn_id(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_fs_x__rev_file_open_proto_rev(i32** %19, i32* %20, i32 %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_fs_x__item_offset(i32* %11, i32* %12, i32* %26, i32* %28, %struct.TYPE_5__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @svn_fs_x__rev_file_seek(i32* %35, i32* null, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32 @svn_fs_x__get_txn_id(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_open_proto_rev(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__item_offset(i32*, i32*, i32*, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @svn_fs_x__rev_file_seek(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
