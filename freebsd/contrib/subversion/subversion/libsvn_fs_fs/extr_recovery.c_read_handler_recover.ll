; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_read_handler_recover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_read_handler_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recover_read_from_file_baton = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i64*)* @read_handler_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_handler_recover(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.recover_read_from_file_baton*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.recover_read_from_file_baton*
  store %struct.recover_read_from_file_baton* %11, %struct.recover_read_from_file_baton** %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.recover_read_from_file_baton*, %struct.recover_read_from_file_baton** %8, align 8
  %15 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %42

21:                                               ; preds = %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.recover_read_from_file_baton*, %struct.recover_read_from_file_baton** %8, align 8
  %24 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.recover_read_from_file_baton*, %struct.recover_read_from_file_baton** %8, align 8
  %29 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.recover_read_from_file_baton*, %struct.recover_read_from_file_baton** %8, align 8
  %34 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.recover_read_from_file_baton*, %struct.recover_read_from_file_baton** %8, align 8
  %38 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32* @svn_stream_read_full(i32 %39, i8* %40, i64* %9)
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %31, %18
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

declare dso_local i32* @svn_stream_read_full(i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
