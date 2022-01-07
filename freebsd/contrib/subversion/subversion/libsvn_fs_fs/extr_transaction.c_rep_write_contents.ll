; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_write_baton = type { i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @rep_write_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_contents(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rep_write_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rep_write_baton*
  store %struct.rep_write_baton* %10, %struct.rep_write_baton** %8, align 8
  %11 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %12 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @svn_checksum_update(i32 %13, i8* %14, i32 %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %20 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @svn_checksum_update(i32 %21, i8* %22, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %30 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %34 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %3
  %38 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %39 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* @svn_stream_write(i64 %40, i8* %41, i32* %42)
  store i32* %43, i32** %4, align 8
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.rep_write_baton*, %struct.rep_write_baton** %8, align 8
  %46 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @svn_stream_write(i64 %47, i8* %48, i32* %49)
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_update(i32, i8*, i32) #1

declare dso_local i32* @svn_stream_write(i64, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
