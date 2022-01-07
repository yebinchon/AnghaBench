; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_multiline_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_multiline_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.ucl_chunk = type { i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*, i8*, i32, i8**, i32*)* @ucl_parse_multiline_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_multiline_string(%struct.ucl_parser* %0, %struct.ucl_chunk* %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_parser*, align 8
  %9 = alloca %struct.ucl_chunk*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %8, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %20 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %14, align 8
  store i8* %22, i8** %15, align 8
  br label %23

23:                                               ; preds = %112, %69, %6
  %24 = load i8*, i8** %14, align 8
  %25 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %26 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ult i8* %24, %27
  br i1 %28, label %29, label %116

29:                                               ; preds = %23
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %29
  %33 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %34 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %118

44:                                               ; preds = %32
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @memcmp(i8* %45, i8* %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8* %54, i8** %16, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load i8*, i8** %16, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 59
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %16, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 44
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %70, i8* %71)
  br label %23

73:                                               ; preds = %64, %59, %50
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %82 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %90 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %93 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = load i8**, i8*** %12, align 8
  store i8* %94, i8** %95, align 8
  br label %116

96:                                               ; preds = %44
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %29
  %99 = load i8*, i8** %14, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  br label %112

104:                                              ; preds = %98
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 36
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32*, i32** %13, align 8
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %109, %104
  store i32 0, i32* %17, align 4
  br label %112

112:                                              ; preds = %111, %103
  %113 = load %struct.ucl_chunk*, %struct.ucl_chunk** %9, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %113, i8* %114)
  br label %23

116:                                              ; preds = %73, %23
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %116, %43
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
