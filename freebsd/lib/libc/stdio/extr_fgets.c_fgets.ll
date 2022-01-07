; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgets.c_fgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgets.c_fgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32 }

@__SERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgets(i8* noalias %0, i32 %1, %struct.TYPE_7__* noalias %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = call i32 @ORIENT(%struct.TYPE_7__* %14, i32 -1)
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @__SERR, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* @errno, align 4
  store i8* null, i8** %9, align 8
  br label %121

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %95, %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = icmp ule i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i64 @__srefill(%struct.TYPE_7__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = call i32 @__sfeof(%struct.TYPE_7__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i8* null, i8** %9, align 8
  br label %121

50:                                               ; preds = %45
  br label %118

51:                                               ; preds = %37
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %32
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i8* @memchr(i8* %67, i8 signext 10, i64 %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %4, align 8
  store i8* %94, i8** %9, align 8
  br label %121

95:                                               ; preds = %66
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* %7, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %101
  store i8* %105, i8** %103, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @memcpy(i8* %106, i8* %107, i64 %108)
  %110 = load i64, i64* %7, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8* %112, i8** %8, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = sub i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %5, align 4
  br label %29

118:                                              ; preds = %50, %29
  %119 = load i8*, i8** %8, align 8
  store i8 0, i8* %119, align 1
  %120 = load i8*, i8** %4, align 8
  store i8* %120, i8** %9, align 8
  br label %121

121:                                              ; preds = %118, %72, %49, %18
  %122 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %123 = load i8*, i8** %9, align 8
  ret i8* %123
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_7__*) #1

declare dso_local i32 @ORIENT(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @__srefill(%struct.TYPE_7__*) #1

declare dso_local i32 @__sfeof(%struct.TYPE_7__*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
