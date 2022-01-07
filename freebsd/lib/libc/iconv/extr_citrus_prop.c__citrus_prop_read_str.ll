; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_prop.c__citrus_prop_read_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._memstream = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_CITRUS_PROP_STR_BUFSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._memstream*, %struct.TYPE_5__*)* @_citrus_prop_read_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_prop_read_str(%struct._memstream* noalias %0, %struct.TYPE_5__* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._memstream*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct._memstream* %0, %struct._memstream** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 512, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %3, align 4
  br label %106

19:                                               ; preds = %2
  store i64 0, i64* %12, align 8
  %20 = load %struct._memstream*, %struct._memstream** %4, align 8
  %21 = call i32 @_memstream_skip_ws(%struct._memstream* %20)
  %22 = load %struct._memstream*, %struct._memstream** %4, align 8
  %23 = call i32 @_memstream_getc(%struct._memstream* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 92, label %26
    i32 34, label %30
    i32 39, label %30
  ]

25:                                               ; preds = %19
  br label %76

26:                                               ; preds = %19
  %27 = load %struct._memstream*, %struct._memstream** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @_memstream_ungetc(%struct._memstream* %27, i32 %28)
  store i32 128, i32* %8, align 4
  br label %30

30:                                               ; preds = %19, %19, %26
  br label %41

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  %37 = load i64, i64* %12, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %11, align 8
  store i32 128, i32* %8, align 4
  br label %41

41:                                               ; preds = %31, %30
  br label %42

42:                                               ; preds = %96, %41
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %43, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  store i64 512, i64* %11, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %47, %48
  %50 = call i8* @realloc(i8* %46, i64 %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %3, align 4
  br label %106

57:                                               ; preds = %45
  %58 = load i8*, i8** %10, align 8
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %57, %42
  %60 = load %struct._memstream*, %struct._memstream** %4, align 8
  %61 = call i32 @_memstream_getc(%struct._memstream* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 59
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @_bcs_isspace(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71, %68, %59
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i8* %80, i8** %83, align 8
  store i32 0, i32* %3, align 4
  br label %106

84:                                               ; preds = %71, %65
  %85 = load %struct._memstream*, %struct._memstream** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @_memstream_ungetc(%struct._memstream* %85, i32 %86)
  %88 = load %struct._memstream*, %struct._memstream** %4, align 8
  %89 = call i32 @_citrus_prop_read_character_common(%struct._memstream* %88, i32* %6)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %84
  %97 = load i32, i32* %6, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %101, align 1
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, -1
  store i64 %105, i64* %11, align 8
  br label %42

106:                                              ; preds = %92, %76, %53, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @_memstream_skip_ws(%struct._memstream*) #1

declare dso_local i32 @_memstream_getc(%struct._memstream*) #1

declare dso_local i32 @_memstream_ungetc(%struct._memstream*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @_bcs_isspace(i32) #1

declare dso_local i32 @_citrus_prop_read_character_common(%struct._memstream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
