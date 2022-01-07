; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c__sparse_list_add_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c__sparse_list_add_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pax = type { %struct.sparse_block*, %struct.sparse_block* }
%struct.sparse_block = type { i32, %struct.sparse_block*, i8*, i8* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pax*, i8*, i8*, i32)* @_sparse_list_add_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sparse_list_add_block(%struct.pax* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pax*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sparse_block*, align 8
  store %struct.pax* %0, %struct.pax** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i64 @malloc(i32 32)
  %12 = inttoptr i64 %11 to %struct.sparse_block*
  store %struct.sparse_block* %12, %struct.sparse_block** %10, align 8
  %13 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %14 = icmp eq %struct.sparse_block* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %16, i32* %5, align 4
  br label %55

17:                                               ; preds = %4
  %18 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %19 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %18, i32 0, i32 1
  store %struct.sparse_block* null, %struct.sparse_block** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %22 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %25 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %28 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pax*, %struct.pax** %6, align 8
  %30 = getelementptr inbounds %struct.pax, %struct.pax* %29, i32 0, i32 1
  %31 = load %struct.sparse_block*, %struct.sparse_block** %30, align 8
  %32 = icmp eq %struct.sparse_block* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %17
  %34 = load %struct.pax*, %struct.pax** %6, align 8
  %35 = getelementptr inbounds %struct.pax, %struct.pax* %34, i32 0, i32 0
  %36 = load %struct.sparse_block*, %struct.sparse_block** %35, align 8
  %37 = icmp eq %struct.sparse_block* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33, %17
  %39 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %40 = load %struct.pax*, %struct.pax** %6, align 8
  %41 = getelementptr inbounds %struct.pax, %struct.pax* %40, i32 0, i32 0
  store %struct.sparse_block* %39, %struct.sparse_block** %41, align 8
  %42 = load %struct.pax*, %struct.pax** %6, align 8
  %43 = getelementptr inbounds %struct.pax, %struct.pax* %42, i32 0, i32 1
  store %struct.sparse_block* %39, %struct.sparse_block** %43, align 8
  br label %53

44:                                               ; preds = %33
  %45 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %46 = load %struct.pax*, %struct.pax** %6, align 8
  %47 = getelementptr inbounds %struct.pax, %struct.pax* %46, i32 0, i32 0
  %48 = load %struct.sparse_block*, %struct.sparse_block** %47, align 8
  %49 = getelementptr inbounds %struct.sparse_block, %struct.sparse_block* %48, i32 0, i32 1
  store %struct.sparse_block* %45, %struct.sparse_block** %49, align 8
  %50 = load %struct.sparse_block*, %struct.sparse_block** %10, align 8
  %51 = load %struct.pax*, %struct.pax** %6, align 8
  %52 = getelementptr inbounds %struct.pax, %struct.pax* %51, i32 0, i32 0
  store %struct.sparse_block* %50, %struct.sparse_block** %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
