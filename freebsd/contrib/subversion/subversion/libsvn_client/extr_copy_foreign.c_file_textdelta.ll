; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_textdelta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_file_textdelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton_t = type { i32, i32, i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i8**)* @file_textdelta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @file_textdelta(i8* %0, i8* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.file_baton_t*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.file_baton_t*
  store %struct.file_baton_t* %14, %struct.file_baton_t** %11, align 8
  %15 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %16 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %23 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %26 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %29 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @svn_stream_open_writable(i32** %12, i32 %24, i32 %27, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* @TRUE, align 8
  %34 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %35 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %37 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @svn_stream_empty(i32 %38)
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %42 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %45 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.file_baton_t*, %struct.file_baton_t** %11, align 8
  %48 = getelementptr inbounds %struct.file_baton_t, %struct.file_baton_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = call i32 @svn_txdelta_apply(i32 %39, i32* %40, i32 %43, i32 %46, i32 %49, i32* %50, i8** %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_writable(i32**, i32, i32, i32) #1

declare dso_local i32 @svn_txdelta_apply(i32, i32*, i32, i32, i32, i32*, i8**) #1

declare dso_local i32 @svn_stream_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
