; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_next_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_next_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32, i32*)* @write_next_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_next_ids(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @svn__ui64tobase36(i8* %21, i32 %22)
  %24 = load i8*, i8** %14, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %14, align 8
  store i8 32, i8* %27, align 1
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @svn__ui64tobase36(i8* %29, i32 %30)
  %32 = load i8*, i8** %14, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %14, align 8
  store i8 10, i8* %35, align 1
  %37 = load i8*, i8** %14, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %14, align 8
  store i8 0, i8* %37, align 1
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @svn_fs_x__path_txn_next_ids(i32* %39, i32 %40, i32* %41)
  %43 = load i32, i32* @APR_WRITE, align 4
  %44 = load i32, i32* @APR_TRUNCATE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @APR_OS_DEFAULT, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @svn_io_file_open(i32** %11, i32 %42, i32 %45, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = ptrtoint i8* %20 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @svn_io_file_write_full(i32* %50, i8* %20, i32 %55, i32* null, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @svn_io_file_close(i32* %59, i32* %60)
  %62 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %62)
  ret i32* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn__ui64tobase36(i8*, i32) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_fs_x__path_txn_next_ids(i32*, i32, i32*) #2

declare dso_local i32 @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #2

declare dso_local i32* @svn_io_file_close(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
