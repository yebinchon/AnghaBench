; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_get_root_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_get_root_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@APR_END = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, %struct.TYPE_3__*, i32*)* @recover_get_root_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recover_get_root_offset(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @APR_END, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_io_file_seek(i32 %23, i32 %24, i32* %12, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 64
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %38

33:                                               ; preds = %4
  store i32 64, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 64
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @APR_SET, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @svn_io_file_seek(i32 %41, i32 %42, i32* %11, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @svn_io_file_read_full2(i32 %48, i8* %49, i32 %50, i32* null, i32* null, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @svn_stringbuf_ncreate(i8* %54, i32 %55, i32* %56)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @svn_fs_fs__parse_revision_trailer(i32* %58, i32* null, i32* %59, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_stringbuf_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__parse_revision_trailer(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
