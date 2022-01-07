; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_compress.c_getbits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_compress.c_getbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { i32, i64 }
%struct.private_data = type { i32, i64, i64, i32, i32, i32* }

@getbits.mask = internal constant [17 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255, i32 511, i32 1023, i32 2047, i32 4095, i32 8191, i32 16383, i32 32767, i32 65535], align 16
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter*, i32)* @getbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getbits(%struct.archive_read_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.private_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %10 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.private_data*
  store %struct.private_data* %12, %struct.private_data** %6, align 8
  br label %13

13:                                               ; preds = %65, %2
  %14 = load %struct.private_data*, %struct.private_data** %6, align 8
  %15 = getelementptr inbounds %struct.private_data, %struct.private_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %13
  %20 = load %struct.private_data*, %struct.private_data** %6, align 8
  %21 = getelementptr inbounds %struct.private_data, %struct.private_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %19
  %25 = load %struct.private_data*, %struct.private_data** %6, align 8
  %26 = getelementptr inbounds %struct.private_data, %struct.private_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %31 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.private_data*, %struct.private_data** %6, align 8
  %34 = getelementptr inbounds %struct.private_data, %struct.private_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @__archive_read_filter_consume(i32 %32, i64 %35)
  %37 = load %struct.private_data*, %struct.private_data** %6, align 8
  %38 = getelementptr inbounds %struct.private_data, %struct.private_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %29, %24
  %40 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %41 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @__archive_read_filter_ahead(i32 %42, i32 1, i64* %8)
  %44 = load %struct.private_data*, %struct.private_data** %6, align 8
  %45 = getelementptr inbounds %struct.private_data, %struct.private_data* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %111

49:                                               ; preds = %39
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.private_data*, %struct.private_data** %6, align 8
  %54 = getelementptr inbounds %struct.private_data, %struct.private_data* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %49
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %58, i32* %3, align 4
  br label %111

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.private_data*, %struct.private_data** %6, align 8
  %62 = getelementptr inbounds %struct.private_data, %struct.private_data* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.private_data*, %struct.private_data** %6, align 8
  %64 = getelementptr inbounds %struct.private_data, %struct.private_data* %63, i32 0, i32 2
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %19
  %66 = load %struct.private_data*, %struct.private_data** %6, align 8
  %67 = getelementptr inbounds %struct.private_data, %struct.private_data* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %67, align 8
  %70 = load i32, i32* %68, align 4
  %71 = load %struct.private_data*, %struct.private_data** %6, align 8
  %72 = getelementptr inbounds %struct.private_data, %struct.private_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %70, %73
  %75 = load %struct.private_data*, %struct.private_data** %6, align 8
  %76 = getelementptr inbounds %struct.private_data, %struct.private_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.private_data*, %struct.private_data** %6, align 8
  %80 = getelementptr inbounds %struct.private_data, %struct.private_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %80, align 8
  %83 = load %struct.private_data*, %struct.private_data** %6, align 8
  %84 = getelementptr inbounds %struct.private_data, %struct.private_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 8
  store i32 %86, i32* %84, align 8
  %87 = load %struct.private_data*, %struct.private_data** %6, align 8
  %88 = getelementptr inbounds %struct.private_data, %struct.private_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %13

91:                                               ; preds = %13
  %92 = load %struct.private_data*, %struct.private_data** %6, align 8
  %93 = getelementptr inbounds %struct.private_data, %struct.private_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.private_data*, %struct.private_data** %6, align 8
  %97 = getelementptr inbounds %struct.private_data, %struct.private_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = ashr i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.private_data*, %struct.private_data** %6, align 8
  %102 = getelementptr inbounds %struct.private_data, %struct.private_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [17 x i32], [17 x i32]* @getbits.mask, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %105, %109
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %91, %57, %48
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @__archive_read_filter_consume(i32, i64) #1

declare dso_local i32* @__archive_read_filter_ahead(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
