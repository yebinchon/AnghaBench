; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_next_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_next_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }

@MAX_LINE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i8**, i64*, i64*, i64*)* @next_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_line(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64*, i64** %11, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %12, align 8
  br label %29

22:                                               ; preds = %5
  %23 = load i8**, i8*** %8, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %11, align 8
  %28 = call i64 @get_line_size(i8* %24, i64 %26, i64* %27)
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %22, %20
  br label %30

30:                                               ; preds = %120, %29
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %39, %34, %30
  %44 = phi i1 [ false, %34 ], [ false, %30 ], [ %42, %39 ]
  br i1 %44, label %45, label %121

45:                                               ; preds = %43
  %46 = load i64*, i64** %10, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  store i64 %50, i64* %14, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1023
  %54 = and i64 %53, 4294966272
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @MAX_LINE_LEN, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i64 -1, i64* %6, align 8
  br label %123

59:                                               ; preds = %45
  %60 = load i64, i64* %15, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 160
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %15, align 8
  %67 = shl i64 %66, 1
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = call i8* @__archive_read_ahead(%struct.archive_read* %69, i64 %70, i64* %71)
  %73 = load i8**, i8*** %8, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %8, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i64 0, i64* %6, align 8
  br label %123

84:                                               ; preds = %77
  %85 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %86 = load i64*, i64** %9, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = call i8* @__archive_read_ahead(%struct.archive_read* %85, i64 %87, i64* %88)
  %90 = load i8**, i8*** %8, align 8
  store i8* %89, i8** %90, align 8
  store i32 1, i32* %13, align 4
  br label %91

91:                                               ; preds = %84, %68
  %92 = load i64*, i64** %9, align 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64*, i64** %10, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i64, i64* %14, align 8
  %96 = load i8**, i8*** %8, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %95
  store i8* %98, i8** %96, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, %99
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %12, align 8
  store i64 %103, i64* %16, align 8
  %104 = load i8**, i8*** %8, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = sub nsw i64 %109, %110
  %112 = load i64*, i64** %11, align 8
  %113 = call i64 @get_line_size(i8* %107, i64 %111, i64* %112)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp sge i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %91
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %116, %91
  br label %30

121:                                              ; preds = %43
  %122 = load i64, i64* %12, align 8
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %121, %83, %58
  %124 = load i64, i64* %6, align 8
  ret i64 %124
}

declare dso_local i64 @get_line_size(i8*, i64, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
