; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_container_baton = type { i32, i32, i64, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*)* @write_container_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_container_handler(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.write_container_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.write_container_baton*
  store %struct.write_container_baton* %9, %struct.write_container_baton** %7, align 8
  %10 = load %struct.write_container_baton*, %struct.write_container_baton** %7, align 8
  %11 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @svn_checksum_update(i64 %12, i8* %13, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.write_container_baton*, %struct.write_container_baton** %7, align 8
  %19 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.write_container_baton*, %struct.write_container_baton** %7, align 8
  %24 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @svn_checksum_update(i64 %25, i8* %26, i32 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.write_container_baton*, %struct.write_container_baton** %7, align 8
  %33 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @svn_stream_write(i32 %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.write_container_baton*, %struct.write_container_baton** %7, align 8
  %42 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %45
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum_update(i64, i8*, i32) #1

declare dso_local i32 @svn_stream_write(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
