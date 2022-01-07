; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_space_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_space_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_SPACE_NUMTYPES = common dso_local global i32 0, align 4
@astat_data_size = common dso_local global i32 0, align 4
@astat_metadata_size = common dso_local global i32 0, align 4
@astat_bonus_size = common dso_local global i32 0, align 4
@astat_dnode_size = common dso_local global i32 0, align 4
@astat_dbuf_size = common dso_local global i32 0, align 4
@astat_hdr_size = common dso_local global i32 0, align 4
@astat_l2_hdr_size = common dso_local global i32 0, align 4
@arc_meta_used = common dso_local global i32 0, align 4
@arc_meta_max = common dso_local global i64 0, align 8
@arc_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_space_return(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ARC_SPACE_NUMTYPES, align 4
  %10 = icmp slt i32 %8, %9
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %44 [
    i32 133, label %16
    i32 128, label %20
    i32 134, label %24
    i32 131, label %28
    i32 132, label %32
    i32 130, label %36
    i32 129, label %40
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @aggsum_add(i32* @astat_data_size, i32 %18)
  br label %44

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @aggsum_add(i32* @astat_metadata_size, i32 %22)
  br label %44

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @aggsum_add(i32* @astat_bonus_size, i32 %26)
  br label %44

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @aggsum_add(i32* @astat_dnode_size, i32 %30)
  br label %44

32:                                               ; preds = %11
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 @aggsum_add(i32* @astat_dbuf_size, i32 %34)
  br label %44

36:                                               ; preds = %11
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i32 @aggsum_add(i32* @astat_hdr_size, i32 %38)
  br label %44

40:                                               ; preds = %11
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @aggsum_add(i32* @astat_l2_hdr_size, i32 %42)
  br label %44

44:                                               ; preds = %11, %40, %36, %32, %28, %24, %20, %16
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 133
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @aggsum_compare(i32* @arc_meta_used, i32 %48)
  %50 = icmp sge i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  %53 = load i64, i64* @arc_meta_max, align 8
  %54 = call i64 @aggsum_upper_bound(i32* @arc_meta_used)
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = call i64 @aggsum_upper_bound(i32* @arc_meta_used)
  store i64 %57, i64* @arc_meta_max, align 8
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @aggsum_add(i32* @arc_meta_used, i32 %60)
  br label %62

62:                                               ; preds = %58, %44
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @aggsum_compare(i32* @arc_size, i32 %63)
  %65 = icmp sge i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @aggsum_add(i32* @arc_size, i32 %69)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @aggsum_add(i32*, i32) #1

declare dso_local i64 @aggsum_compare(i32*, i32) #1

declare dso_local i64 @aggsum_upper_bound(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
