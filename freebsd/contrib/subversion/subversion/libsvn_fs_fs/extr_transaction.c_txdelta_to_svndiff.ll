; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_txdelta_to_svndiff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_txdelta_to_svndiff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@compression_type_lz4 = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_SVNDIFF2_FORMAT = common dso_local global i64 0, align 8
@compression_type_zlib = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_SVNDIFF1_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i32*, %struct.TYPE_4__*, i32*)* @txdelta_to_svndiff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txdelta_to_svndiff(i32* %0, i8** %1, i32* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @compression_type_lz4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SVN_FS_FS__MIN_SVNDIFF2_FORMAT, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %27)
  store i32 2, i32* %12, align 4
  br label %45

29:                                               ; preds = %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @compression_type_zlib, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SVN_FS_FS__MIN_SVNDIFF1_FORMAT, align 8
  %40 = icmp sge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %41)
  store i32 1, i32* %12, align 4
  br label %44

43:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i32*, i32** %6, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @svn_txdelta_to_svndiff3(i32* %46, i8** %47, i32* %48, i32 %49, i32 %52, i32* %53)
  ret void
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
