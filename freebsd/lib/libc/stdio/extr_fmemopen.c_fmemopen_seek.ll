; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fmemopen.c_fmemopen_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fmemopen.c_fmemopen_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmemopen_cookie = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @fmemopen_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmemopen_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fmemopen_cookie*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fmemopen_cookie*
  store %struct.fmemopen_cookie* %10, %struct.fmemopen_cookie** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %62 [
    i32 128, label %12
    i32 130, label %24
    i32 129, label %42
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %15 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %68

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %23 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %26 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %31 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %39 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %64

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %49 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %42
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %68

54:                                               ; preds = %45
  %55 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %56 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %61 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %64

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %68

64:                                               ; preds = %54, %36, %20
  %65 = load %struct.fmemopen_cookie*, %struct.fmemopen_cookie** %8, align 8
  %66 = getelementptr inbounds %struct.fmemopen_cookie, %struct.fmemopen_cookie* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %62, %52, %34, %18
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
