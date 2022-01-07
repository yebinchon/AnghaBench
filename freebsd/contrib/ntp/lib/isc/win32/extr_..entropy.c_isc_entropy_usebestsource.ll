; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_usebestsource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_usebestsource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ISC_R_NOENTROPY = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@ISC_ENTROPY_KEYBOARDYES = common dso_local global i32 0, align 4
@ISC_ENTROPY_KEYBOARDNO = common dso_local global i32 0, align 4
@ISC_ENTROPY_KEYBOARDMAYBE = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@kbdstart = common dso_local global i32 0, align 4
@kbdget = common dso_local global i32 0, align 4
@kbdstop = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i64 0, align 8
@PATH_RANDOMDEV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_entropy_usebestsource(i32* %0, %struct.TYPE_4__** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__** %1, %struct.TYPE_4__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @ISC_R_NOENTROPY, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* @ISC_TRUE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @VALID_ENTROPY(i32* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %19 = icmp ne %struct.TYPE_4__** %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br label %24

24:                                               ; preds = %20, %4
  %25 = phi i1 [ false, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @REQUIRE(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ISC_ENTROPY_KEYBOARDYES, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ISC_ENTROPY_KEYBOARDNO, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ISC_ENTROPY_KEYBOARDMAYBE, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %24
  %40 = phi i1 [ true, %31 ], [ true, %24 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @REQUIRE(i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ISC_ENTROPY_KEYBOARDYES, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @isc_entropy_createfilesource(i32* %50, i8* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ISC_R_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ISC_ENTROPY_KEYBOARDMAYBE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @ISC_ENTROPY_KEYBOARDNO, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %56, %49
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @ISC_R_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %5, align 8
  br label %105

71:                                               ; preds = %66, %62
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %71, %45, %39
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @ISC_ENTROPY_KEYBOARDNO, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @kbdstart, align 4
  %80 = load i32, i32* @kbdget, align 4
  %81 = load i32, i32* @kbdstop, align 4
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %83 = call i64 @isc_entropy_createcallbacksource(i32* %78, i32 %79, i32 %80, i32 %81, i32* null, %struct.TYPE_4__** %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @ISC_R_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @ISC_ENTROPY_KEYBOARDMAYBE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ISC_TF(i32 %91)
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %77
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @ISC_R_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i64, i64* %10, align 8
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %100, %96
  br label %103

103:                                              ; preds = %102, %73
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %103, %69
  %106 = load i64, i64* %5, align 8
  ret i64 %106
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(i32*) #1

declare dso_local i64 @isc_entropy_createfilesource(i32*, i8*) #1

declare dso_local i64 @isc_entropy_createcallbacksource(i32*, i32, i32, i32, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @ISC_TF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
