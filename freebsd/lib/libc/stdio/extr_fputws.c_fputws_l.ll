; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputws.c_fputws_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fputws.c_fputws_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.__suio = type { i32, i64, %struct.__siov* }
%struct.__siov = type { i8*, i64 }
%struct.xlocale_ctype = type { i64 (i8*, i32**, i32, i32, i32*)* }

@BUFSIZ = common dso_local global i32 0, align 4
@SIZE_T_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fputws_l(i32* noalias %0, %struct.TYPE_7__* noalias %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.__suio, align 8
  %11 = alloca %struct.__siov, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xlocale_ctype*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @FIX_LOCALE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.xlocale_ctype* @XLOCALE_CTYPE(i32 %21)
  store %struct.xlocale_ctype* %22, %struct.xlocale_ctype** %13, align 8
  store i32 -1, i32* %14, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = call i32 @ORIENT(%struct.TYPE_7__* %25, i32 1)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i64 @prepwrite(%struct.TYPE_7__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %61

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.__suio, %struct.__suio* %10, i32 0, i32 2
  store %struct.__siov* %11, %struct.__siov** %32, align 8
  %33 = getelementptr inbounds %struct.__suio, %struct.__suio* %10, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.__siov, %struct.__siov* %11, i32 0, i32 0
  store i8* %18, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %12, align 8
  br label %36

36:                                               ; preds = %57, %31
  %37 = load %struct.xlocale_ctype*, %struct.xlocale_ctype** %13, align 8
  %38 = getelementptr inbounds %struct.xlocale_ctype, %struct.xlocale_ctype* %37, i32 0, i32 0
  %39 = load i64 (i8*, i32**, i32, i32, i32*)*, i64 (i8*, i32**, i32, i32, i32*)** %38, align 8
  %40 = load i32, i32* @SIZE_T_MAX, align 4
  %41 = trunc i64 %16 to i32
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i64 %39(i8* %18, i32** %12, i32 %40, i32 %41, i32* %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %61

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.__siov, %struct.__siov* %11, i32 0, i32 1
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.__suio, %struct.__suio* %10, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = call i64 @__sfvwrite(%struct.TYPE_7__* %52, %struct.__suio* %10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %61

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %36, label %60

60:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %60, %55, %47, %30
  %62 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %63 = load i32, i32* %14, align 4
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FIX_LOCALE(i32) #2

declare dso_local %struct.xlocale_ctype* @XLOCALE_CTYPE(i32) #2

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__*) #2

declare dso_local i32 @ORIENT(%struct.TYPE_7__*, i32) #2

declare dso_local i64 @prepwrite(%struct.TYPE_7__*) #2

declare dso_local i64 @__sfvwrite(%struct.TYPE_7__*, %struct.__suio*) #2

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
