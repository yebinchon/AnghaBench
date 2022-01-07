; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_get_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_get_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.TYPE_2__, %struct.isoent* }
%struct.TYPE_2__ = type { %struct.extr_rec*, %struct.extr_rec**, %struct.extr_rec* }
%struct.extr_rec = type { i32, i32, i8*, %struct.extr_rec* }

@DR_SAFETY = common dso_local global i64 0, align 8
@LOGICAL_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.isoent*, i32*, i32*, i32*)* @extra_get_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extra_get_record(%struct.isoent* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.extr_rec*, align 8
  store %struct.isoent* %0, %struct.isoent** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.isoent*, %struct.isoent** %6, align 8
  %12 = getelementptr inbounds %struct.isoent, %struct.isoent* %11, i32 0, i32 1
  %13 = load %struct.isoent*, %struct.isoent** %12, align 8
  store %struct.isoent* %13, %struct.isoent** %6, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load %struct.isoent*, %struct.isoent** %6, align 8
  %18 = getelementptr inbounds %struct.isoent, %struct.isoent* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.extr_rec*, %struct.extr_rec** %19, align 8
  store %struct.extr_rec* %20, %struct.extr_rec** %10, align 8
  %21 = load i64, i64* @DR_SAFETY, align 8
  %22 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %23 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %24 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %22, %26
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %31 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %30, i32 0, i32 3
  %32 = load %struct.extr_rec*, %struct.extr_rec** %31, align 8
  store %struct.extr_rec* %32, %struct.extr_rec** %10, align 8
  br label %33

33:                                               ; preds = %29, %16
  br label %84

34:                                               ; preds = %4
  %35 = load %struct.isoent*, %struct.isoent** %6, align 8
  %36 = call %struct.extr_rec* @extra_last_record(%struct.isoent* %35)
  store %struct.extr_rec* %36, %struct.extr_rec** %10, align 8
  %37 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %38 = icmp eq %struct.extr_rec* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* @DR_SAFETY, align 8
  %41 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %42 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %43 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %41, %45
  %47 = icmp sgt i64 %40, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %39, %34
  %49 = call %struct.extr_rec* @malloc(i32 24)
  store %struct.extr_rec* %49, %struct.extr_rec** %10, align 8
  %50 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %51 = icmp eq %struct.extr_rec* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i8* null, i8** %5, align 8
  br label %132

53:                                               ; preds = %48
  %54 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %55 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %57 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %59 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %58, i32 0, i32 3
  store %struct.extr_rec* null, %struct.extr_rec** %59, align 8
  %60 = load %struct.isoent*, %struct.isoent** %6, align 8
  %61 = getelementptr inbounds %struct.isoent, %struct.isoent* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load %struct.extr_rec**, %struct.extr_rec*** %62, align 8
  %64 = icmp eq %struct.extr_rec** %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load %struct.isoent*, %struct.isoent** %6, align 8
  %67 = getelementptr inbounds %struct.isoent, %struct.isoent* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load %struct.isoent*, %struct.isoent** %6, align 8
  %70 = getelementptr inbounds %struct.isoent, %struct.isoent* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.extr_rec** %68, %struct.extr_rec*** %71, align 8
  br label %72

72:                                               ; preds = %65, %53
  %73 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %74 = load %struct.isoent*, %struct.isoent** %6, align 8
  %75 = getelementptr inbounds %struct.isoent, %struct.isoent* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load %struct.extr_rec**, %struct.extr_rec*** %76, align 8
  store %struct.extr_rec* %73, %struct.extr_rec** %77, align 8
  %78 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %79 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %78, i32 0, i32 3
  %80 = load %struct.isoent*, %struct.isoent** %6, align 8
  %81 = getelementptr inbounds %struct.isoent, %struct.isoent* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store %struct.extr_rec** %79, %struct.extr_rec*** %82, align 8
  br label %83

83:                                               ; preds = %72, %39
  br label %84

84:                                               ; preds = %83, %33
  %85 = load i64, i64* @LOGICAL_BLOCK_SIZE, align 8
  %86 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %87 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %85, %89
  %91 = load i64, i64* @DR_SAFETY, align 8
  %92 = sub nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %84
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %99, %84
  %104 = load i32*, i32** %8, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %108 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32*, i32** %9, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %116 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %121 = load %struct.isoent*, %struct.isoent** %6, align 8
  %122 = getelementptr inbounds %struct.isoent, %struct.isoent* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store %struct.extr_rec* %120, %struct.extr_rec** %123, align 8
  %124 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %125 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.extr_rec*, %struct.extr_rec** %10, align 8
  %128 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  store i8* %131, i8** %5, align 8
  br label %132

132:                                              ; preds = %119, %52
  %133 = load i8*, i8** %5, align 8
  ret i8* %133
}

declare dso_local %struct.extr_rec* @extra_last_record(%struct.isoent*) #1

declare dso_local %struct.extr_rec* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
