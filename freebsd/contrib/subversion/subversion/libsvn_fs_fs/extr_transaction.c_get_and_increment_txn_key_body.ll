; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_and_increment_txn_key_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_and_increment_txn_key_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_and_increment_txn_key_baton = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @get_and_increment_txn_key_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_and_increment_txn_key_body(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.get_and_increment_txn_key_baton*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.get_and_increment_txn_key_baton*
  store %struct.get_and_increment_txn_key_baton* %13, %struct.get_and_increment_txn_key_baton** %5, align 8
  %14 = load %struct.get_and_increment_txn_key_baton*, %struct.get_and_increment_txn_key_baton** %5, align 8
  %15 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  %19 = load %struct.get_and_increment_txn_key_baton*, %struct.get_and_increment_txn_key_baton** %5, align 8
  %20 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @svn_fs_fs__path_txn_current(%struct.TYPE_7__* %21, i32* %22)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.get_and_increment_txn_key_baton*, %struct.get_and_increment_txn_key_baton** %5, align 8
  %31 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @svn_fs_fs__read_content(%struct.TYPE_5__** %11, i8* %29, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @svn__base36toui64(i32* null, i32 %37)
  %39 = load %struct.get_and_increment_txn_key_baton*, %struct.get_and_increment_txn_key_baton** %5, align 8
  %40 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.get_and_increment_txn_key_baton*, %struct.get_and_increment_txn_key_baton** %5, align 8
  %42 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i64 @svn__ui64tobase36(i8* %28, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i8, i8* %28, i64 %46
  store i8 10, i8* %47, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 1
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @svn_io_write_atomic2(i8* %48, i8* %28, i64 %50, i8* %51, i32 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  %59 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32* %58
}

declare dso_local i8* @svn_fs_fs__path_txn_current(%struct.TYPE_7__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_content(%struct.TYPE_5__**, i8*, i32) #1

declare dso_local i64 @svn__base36toui64(i32*, i32) #1

declare dso_local i64 @svn__ui64tobase36(i8*, i64) #1

declare dso_local i32 @svn_io_write_atomic2(i8*, i8*, i64, i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
