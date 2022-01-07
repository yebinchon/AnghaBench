; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_synthesize_ino_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_synthesize_ino_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio*, %struct.archive_entry*)* @synthesize_ino_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synthesize_ino_value(%struct.cpio* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpio*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.cpio* %0, %struct.cpio** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %11 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %12 = call i64 @archive_entry_ino64(%struct.archive_entry* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %18 = call i32 @archive_entry_nlink(%struct.archive_entry* %17)
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.cpio*, %struct.cpio** %4, align 8
  %22 = getelementptr inbounds %struct.cpio, %struct.cpio* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %123

26:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.cpio*, %struct.cpio** %4, align 8
  %30 = getelementptr inbounds %struct.cpio, %struct.cpio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load %struct.cpio*, %struct.cpio** %4, align 8
  %35 = getelementptr inbounds %struct.cpio, %struct.cpio* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load %struct.cpio*, %struct.cpio** %4, align 8
  %45 = getelementptr inbounds %struct.cpio, %struct.cpio* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  br label %123

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.cpio*, %struct.cpio** %4, align 8
  %57 = getelementptr inbounds %struct.cpio, %struct.cpio* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.cpio*, %struct.cpio** %4, align 8
  %62 = getelementptr inbounds %struct.cpio, %struct.cpio* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cpio*, %struct.cpio** %4, align 8
  %65 = getelementptr inbounds %struct.cpio, %struct.cpio* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ule i64 %63, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %55
  %69 = load %struct.cpio*, %struct.cpio** %4, align 8
  %70 = getelementptr inbounds %struct.cpio, %struct.cpio* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %71, 512
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %79

74:                                               ; preds = %68
  %75 = load %struct.cpio*, %struct.cpio** %4, align 8
  %76 = getelementptr inbounds %struct.cpio, %struct.cpio* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %77, 2
  br label %79

79:                                               ; preds = %74, %73
  %80 = phi i64 [ 512, %73 ], [ %78, %74 ]
  store i64 %80, i64* %9, align 8
  %81 = load %struct.cpio*, %struct.cpio** %4, align 8
  %82 = getelementptr inbounds %struct.cpio, %struct.cpio* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = mul i64 16, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @realloc(%struct.TYPE_2__* %83, i32 %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  store i32 -1, i32* %3, align 4
  br label %123

91:                                               ; preds = %79
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.cpio*, %struct.cpio** %4, align 8
  %94 = getelementptr inbounds %struct.cpio, %struct.cpio* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.TYPE_2__*
  %97 = load %struct.cpio*, %struct.cpio** %4, align 8
  %98 = getelementptr inbounds %struct.cpio, %struct.cpio* %97, i32 0, i32 2
  store %struct.TYPE_2__* %96, %struct.TYPE_2__** %98, align 8
  br label %99

99:                                               ; preds = %91, %55
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.cpio*, %struct.cpio** %4, align 8
  %102 = getelementptr inbounds %struct.cpio, %struct.cpio* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load %struct.cpio*, %struct.cpio** %4, align 8
  %105 = getelementptr inbounds %struct.cpio, %struct.cpio* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i64 %100, i64* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.cpio*, %struct.cpio** %4, align 8
  %111 = getelementptr inbounds %struct.cpio, %struct.cpio* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load %struct.cpio*, %struct.cpio** %4, align 8
  %114 = getelementptr inbounds %struct.cpio, %struct.cpio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %109, i32* %117, align 8
  %118 = load %struct.cpio*, %struct.cpio** %4, align 8
  %119 = getelementptr inbounds %struct.cpio, %struct.cpio* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %99, %90, %43, %20, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i64 @archive_entry_ino64(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i8* @realloc(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
