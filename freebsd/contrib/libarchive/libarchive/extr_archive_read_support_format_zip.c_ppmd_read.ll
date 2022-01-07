; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_ppmd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_ppmd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.zip = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.archive_read* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ppmd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppmd_read(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.zip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  store %struct.archive_read* %11, %struct.archive_read** %4, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.zip*
  store %struct.zip* %17, %struct.zip** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %19 = call i32* @__archive_read_ahead(%struct.archive_read* %18, i32 1, i32* %6)
  store i32* %19, i32** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.zip*, %struct.zip** %5, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %27 = call i32 @__archive_read_consume(%struct.archive_read* %26, i32 1)
  %28 = load %struct.zip*, %struct.zip** %5, align 8
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
