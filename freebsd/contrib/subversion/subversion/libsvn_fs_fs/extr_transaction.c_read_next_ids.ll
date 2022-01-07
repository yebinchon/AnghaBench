; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_read_next_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_read_next_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"next-id file corrupt\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*)* @read_next_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_next_ids(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i32 @path_txn_next_ids(i32* %14, i32* %15, i32* %16)
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @svn_fs_fs__read_content(%struct.TYPE_3__** %12, i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @svn__base36toui64(i8** %13, i8* %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 32
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @svn_error_create(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** %6, align 8
  br label %51

35:                                               ; preds = %5
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @svn__base36toui64(i8** %13, i8* %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 10
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %48 = call i32* @svn_error_create(i32 %46, i32* null, i32 %47)
  store i32* %48, i32** %6, align 8
  br label %51

49:                                               ; preds = %35
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %6, align 8
  br label %51

51:                                               ; preds = %49, %45, %31
  %52 = load i32*, i32** %6, align 8
  ret i32* %52
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_content(%struct.TYPE_3__**, i32, i32*) #1

declare dso_local i32 @path_txn_next_ids(i32*, i32*, i32*) #1

declare dso_local i32 @svn__base36toui64(i8**, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
