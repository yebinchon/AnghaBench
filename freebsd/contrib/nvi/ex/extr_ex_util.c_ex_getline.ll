; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_util.c_ex_getline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_util.c_ex_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@errno = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_getline(i32* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_3__* @EXP(i32* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* @errno, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  br label %17

17:                                               ; preds = %74, %52, %3
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = call i32 @BINC_RETC(i32* %24, i8* %27, i64 %30, i64 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %23, %17
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @getc(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @EOF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @feof(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EINTR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  store i64 0, i64* @errno, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @clearerr(i32* %53)
  br label %17

55:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %81

56:                                               ; preds = %44, %39
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @EOF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %74

63:                                               ; preds = %60, %56
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @EOF, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 1, i32* %4, align 4
  br label %81

71:                                               ; preds = %67, %63
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %81

74:                                               ; preds = %60
  %75 = load i32, i32* %10, align 4
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %17

81:                                               ; preds = %71, %70, %55
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_3__* @EXP(i32*) #1

declare dso_local i32 @BINC_RETC(i32*, i8*, i64, i64) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @clearerr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
