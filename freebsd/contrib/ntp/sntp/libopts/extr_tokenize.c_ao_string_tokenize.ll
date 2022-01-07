; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_ao_string_tokenize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_tokenize.c_ao_string_tokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i64 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ao_string_tokenize(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.TYPE_5__* @alloc_token_list(i8* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = icmp eq %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %2, align 8
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %90, %13
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds i32*, i32** %25, i64 %28
  store i32* %22, i32** %30, align 8
  br label %31

31:                                               ; preds = %85, %21
  %32 = load i8*, i8** %3, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = trunc i32 %35 to i8
  %37 = call i64 @IS_WHITESPACE_CHAR(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %74, %59, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i8* @SPN_WHITESPACE_CHARS(i8* %42)
  store i8* %43, i8** %3, align 8
  br label %86

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %77 [
    i32 34, label %46
    i32 39, label %61
    i32 128, label %76
  ]

46:                                               ; preds = %44
  %47 = call i32 @copy_cooked(i32** %5, i8** %3)
  %48 = load i8*, i8** %3, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = call i32 @free(%struct.TYPE_5__* %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* @errno, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %104

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @IS_WHITESPACE_CHAR(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %40

60:                                               ; preds = %54
  br label %85

61:                                               ; preds = %44
  %62 = call i32 @copy_raw(i32** %5, i8** %3)
  %63 = load i8*, i8** %3, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = call i32 @free(%struct.TYPE_5__* %66)
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* @errno, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %104

69:                                               ; preds = %61
  %70 = load i8*, i8** %3, align 8
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @IS_WHITESPACE_CHAR(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %40

75:                                               ; preds = %69
  br label %85

76:                                               ; preds = %44
  br label %87

77:                                               ; preds = %44
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = trunc i32 %80 to i8
  %82 = zext i8 %81 to i32
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  br label %85

85:                                               ; preds = %77, %75, %60
  br label %31

86:                                               ; preds = %40
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  store i32 128, i32* %88, align 4
  br label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 128
  br i1 %94, label %21, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32*, i32** %98, i64 %101
  store i32* null, i32** %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %2, align 8
  br label %104

104:                                              ; preds = %95, %65, %50, %11
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %105
}

declare dso_local %struct.TYPE_5__* @alloc_token_list(i8*) #1

declare dso_local i64 @IS_WHITESPACE_CHAR(i8 signext) #1

declare dso_local i8* @SPN_WHITESPACE_CHARS(i8*) #1

declare dso_local i32 @copy_cooked(i32**, i8**) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @copy_raw(i32**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
