; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_proto_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_writable_proto_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32 }

@get_writable_proto_rev_body = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, i32*, i32, i32*)* @get_writable_proto_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_writable_proto_rev(i32** %0, i8** %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i8** %14, i8*** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @get_writable_proto_rev_body, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @with_txnlist_lock(i32* %18, i32 %19, %struct.TYPE_3__* %11, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @svn_fs_x__path_txn_proto_rev(i32* %24, i32 %25, i32* %26)
  %28 = load i32, i32* @APR_READ, align 4
  %29 = load i32, i32* @APR_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @APR_BUFFERED, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @APR_OS_DEFAULT, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @svn_io_file_open(i32** %23, i32 %27, i32 %32, i32 %33, i32* %34)
  store i32* %35, i32** %12, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %5
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @APR_END, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32* @svn_io_file_seek(i32* %40, i32 %41, i32* %13, i32* %42)
  store i32* %43, i32** %12, align 8
  br label %44

44:                                               ; preds = %38, %5
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %8, align 8
  %49 = load i32**, i32*** %6, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32* @auto_truncate_proto_rev(i32* %48, i32* %50, i32 %51, i32 %52, i32* %53)
  store i32* %54, i32** %12, align 8
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @unlock_proto_rev(i32* %60, i32 %61, i8* %63, i32* %64)
  %66 = call i32* @svn_error_compose_create(i32* %59, i32 %65)
  store i32* %66, i32** %12, align 8
  %67 = load i8**, i8*** %7, align 8
  store i8* null, i8** %67, align 8
  br label %68

68:                                               ; preds = %58, %55
  %69 = load i32*, i32** %12, align 8
  %70 = call i32* @svn_error_trace(i32* %69)
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @with_txnlist_lock(i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32* @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_proto_rev(i32*, i32, i32*) #1

declare dso_local i32* @svn_io_file_seek(i32*, i32, i32*, i32*) #1

declare dso_local i32* @auto_truncate_proto_rev(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @unlock_proto_rev(i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
