; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_space_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_space_consume.c"
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
@arc_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_space_consume(i32 %0, i32 %1) #0 {
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
  switch i32 %15, label %37 [
    i32 133, label %16
    i32 128, label %19
    i32 134, label %22
    i32 131, label %25
    i32 132, label %28
    i32 130, label %31
    i32 129, label %34
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @aggsum_add(i32* @astat_data_size, i32 %17)
  br label %37

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @aggsum_add(i32* @astat_metadata_size, i32 %20)
  br label %37

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @aggsum_add(i32* @astat_bonus_size, i32 %23)
  br label %37

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @aggsum_add(i32* @astat_dnode_size, i32 %26)
  br label %37

28:                                               ; preds = %11
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @aggsum_add(i32* @astat_dbuf_size, i32 %29)
  br label %37

31:                                               ; preds = %11
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @aggsum_add(i32* @astat_hdr_size, i32 %32)
  br label %37

34:                                               ; preds = %11
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @aggsum_add(i32* @astat_l2_hdr_size, i32 %35)
  br label %37

37:                                               ; preds = %11, %34, %31, %28, %25, %22, %19, %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 133
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @aggsum_add(i32* @arc_meta_used, i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @aggsum_add(i32* @arc_size, i32 %44)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @aggsum_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
