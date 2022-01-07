; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_l2p_proto_index_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_l2p_proto_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i64, i32*)* @l2p_proto_index_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @l2p_proto_index_lookup(i32* %0, i32* %1, i32* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @svn_fs_x__path_l2p_proto_index(i32* %17, i32 %18, i32* %19)
  %21 = load i32, i32* @APR_READ, align 4
  %22 = load i32, i32* @APR_BUFFERED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @APR_OS_DEFAULT, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @svn_io_file_open(i32** %14, i32 %20, i32 %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %7, align 8
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %54, %6
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load i32*, i32** %14, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @read_l2p_entry_from_proto_index(i32* %34, %struct.TYPE_3__* %15, i32* %13, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = sub nsw i32 %48, 1
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  br label %55

54:                                               ; preds = %40, %33
  br label %29

55:                                               ; preds = %45, %29
  %56 = load i32*, i32** %14, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @svn_io_file_close(i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %60
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_l2p_proto_index(i32*, i32, i32*) #1

declare dso_local i32 @read_l2p_entry_from_proto_index(i32*, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
