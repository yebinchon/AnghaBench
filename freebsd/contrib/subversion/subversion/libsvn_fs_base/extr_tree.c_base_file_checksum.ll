; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_file_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_file_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.file_checksum_args = type { i8*, i32**, i32, %struct.TYPE_3__* }

@txn_body_file_checksum = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32, %struct.TYPE_3__*, i8*, i32*)* @base_file_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_file_checksum(i32** %0, i32 %1, %struct.TYPE_3__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.file_checksum_args, align 8
  %12 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %16 = getelementptr inbounds %struct.file_checksum_args, %struct.file_checksum_args* %11, i32 0, i32 3
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.file_checksum_args, %struct.file_checksum_args* %11, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.file_checksum_args, %struct.file_checksum_args* %11, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds %struct.file_checksum_args, %struct.file_checksum_args* %11, i32 0, i32 1
  store i32** %21, i32*** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @txn_body_file_checksum, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @svn_fs_base__retry_txn(i32 %25, i32 %26, %struct.file_checksum_args* %11, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32**, i32*** %6, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @svn_checksum_dup(i32* %32, i32* %33)
  %35 = load i32**, i32*** %6, align 8
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @svn_pool_destroy(i32* %36)
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %38
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.file_checksum_args*, i32, i32*) #1

declare dso_local i32* @svn_checksum_dup(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
