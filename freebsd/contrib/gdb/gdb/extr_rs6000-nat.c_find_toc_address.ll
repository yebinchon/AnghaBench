; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_find_toc_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-nat.c_find_toc_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap = type { i64, i64, i64, %struct.objfile*, %struct.vmap* }
%struct.objfile = type { i32 }

@vmap = common dso_local global %struct.vmap* null, align 8
@symfile_objfile = common dso_local global %struct.objfile* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unable to find TOC entry for pc %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_toc_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_toc_address(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.vmap*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.vmap*, %struct.vmap** @vmap, align 8
  store %struct.vmap* %5, %struct.vmap** %4, align 8
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.vmap*, %struct.vmap** %4, align 8
  %8 = icmp ne %struct.vmap* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.vmap*, %struct.vmap** %4, align 8
  %12 = getelementptr inbounds %struct.vmap, %struct.vmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.vmap*, %struct.vmap** %4, align 8
  %18 = getelementptr inbounds %struct.vmap, %struct.vmap* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.vmap*, %struct.vmap** %4, align 8
  %23 = getelementptr inbounds %struct.vmap, %struct.vmap* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vmap*, %struct.vmap** %4, align 8
  %26 = getelementptr inbounds %struct.vmap, %struct.vmap* %25, i32 0, i32 3
  %27 = load %struct.objfile*, %struct.objfile** %26, align 8
  %28 = icmp eq %struct.objfile* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.vmap*, %struct.vmap** %4, align 8
  %33 = getelementptr inbounds %struct.vmap, %struct.vmap* %32, i32 0, i32 3
  %34 = load %struct.objfile*, %struct.objfile** %33, align 8
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi %struct.objfile* [ %30, %29 ], [ %34, %31 ]
  %37 = call i64 @get_toc_offset(%struct.objfile* %36)
  %38 = add nsw i64 %24, %37
  store i64 %38, i64* %2, align 8
  br label %48

39:                                               ; preds = %15, %9
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.vmap*, %struct.vmap** %4, align 8
  %42 = getelementptr inbounds %struct.vmap, %struct.vmap* %41, i32 0, i32 4
  %43 = load %struct.vmap*, %struct.vmap** %42, align 8
  store %struct.vmap* %43, %struct.vmap** %4, align 8
  br label %6

44:                                               ; preds = %6
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @local_hex_string(i64 %45)
  %47 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @get_toc_offset(%struct.objfile*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @local_hex_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
