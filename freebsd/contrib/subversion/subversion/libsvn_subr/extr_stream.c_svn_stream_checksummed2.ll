; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_checksummed2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream_checksummed2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checksum_stream_baton = type { i32*, i32, i32*, i32**, i32**, i32*, i32* }

@read_handler_checksum = common dso_local global i32 0, align 4
@read_full_handler_checksum = common dso_local global i32 0, align 4
@write_handler_checksum = common dso_local global i32 0, align 4
@data_available_handler_checksum = common dso_local global i32 0, align 4
@close_handler_checksum = common dso_local global i32 0, align 4
@seek_handler_checksum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream_checksummed2(i32* %0, i32** %1, i32** %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.checksum_stream_baton*, align 8
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32**, i32*** %9, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32**, i32*** %10, align 8
  %20 = icmp eq i32** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %7, align 8
  br label %92

23:                                               ; preds = %18, %6
  %24 = load i32*, i32** %13, align 8
  %25 = call %struct.checksum_stream_baton* @apr_palloc(i32* %24, i32 56)
  store %struct.checksum_stream_baton* %25, %struct.checksum_stream_baton** %15, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = call i8* @svn_checksum_ctx_create(i32 %29, i32* %30)
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %34 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %33, i32 0, i32 6
  store i32* %32, i32** %34, align 8
  br label %38

35:                                               ; preds = %23
  %36 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %37 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32**, i32*** %10, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i8* @svn_checksum_ctx_create(i32 %42, i32* %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %47 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %50 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %49, i32 0, i32 5
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32**, i32*** %9, align 8
  %53 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %54 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %53, i32 0, i32 4
  store i32** %52, i32*** %54, align 8
  %55 = load i32**, i32*** %10, align 8
  %56 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %57 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %56, i32 0, i32 3
  store i32** %55, i32*** %57, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %60 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %63 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %66 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %15, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @svn_stream_create(%struct.checksum_stream_baton* %67, i32* %68)
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* @read_handler_checksum, align 4
  %72 = load i32, i32* @read_full_handler_checksum, align 4
  %73 = call i32 @svn_stream_set_read2(i32* %70, i32 %71, i32 %72)
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* @write_handler_checksum, align 4
  %76 = call i32 @svn_stream_set_write(i32* %74, i32 %75)
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* @data_available_handler_checksum, align 4
  %79 = call i32 @svn_stream_set_data_available(i32* %77, i32 %78)
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @close_handler_checksum, align 4
  %82 = call i32 @svn_stream_set_close(i32* %80, i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @svn_stream_supports_reset(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %51
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* @seek_handler_checksum, align 4
  %89 = call i32 @svn_stream_set_seek(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %51
  %91 = load i32*, i32** %14, align 8
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %90, %21
  %93 = load i32*, i32** %7, align 8
  ret i32* %93
}

declare dso_local %struct.checksum_stream_baton* @apr_palloc(i32*, i32) #1

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.checksum_stream_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32, i32) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_data_available(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

declare dso_local i64 @svn_stream_supports_reset(i32*) #1

declare dso_local i32 @svn_stream_set_seek(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
