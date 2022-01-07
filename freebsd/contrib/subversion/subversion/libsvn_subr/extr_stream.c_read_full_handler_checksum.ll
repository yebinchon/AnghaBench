; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_full_handler_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_full_handler_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checksum_stream_baton = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @read_full_handler_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_full_handler_checksum(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.checksum_stream_baton*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.checksum_stream_baton*
  store %struct.checksum_stream_baton* %10, %struct.checksum_stream_baton** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %14 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @svn_stream_read_full(i32 %15, i8* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %21 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %26 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @svn_checksum_update(i32 %27, i8* %28, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  br label %33

33:                                               ; preds = %24, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @FALSE, align 4
  %40 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %41 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32, i8*, i32*) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
