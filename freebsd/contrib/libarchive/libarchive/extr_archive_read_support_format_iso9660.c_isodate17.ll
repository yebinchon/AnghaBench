; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isodate17.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isodate17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i8, i8, i8, i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @isodate17 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isodate17(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tm, align 1
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @memset(%struct.tm* %4, i32 0, i32 6)
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = sub nsw i32 %11, 48
  %13 = mul nsw i32 %12, 1000
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %17, 48
  %19 = mul nsw i32 %18, 100
  %20 = add nsw i32 %13, %19
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %24, 48
  %26 = mul nsw i32 %25, 10
  %27 = add nsw i32 %20, %26
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = add nsw i32 %27, %32
  %34 = sub nsw i32 %33, 1900
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  %42 = mul nsw i32 %41, 10
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %46, 48
  %48 = add nsw i32 %42, %47
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i8 %49, i8* %50, align 1
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 6
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = mul nsw i32 %55, 10
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 7
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = add nsw i32 %56, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i8 %63, i8* %64, align 1
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  %70 = mul nsw i32 %69, 10
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 9
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  %76 = add nsw i32 %70, %75
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 10
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  %84 = mul nsw i32 %83, 10
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 11
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = add nsw i32 %84, %89
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  store i8 %91, i8* %92, align 1
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 12
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %96, 48
  %98 = mul nsw i32 %97, 10
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 13
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %102, 48
  %104 = add nsw i32 %98, %103
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i8 %105, i8* %106, align 1
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 16
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp sgt i32 %111, -48
  br i1 %112, label %113, label %132

113:                                              ; preds = %1
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 52
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = sdiv i32 %117, 4
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, %118
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %119, align 1
  %124 = load i32, i32* %5, align 4
  %125 = srem i32 %124, 4
  %126 = mul nsw i32 %125, 15
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %129, %126
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 1
  br label %132

132:                                              ; preds = %116, %113, %1
  %133 = call i64 @time_from_tm(%struct.tm* %4)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp eq i64 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i64 0, i64* %2, align 8
  br label %139

137:                                              ; preds = %132
  %138 = load i64, i64* %6, align 8
  store i64 %138, i64* %2, align 8
  br label %139

139:                                              ; preds = %137, %136
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @time_from_tm(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
