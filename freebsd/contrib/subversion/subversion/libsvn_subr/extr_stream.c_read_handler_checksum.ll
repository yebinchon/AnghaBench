; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_read_handler_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checksum_stream_baton = type { i32, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @read_handler_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_handler_checksum(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.checksum_stream_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.checksum_stream_baton*
  store %struct.checksum_stream_baton* %9, %struct.checksum_stream_baton** %7, align 8
  %10 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %11 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @svn_stream_read2(i32 %12, i8* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %18 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.checksum_stream_baton*, %struct.checksum_stream_baton** %7, align 8
  %23 = getelementptr inbounds %struct.checksum_stream_baton, %struct.checksum_stream_baton* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @svn_checksum_update(i32 %24, i8* %25, i32 %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  br label %30

30:                                               ; preds = %21, %3
  %31 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %31
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read2(i32, i8*, i32*) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
