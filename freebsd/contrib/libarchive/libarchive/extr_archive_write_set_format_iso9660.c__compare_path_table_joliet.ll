; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__compare_path_table_joliet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__compare_path_table_joliet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_compare_path_table_joliet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_compare_path_table_joliet(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = inttoptr i64 %13 to %struct.isoent**
  %15 = load %struct.isoent*, %struct.isoent** %14, align 8
  store %struct.isoent* %15, %struct.isoent** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = inttoptr i64 %17 to %struct.isoent**
  %19 = load %struct.isoent*, %struct.isoent** %18, align 8
  store %struct.isoent* %19, %struct.isoent** %7, align 8
  %20 = load %struct.isoent*, %struct.isoent** %6, align 8
  %21 = getelementptr inbounds %struct.isoent, %struct.isoent* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.isoent*, %struct.isoent** %7, align 8
  %26 = getelementptr inbounds %struct.isoent, %struct.isoent* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %24, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %142

35:                                               ; preds = %2
  %36 = load %struct.isoent*, %struct.isoent** %6, align 8
  %37 = getelementptr inbounds %struct.isoent, %struct.isoent* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load %struct.isoent*, %struct.isoent** %7, align 8
  %41 = getelementptr inbounds %struct.isoent, %struct.isoent* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %9, align 8
  %44 = load %struct.isoent*, %struct.isoent** %6, align 8
  %45 = getelementptr inbounds %struct.isoent, %struct.isoent* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.isoent*, %struct.isoent** %7, align 8
  %49 = getelementptr inbounds %struct.isoent, %struct.isoent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %35
  %53 = load %struct.isoent*, %struct.isoent** %7, align 8
  %54 = getelementptr inbounds %struct.isoent, %struct.isoent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %35
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @memcmp(i8* %57, i8* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %142

65:                                               ; preds = %56
  %66 = load %struct.isoent*, %struct.isoent** %6, align 8
  %67 = getelementptr inbounds %struct.isoent, %struct.isoent* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.isoent*, %struct.isoent** %7, align 8
  %70 = getelementptr inbounds %struct.isoent, %struct.isoent* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %103

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %9, align 8
  %78 = load %struct.isoent*, %struct.isoent** %7, align 8
  %79 = getelementptr inbounds %struct.isoent, %struct.isoent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.isoent*, %struct.isoent** %6, align 8
  %82 = getelementptr inbounds %struct.isoent, %struct.isoent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %101, %73
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %11, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 0, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %142

101:                                              ; preds = %89
  br label %85

102:                                              ; preds = %85
  br label %141

103:                                              ; preds = %65
  %104 = load %struct.isoent*, %struct.isoent** %6, align 8
  %105 = getelementptr inbounds %struct.isoent, %struct.isoent* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.isoent*, %struct.isoent** %7, align 8
  %108 = getelementptr inbounds %struct.isoent, %struct.isoent* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %8, align 8
  %116 = load %struct.isoent*, %struct.isoent** %6, align 8
  %117 = getelementptr inbounds %struct.isoent, %struct.isoent* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.isoent*, %struct.isoent** %7, align 8
  %120 = getelementptr inbounds %struct.isoent, %struct.isoent* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %138, %111
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %11, align 4
  %126 = icmp ne i32 %124, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  %130 = load i8, i8* %128, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 0, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 -1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  store i32 %137, i32* %3, align 4
  br label %142

138:                                              ; preds = %127
  br label %123

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %102
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %133, %95, %63, %33
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
