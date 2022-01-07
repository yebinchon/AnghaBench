; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_safe_changedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_safe_changedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.freebsd11_stat = type { i64, i64 }

@FTS_NOCHDIR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i8*)* @fts_safe_changedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts_safe_changedir(i32* %0, %struct.TYPE_3__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.freebsd11_stat, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @FTS_NOCHDIR, align 4
  %16 = call i64 @ISSET(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = load i32, i32* @O_CLOEXEC, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @_open(i8* %23, i32 %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %64

30:                                               ; preds = %22, %19
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @freebsd11_fstat(i32 %31, %struct.freebsd11_stat* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %10, align 4
  br label %54

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.freebsd11_stat, %struct.freebsd11_stat* %13, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42, %35
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* @errno, align 4
  store i32 -1, i32* %10, align 4
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @fchdir(i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %49, %34
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @_close(i32 %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* @errno, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %29, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local i32 @_open(i8*, i32, i32) #1

declare dso_local i64 @freebsd11_fstat(i32, %struct.freebsd11_stat*) #1

declare dso_local i32 @fchdir(i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
