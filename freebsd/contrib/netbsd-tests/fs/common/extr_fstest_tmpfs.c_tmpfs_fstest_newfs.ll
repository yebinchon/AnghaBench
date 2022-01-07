; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_tmpfs.c_tmpfs_fstest_newfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_tmpfs.c_tmpfs_fstest_newfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfstestargs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TMPFS_ARGS_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_fstest_newfs(i32* %0, i8** %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tmpfstestargs*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call i32 (...) @rump_init()
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %5
  %20 = call %struct.tmpfstestargs* @calloc(i32 1, i32 12)
  store %struct.tmpfstestargs* %20, %struct.tmpfstestargs** %13, align 8
  %21 = load %struct.tmpfstestargs*, %struct.tmpfstestargs** %13, align 8
  %22 = icmp eq %struct.tmpfstestargs* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %6, align 4
  br label %39

24:                                               ; preds = %19
  %25 = load i32, i32* @TMPFS_ARGS_VERSION, align 4
  %26 = load %struct.tmpfstestargs*, %struct.tmpfstestargs** %13, align 8
  %27 = getelementptr inbounds %struct.tmpfstestargs, %struct.tmpfstestargs* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.tmpfstestargs*, %struct.tmpfstestargs** %13, align 8
  %30 = getelementptr inbounds %struct.tmpfstestargs, %struct.tmpfstestargs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 511, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.tmpfstestargs*, %struct.tmpfstestargs** %13, align 8
  %34 = getelementptr inbounds %struct.tmpfstestargs, %struct.tmpfstestargs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.tmpfstestargs*, %struct.tmpfstestargs** %13, align 8
  %37 = bitcast %struct.tmpfstestargs* %36 to i8*
  %38 = load i8**, i8*** %8, align 8
  store i8* %37, i8** %38, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %24, %23, %17
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @rump_init(...) #1

declare dso_local %struct.tmpfstestargs* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
