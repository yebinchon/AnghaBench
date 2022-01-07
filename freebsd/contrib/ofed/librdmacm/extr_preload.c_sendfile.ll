; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_sendfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i64)* }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PROT_READ = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendfile(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @fd_get(i32 %13, i32* %11)
  %15 = load i64, i64* @fd_rsocket, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32 (i32, i32, i32*, i64)*, i32 (i32, i32, i32*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 %18(i32 %19, i32 %20, i32* %21, i64 %22)
  store i32 %23, i32* %5, align 4
  br label %61

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @PROT_READ, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  %36 = call i8* @mmap(i32* null, i64 %25, i32 %26, i32 0, i32 %27, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, inttoptr (i64 -1 to i8*)
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @rwrite(i32 %41, i8* %42, i64 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load i32, i32* @SEEK_CUR, align 4
  %54 = call i32 @lseek(i32 %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47, %40
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @munmap(i8* %56, i64 %57)
  %59 = load i64, i64* %12, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %39, %17
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @fd_get(i32, i32*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @rwrite(i32, i8*, i64) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
