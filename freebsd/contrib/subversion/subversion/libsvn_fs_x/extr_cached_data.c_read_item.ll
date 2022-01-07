; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_read_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [78 x i8] c"Low-level checksum mismatch while reading\0A%s bytes of meta data at offset %s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, %struct.TYPE_7__*, i32*)* @read_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_item(i32** %0, i32* %1, i32* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call %struct.TYPE_6__* @svn_stringbuf_create_ensure(i64 %19, i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %16, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @svn_fs_x__rev_file_read(i32* %34, i64* %37, i64 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @svn_stream_from_stringbuf(%struct.TYPE_6__* %43, i32* %44)
  %46 = load i32**, i32*** %7, align 8
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @svn__fnv1a_32x4(i64* %49, i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %5
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %6, align 8
  br label %89

61:                                               ; preds = %5
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @htonl(i64 %64)
  store i64 %65, i64* %15, align 8
  %66 = bitcast i64* %15 to i8*
  %67 = load i32*, i32** %11, align 8
  %68 = call i32* @svn_checksum__from_digest_fnv1a_32x4(i8* %66, i32* %67)
  store i32* %68, i32** %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @htonl(i64 %69)
  store i64 %70, i64* %15, align 8
  %71 = bitcast i64* %15 to i8*
  %72 = load i32*, i32** %11, align 8
  %73 = call i32* @svn_checksum__from_digest_fnv1a_32x4(i8* %71, i32* %72)
  store i32* %73, i32** %14, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @apr_off_t_toa(i32* %78, i64 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @apr_off_t_toa(i32* %83, i64 %86)
  %88 = call i32* @svn_checksum_mismatch_err(i32* %74, i32* %75, i32* %76, i32 %77, i32 %82, i32 %87)
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %61, %59
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
}

declare dso_local %struct.TYPE_6__* @svn_stringbuf_create_ensure(i64, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_read(i32*, i64*, i64) #1

declare dso_local i32* @svn_stream_from_stringbuf(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @svn__fnv1a_32x4(i64*, i64) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32* @svn_checksum__from_digest_fnv1a_32x4(i8*, i32*) #1

declare dso_local i32* @svn_checksum_mismatch_err(i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_off_t_toa(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
