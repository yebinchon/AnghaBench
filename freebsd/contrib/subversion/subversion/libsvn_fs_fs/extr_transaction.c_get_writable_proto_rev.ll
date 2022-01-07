; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_writable_proto_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_get_writable_proto_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_writable_proto_rev_baton = type { i8**, i32 }

@get_writable_proto_rev_body = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@APR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, i32*, i32*, i32*)* @get_writable_proto_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_writable_proto_rev(i32** %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.get_writable_proto_rev_baton, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8**, i8*** %7, align 8
  %15 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %11, i32 0, i32 0
  store i8** %14, i8*** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.get_writable_proto_rev_baton, %struct.get_writable_proto_rev_baton* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* @get_writable_proto_rev_body, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @with_txnlist_lock(i32* %19, i32 %20, %struct.get_writable_proto_rev_baton* %11, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32**, i32*** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_fs_fs__path_txn_proto_rev(i32* %25, i32* %26, i32* %27)
  %29 = load i32, i32* @APR_READ, align 4
  %30 = load i32, i32* @APR_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @APR_BUFFERED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @APR_OS_DEFAULT, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32* @svn_io_file_open(i32** %24, i32 %28, i32 %33, i32 %34, i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %5
  %40 = load i32**, i32*** %6, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @APR_END, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @svn_io_file_seek(i32* %41, i32 %42, i32* %13, i32* %43)
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %39, %5
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %8, align 8
  %50 = load i32**, i32*** %6, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32* @auto_truncate_proto_rev(i32* %49, i32* %51, i32 %52, i32* %53, i32* %54)
  store i32* %55, i32** %12, align 8
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @unlock_proto_rev(i32* %61, i32* %62, i8* %64, i32* %65)
  %67 = call i32* @svn_error_compose_create(i32* %60, i32 %66)
  store i32* %67, i32** %12, align 8
  %68 = load i8**, i8*** %7, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %59, %56
  %70 = load i32*, i32** %12, align 8
  %71 = call i32* @svn_error_trace(i32* %70)
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @with_txnlist_lock(i32*, i32, %struct.get_writable_proto_rev_baton*, i32*) #1

declare dso_local i32* @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_proto_rev(i32*, i32*, i32*) #1

declare dso_local i32* @svn_io_file_seek(i32*, i32, i32*, i32*) #1

declare dso_local i32* @auto_truncate_proto_rev(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @unlock_proto_rev(i32*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
