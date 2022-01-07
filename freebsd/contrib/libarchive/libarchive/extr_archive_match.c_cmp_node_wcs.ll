; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_cmp_node_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_cmp_node_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { i32 }
%struct.match_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* @cmp_node_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_node_wcs(%struct.archive_rb_node* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca %struct.match_file*, align 8
  %7 = alloca %struct.match_file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %4, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %5, align 8
  %10 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %11 = ptrtoint %struct.archive_rb_node* %10 to i64
  %12 = inttoptr i64 %11 to %struct.match_file*
  store %struct.match_file* %12, %struct.match_file** %6, align 8
  %13 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %14 = ptrtoint %struct.archive_rb_node* %13 to i64
  %15 = inttoptr i64 %14 to %struct.match_file*
  store %struct.match_file* %15, %struct.match_file** %7, align 8
  %16 = load %struct.match_file*, %struct.match_file** %6, align 8
  %17 = getelementptr inbounds %struct.match_file, %struct.match_file* %16, i32 0, i32 0
  %18 = call i32 @archive_mstring_get_wcs(i32* null, i32* %17, i32** %8)
  %19 = load %struct.match_file*, %struct.match_file** %7, align 8
  %20 = getelementptr inbounds %struct.match_file, %struct.match_file* %19, i32 0, i32 0
  %21 = call i32 @archive_mstring_get_wcs(i32* null, i32* %20, i32** %9)
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @wcscmp(i32* %30, i32* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %28, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @archive_mstring_get_wcs(i32*, i32*, i32**) #1

declare dso_local i32 @wcscmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
