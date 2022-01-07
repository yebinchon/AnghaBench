; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_open_wmemstream.c_wmemstream_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmemstream = type { i64, i64, i64*, i32 }

@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @wmemstream_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmemstream_write(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmemstream*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.wmemstream*
  store %struct.wmemstream* %13, %struct.wmemstream** %8, align 8
  %14 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %15 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %14, i32 0, i32 3
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @wbuflen(i32* %15, i8* %16, i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EILSEQ, align 4
  store i32 %22, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %103

23:                                               ; preds = %3
  %24 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %25 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %26 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @wmemstream_grow(%struct.wmemstream* %24, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %103

33:                                               ; preds = %23
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %97, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %39 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %42 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br label %45

45:                                               ; preds = %37, %34
  %46 = phi i1 [ false, %34 ], [ %44, %37 ]
  br i1 %46, label %47, label %98

47:                                               ; preds = %45
  %48 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %49 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %53 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %59 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %58, i32 0, i32 3
  %60 = call i64 @mbrtowc(i64 %55, i8* %56, i32 %57, i32* %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %47
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EILSEQ, align 4
  store i32 %67, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %103

68:                                               ; preds = %63
  br label %98

69:                                               ; preds = %47
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i64 1, i64* %11, align 8
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i64, i64* %11, align 8
  %75 = icmp eq i64 %74, -2
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %97

81:                                               ; preds = %73
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %94 = getelementptr inbounds %struct.wmemstream, %struct.wmemstream* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %81, %76
  br label %34

98:                                               ; preds = %68, %45
  %99 = load %struct.wmemstream*, %struct.wmemstream** %8, align 8
  %100 = call i32 @wmemstream_update(%struct.wmemstream* %99)
  %101 = load i64, i64* %9, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %66, %32, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i64 @wbuflen(i32*, i8*, i32) #1

declare dso_local i32 @wmemstream_grow(%struct.wmemstream*, i64) #1

declare dso_local i64 @mbrtowc(i64, i8*, i32, i32*) #1

declare dso_local i32 @wmemstream_update(%struct.wmemstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
