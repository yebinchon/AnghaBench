; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_l2p_proto_index_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_l2p_proto_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64, i32*)* @l2p_proto_index_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @l2p_proto_index_lookup(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @svn_fs_fs__path_l2p_proto_index(i32* %15, i32* %16, i32* %17)
  %19 = load i32, i32* @APR_READ, align 4
  %20 = load i32, i32* @APR_BUFFERED, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @APR_OS_DEFAULT, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_io_file_open(i32** %12, i32 %18, i32 %21, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i32*, i32** %6, align 8
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %49, %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @read_l2p_entry_from_proto_index(i32* %32, %struct.TYPE_3__* %13, i32* %11, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = sub nsw i32 %46, 1
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %50

49:                                               ; preds = %38, %31
  br label %27

50:                                               ; preds = %43, %27
  %51 = load i32*, i32** %12, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @svn_io_file_close(i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_l2p_proto_index(i32*, i32*, i32*) #1

declare dso_local i32 @read_l2p_entry_from_proto_index(i32*, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
