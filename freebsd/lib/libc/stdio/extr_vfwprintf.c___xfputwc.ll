; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___xfputwc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c___xfputwc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.__suio = type { i64, i32, %struct.__siov* }
%struct.__siov = type { i8*, i64 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@__SSTR = common dso_local global i32 0, align 4
@initial_mbs = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_5__*, i32)* @__xfputwc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfputwc(i64 %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.__suio, align 8
  %12 = alloca %struct.__siov, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MB_LEN_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @__SSTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @__fputwc(i64 %26, %struct.TYPE_5__* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %61

30:                                               ; preds = %3
  %31 = load i32, i32* @initial_mbs, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @wcrtomb(i8* %18, i64 %32, i32* %8)
  store i64 %33, i64* %13, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @__SERR, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @WEOF, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %61

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 2
  store %struct.__siov* %12, %struct.__siov** %43, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.__suio, %struct.__suio* %11, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.__siov, %struct.__siov* %12, i32 0, i32 0
  store i8* %18, i8** %47, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.__siov, %struct.__siov* %12, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = call i64 @__sfvwrite(%struct.TYPE_5__* %50, %struct.__suio* %11)
  %52 = load i64, i64* @EOF, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  br label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @WEOF, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %56, %54 ], [ %58, %57 ]
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %61

61:                                               ; preds = %59, %35, %25
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__fputwc(i64, %struct.TYPE_5__*, i32) #2

declare dso_local i64 @wcrtomb(i8*, i64, i32*) #2

declare dso_local i64 @__sfvwrite(%struct.TYPE_5__*, %struct.__suio*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
