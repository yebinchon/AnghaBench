; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init_pv_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_init_pv_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NPV_LIST_LOCKS = common dso_local global i64 0, align 8
@pv_list_locks = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"pmap pv list\00", align 1
@vm_phys_segs = common dso_local global %struct.TYPE_3__* null, align 8
@vm_phys_nsegs = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pv_table = common dso_local global %struct.md_page* null, align 8
@pv_dummy = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmap_init_pv_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_init_pv_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %13, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @NPV_LIST_LOCKS, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32*, i32** @pv_list_locks, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = call i32 @rw_init(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %2, align 8
  br label %4

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_phys_segs, align 8
  %18 = load i32, i32* @vm_phys_nsegs, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NBPDR, align 4
  %25 = call i64 @howmany(i32 %23, i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @round_page(i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @M_WAITOK, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @kmem_malloc(i32 %33, i32 %36)
  %38 = inttoptr i64 %37 to %struct.md_page*
  store %struct.md_page* %38, %struct.md_page** @pv_table, align 8
  store i64 0, i64* %2, align 8
  br label %39

39:                                               ; preds = %49, %16
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* %3, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.md_page*, %struct.md_page** @pv_table, align 8
  %45 = load i64, i64* %2, align 8
  %46 = getelementptr inbounds %struct.md_page, %struct.md_page* %44, i64 %45
  %47 = getelementptr inbounds %struct.md_page, %struct.md_page* %46, i32 0, i32 0
  %48 = call i32 @TAILQ_INIT(i32* %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %2, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %2, align 8
  br label %39

52:                                               ; preds = %39
  %53 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pv_dummy, i32 0, i32 0))
  ret void
}

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @kmem_malloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
