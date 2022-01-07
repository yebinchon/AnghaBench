; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_svn_utf__normcmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf8proc.c_svn_utf__normcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_UTF__UNKNOWN_LENGTH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf__normcmp(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.TYPE_5__* %5, %struct.TYPE_5__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 0, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @SVN_UTF__UNKNOWN_LENGTH, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i1 [ true, %7 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %18, align 8
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 0, %37
  br i1 %38, label %50, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @SVN_UTF__UNKNOWN_LENGTH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi i1 [ true, %33 ], [ %49, %48 ]
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %19, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56, %50
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %69

64:                                               ; preds = %59
  %65 = load i64, i64* %18, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 -1, i32 1
  br label %69

69:                                               ; preds = %64, %63
  %70 = phi i32 [ 0, %63 ], [ %68, %64 ]
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %8, align 8
  br label %95

73:                                               ; preds = %56
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %77 = call i32 @decompose_normalized(i32* %16, i8* %74, i32 %75, %struct.TYPE_5__* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %82 = call i32 @decompose_normalized(i32* %17, i8* %79, i32 %80, %struct.TYPE_5__* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @ucs4cmp(i32 %86, i32 %87, i32 %90, i32 %91)
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %8, align 8
  br label %95

95:                                               ; preds = %73, %69
  %96 = load i32*, i32** %8, align 8
  ret i32* %96
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @decompose_normalized(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ucs4cmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
