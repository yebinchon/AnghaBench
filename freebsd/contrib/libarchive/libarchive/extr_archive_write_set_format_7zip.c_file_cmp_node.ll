; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_file_cmp_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c_file_cmp_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { i32 }
%struct.file = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* @file_cmp_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_cmp_node(%struct.archive_rb_node* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %4, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %5, align 8
  %8 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %9 = bitcast %struct.archive_rb_node* %8 to %struct.file*
  store %struct.file* %9, %struct.file** %6, align 8
  %10 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %11 = bitcast %struct.archive_rb_node* %10 to %struct.file*
  store %struct.file* %11, %struct.file** %7, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.file*, %struct.file** %7, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcmp(i32 %22, i32 %25, i64 %28)
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 -1
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
