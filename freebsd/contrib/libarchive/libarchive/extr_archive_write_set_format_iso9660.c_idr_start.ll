; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.idr = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32** }
%struct.archive_rb_tree_ops = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.idr*, i32, i32, i32, i32, %struct.archive_rb_tree_ops*)* @idr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_start(%struct.archive_write* %0, %struct.idr* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.archive_rb_tree_ops* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_write*, align 8
  %10 = alloca %struct.idr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.archive_rb_tree_ops*, align 8
  %16 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %9, align 8
  store %struct.idr* %1, %struct.idr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.archive_rb_tree_ops* %6, %struct.archive_rb_tree_ops** %15, align 8
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.archive_write*, %struct.archive_write** %9, align 8
  %19 = load %struct.idr*, %struct.idr** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @idr_ensure_poolsize(%struct.archive_write* %18, %struct.idr* %19, i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %8, align 4
  br label %50

27:                                               ; preds = %7
  %28 = load %struct.idr*, %struct.idr** %10, align 8
  %29 = getelementptr inbounds %struct.idr, %struct.idr* %28, i32 0, i32 4
  %30 = load %struct.archive_rb_tree_ops*, %struct.archive_rb_tree_ops** %15, align 8
  %31 = call i32 @__archive_rb_tree_init(i32* %29, %struct.archive_rb_tree_ops* %30)
  %32 = load %struct.idr*, %struct.idr** %10, align 8
  %33 = getelementptr inbounds %struct.idr, %struct.idr* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.idr*, %struct.idr** %10, align 8
  %36 = getelementptr inbounds %struct.idr, %struct.idr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.idr*, %struct.idr** %10, align 8
  %39 = getelementptr inbounds %struct.idr, %struct.idr* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32** %37, i32*** %40, align 8
  %41 = load %struct.idr*, %struct.idr** %10, align 8
  %42 = getelementptr inbounds %struct.idr, %struct.idr* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.idr*, %struct.idr** %10, align 8
  %45 = getelementptr inbounds %struct.idr, %struct.idr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.idr*, %struct.idr** %10, align 8
  %48 = getelementptr inbounds %struct.idr, %struct.idr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %27, %25
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @idr_ensure_poolsize(%struct.archive_write*, %struct.idr*, i32) #1

declare dso_local i32 @__archive_rb_tree_init(i32*, %struct.archive_rb_tree_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
