; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_makebuf.c___swhatbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_makebuf.c___swhatbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.stat = type { i32, i64 }

@BUFSIZ = common dso_local global i64 0, align 8
@__SNPT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@__sseek = common dso_local global i64 0, align 8
@__SOPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__swhatbuf(%struct.TYPE_3__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @_fstat(i64 %16, %struct.stat* %8)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %3
  %20 = load i32*, i32** %7, align 8
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* @BUFSIZ, align 8
  %22 = load i64*, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @__SNPT, align 4
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @S_IFMT, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @S_IFCHR, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ule i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = load i64, i64* @BUFSIZ, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @__SNPT, align 4
  store i32 %39, i32* %4, align 4
  br label %66

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %6, align 8
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @S_IFMT, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @S_IFREG, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @__sseek, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @__SOPT, align 4
  br label %64

62:                                               ; preds = %54, %40
  %63 = load i32, i32* @__SNPT, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %36, %19
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @_fstat(i64, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
