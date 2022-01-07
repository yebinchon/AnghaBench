; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_window_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_window_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, i32, i32 (i32*, i32)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @window_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @window_handler(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file_baton*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.file_baton*
  store %struct.file_baton* %7, %struct.file_baton** %5, align 8
  %8 = load %struct.file_baton*, %struct.file_baton** %5, align 8
  %9 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %8, i32 0, i32 4
  %10 = load i32 (i32*, i32)*, i32 (i32*, i32)** %9, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.file_baton*, %struct.file_baton** %5, align 8
  %13 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 %10(i32* %11, i32 %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.file_baton*, %struct.file_baton** %5, align 8
  %21 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.file_baton*, %struct.file_baton** %5, align 8
  %24 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @svn_checksum__from_digest_md5(i32 %22, i32 %25)
  %27 = load %struct.file_baton*, %struct.file_baton** %5, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %19, %2
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %30
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_checksum__from_digest_md5(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
