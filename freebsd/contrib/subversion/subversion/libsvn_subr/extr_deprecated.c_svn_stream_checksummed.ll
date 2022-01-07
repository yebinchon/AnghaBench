; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_stream_checksummed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_stream_checksummed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_stream_baton = type { i8**, i8**, i32, i32, i32, i32* }

@svn_checksum_md5 = common dso_local global i32 0, align 4
@read_handler_md5 = common dso_local global i32 0, align 4
@read_full_handler_md5 = common dso_local global i32 0, align 4
@skip_handler_md5 = common dso_local global i32 0, align 4
@write_handler_md5 = common dso_local global i32 0, align 4
@close_handler_md5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream_checksummed(i32* %0, i8** %1, i8** %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.md5_stream_baton*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i8**, i8*** %9, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  store i32* %20, i32** %6, align 8
  br label %73

21:                                               ; preds = %16, %5
  %22 = load i32*, i32** %11, align 8
  %23 = call %struct.md5_stream_baton* @apr_palloc(i32* %22, i32 40)
  store %struct.md5_stream_baton* %23, %struct.md5_stream_baton** %13, align 8
  %24 = load i8**, i8*** %8, align 8
  %25 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %26 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %25, i32 0, i32 0
  store i8** %24, i8*** %26, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %29 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %28, i32 0, i32 1
  store i8** %27, i8*** %29, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %32 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %31, i32 0, i32 5
  store i32* %30, i32** %32, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %38 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %37, i32 0, i32 3
  br label %40

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32* [ %38, %36 ], [ null, %39 ]
  %42 = load i8**, i8*** %9, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %46 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %45, i32 0, i32 2
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32* [ %46, %44 ], [ null, %47 ]
  %50 = load i32, i32* @svn_checksum_md5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @svn_stream_checksummed2(i32* %33, i32* %41, i32* %49, i32 %50, i32 %51, i32* %52)
  %54 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %55 = getelementptr inbounds %struct.md5_stream_baton, %struct.md5_stream_baton* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.md5_stream_baton*, %struct.md5_stream_baton** %13, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32* @svn_stream_create(%struct.md5_stream_baton* %56, i32* %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* @read_handler_md5, align 4
  %61 = load i32, i32* @read_full_handler_md5, align 4
  %62 = call i32 @svn_stream_set_read2(i32* %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* @skip_handler_md5, align 4
  %65 = call i32 @svn_stream_set_skip(i32* %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @write_handler_md5, align 4
  %68 = call i32 @svn_stream_set_write(i32* %66, i32 %67)
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @close_handler_md5, align 4
  %71 = call i32 @svn_stream_set_close(i32* %69, i32 %70)
  %72 = load i32*, i32** %12, align 8
  store i32* %72, i32** %6, align 8
  br label %73

73:                                               ; preds = %48, %19
  %74 = load i32*, i32** %6, align 8
  ret i32* %74
}

declare dso_local %struct.md5_stream_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_stream_checksummed2(i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.md5_stream_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32, i32) #1

declare dso_local i32 @svn_stream_set_skip(i32*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
