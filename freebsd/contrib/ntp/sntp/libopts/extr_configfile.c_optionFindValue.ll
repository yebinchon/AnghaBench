; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_optionFindValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_optionFindValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@OPARG_TYPE_HIERARCHY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @optionFindValue(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32* null, i32** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @OPTST_GET_ARGTYPE(i32 %18)
  %20 = load i64, i64* @OPARG_TYPE_HIERARCHY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  br label %84

24:                                               ; preds = %15
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* @errno, align 4
  br label %83

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8** @VOIDP(i32 %41)
  store i8** %42, i8*** %10, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* @ENOENT, align 4
  store i32 %46, i32* @errno, align 4
  br label %82

47:                                               ; preds = %32
  %48 = load i8*, i8** %5, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8**, i8*** %10, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %7, align 8
  br label %82

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %75, %69, %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i8**, i8*** %10, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %10, align 8
  %62 = load i8*, i8** %60, align 8
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32* @optionGetValue(i32* %64, i8* %65)
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %55

70:                                               ; preds = %59
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  store i32* %74, i32** %7, align 8
  br label %76

75:                                               ; preds = %70
  br label %55

76:                                               ; preds = %73, %55
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @ENOENT, align 4
  store i32 %80, i32* @errno, align 4
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %50, %45
  br label %83

83:                                               ; preds = %82, %29
  br label %84

84:                                               ; preds = %83, %22
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i64 @OPTST_GET_ARGTYPE(i32) #1

declare dso_local i8** @VOIDP(i32) #1

declare dso_local i32* @optionGetValue(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
