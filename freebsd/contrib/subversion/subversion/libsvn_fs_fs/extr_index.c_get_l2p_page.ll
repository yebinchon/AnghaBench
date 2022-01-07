; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_get_l2p_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64 }

@SVN_ERR_FS_INDEX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"L2P actual page size does not match page table value.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__**, %struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__*, i32*)* @get_l2p_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_l2p_page(%struct.TYPE_10__** %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, %struct.TYPE_9__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__**, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i8* @apr_pcalloc(i32* %18, i32 16)
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %15, align 8
  store i64 0, i64* %16, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @auto_open_l2p_index(%struct.TYPE_8__* %21, i32* %22, i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @packed_stream_seek(i32 %28, i64 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i8* @apr_pcalloc(i32* %38, i32 %44)
  %46 = bitcast i8* %45 to i64*
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i64* %46, i64** %48, align 8
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %73, %6
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  store i64 0, i64* %17, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @packed_stream_get(i64* %17, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %17, align 8
  %63 = call i64 @decode_int(i64 %62)
  %64 = load i64, i64* %16, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %67, i64* %72, align 8
  br label %73

73:                                               ; preds = %56
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %14, align 8
  br label %49

76:                                               ; preds = %49
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @packed_stream_offset(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = icmp ne i64 %80, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  %90 = load i32, i32* @SVN_ERR_FS_INDEX_CORRUPTION, align 4
  %91 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %92 = call i32* @svn_error_create(i32 %90, i32* null, i32 %91)
  store i32* %92, i32** %7, align 8
  br label %97

93:                                               ; preds = %76
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %8, align 8
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %95, align 8
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %96, i32** %7, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i32*, i32** %7, align 8
  ret i32* %98
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @auto_open_l2p_index(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @packed_stream_seek(i32, i64) #1

declare dso_local i32 @packed_stream_get(i64*, i32) #1

declare dso_local i64 @decode_int(i64) #1

declare dso_local i64 @packed_stream_offset(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
