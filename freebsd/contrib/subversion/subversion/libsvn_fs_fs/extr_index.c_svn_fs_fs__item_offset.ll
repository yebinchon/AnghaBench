; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__item_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__item_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__item_offset(i64* %0, i32* %1, %struct.TYPE_4__* %2, i32 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @svn_fs_fs__use_log_addressing(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i64*, i64** %8, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @l2p_proto_index_lookup(i64* %25, i32* %26, i32* %27, i64 %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  br label %35

32:                                               ; preds = %20
  %33 = load i64, i64* %13, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %69

36:                                               ; preds = %7
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @svn_fs_fs__use_log_addressing(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i64*, i64** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @l2p_index_lookup(i64* %41, i32* %42, %struct.TYPE_4__* %43, i32 %44, i64 %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %68

49:                                               ; preds = %36
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = call i32 @svn_fs_fs__get_packed_offset(i64* %16, i32* %55, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  br label %67

64:                                               ; preds = %49
  %65 = load i64, i64* %13, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32*, i32** %15, align 8
  %71 = call i32* @svn_error_trace(i32* %70)
  ret i32* %71
}

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @l2p_proto_index_lookup(i64*, i32*, i32*, i64, i32*) #1

declare dso_local i32 @l2p_index_lookup(i64*, i32*, %struct.TYPE_4__*, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__get_packed_offset(i64*, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
