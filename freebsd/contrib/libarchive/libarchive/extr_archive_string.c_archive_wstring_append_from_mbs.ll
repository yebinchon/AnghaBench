; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_wstring_append_from_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_wstring_append_from_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_wstring = type { i64, i32* }

@errno = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_wstring_append_from_mbs(%struct.archive_wstring* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_wstring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.archive_wstring* %0, %struct.archive_wstring** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %11, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %18 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %19 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = add i64 %20, %21
  %23 = add i64 %22, 1
  %24 = call i32* @archive_wstring_ensure(%struct.archive_wstring* %17, i64 %23)
  %25 = icmp eq i32* null, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %143

27:                                               ; preds = %3
  %28 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %29 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %32 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %13, align 8
  br label %35

35:                                               ; preds = %113, %99, %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %11, align 8
  %42 = icmp ugt i64 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %45, label %124

45:                                               ; preds = %43
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %51 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = ptrtoint i32* %49 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %58 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %60 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %63 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 0, i32* %65, align 4
  %66 = load i64, i64* %11, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %68 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %69 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %70, %71
  %73 = add i64 %72, 1
  %74 = call i32* @archive_wstring_ensure(%struct.archive_wstring* %67, i64 %73)
  %75 = icmp eq i32* null, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %143

77:                                               ; preds = %48
  %78 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %79 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %82 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32* %84, i32** %13, align 8
  br label %85

85:                                               ; preds = %77, %45
  %86 = load i32*, i32** %13, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i64, i64* %10, align 8
  %89 = call i64 @mbtowc(i32* %86, i8* %87, i64 %88)
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %90, -1
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i64, i64* %8, align 8
  %94 = icmp eq i64 %93, -2
  br i1 %94, label %95, label %105

95:                                               ; preds = %92, %85
  store i32 -1, i32* %9, align 4
  %96 = load i64, i64* @errno, align 8
  %97 = load i64, i64* @EILSEQ, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %11, align 8
  br label %35

104:                                              ; preds = %95
  br label %124

105:                                              ; preds = %92
  %106 = load i64, i64* %8, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %105
  br label %124

113:                                              ; preds = %108
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %13, align 8
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %8, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %12, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %11, align 8
  br label %35

124:                                              ; preds = %112, %104, %43
  %125 = load i32*, i32** %13, align 8
  %126 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %127 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = ptrtoint i32* %125 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %134 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %136 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.archive_wstring*, %struct.archive_wstring** %5, align 8
  %139 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %124, %76, %26
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32* @archive_wstring_ensure(%struct.archive_wstring*, i64) #1

declare dso_local i64 @mbtowc(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
