; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_close_handler_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_close_handler_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checksum_stream_baton = type { i32, i32, i64, i32, i64, i32, i64 }

@SVN__STREAM_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_handler_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_handler_checksum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.checksum_stream_baton*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.checksum_stream_baton*
  store %struct.checksum_stream_baton* %7, %struct.checksum_stream_baton** %3, align 8
  %8 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %9 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %14 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  %17 = call i8* @apr_palloc(i32 %15, i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i32, i32* @SVN__STREAM_CHUNK_SIZE, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %24, %12
  %20 = load i8*, i8** %2, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @read_full_handler_checksum(i8* %20, i8* %21, i32* %5)
  %23 = call i32 @SVN_ERR(i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %26 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %19, label %29

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %32 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %37 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %40 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %43 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_checksum_final(i32 %38, i64 %41, i32 %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %35, %30
  %48 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %49 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %54 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %57 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %60 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @svn_checksum_final(i32 %55, i64 %58, i32 %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %64

64:                                               ; preds = %52, %47
  %65 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %3, align 8
  %66 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_stream_close(i32 %67)
  %69 = call i32* @svn_error_trace(i32 %68)
  ret i32* %69
}

declare dso_local i8* @apr_palloc(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_full_handler_checksum(i8*, i8*, i32*) #1

declare dso_local i32 @svn_checksum_final(i32, i64, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
