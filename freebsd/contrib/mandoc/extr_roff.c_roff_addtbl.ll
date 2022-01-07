; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_addtbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_addtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tbl_node = type { i32 }
%struct.roff_node = type { i32, %struct.tbl_span* }
%struct.tbl_span = type { i32 }

@MACROSET_MAN = common dso_local global i64 0, align 8
@ROFF_TS = common dso_local global i32 0, align 4
@ROFFT_TBL = common dso_local global i32 0, align 4
@TOKEN_NONE = common dso_local global i32 0, align 4
@NODE_VALID = common dso_local global i32 0, align 4
@NODE_ENDED = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32, %struct.tbl_node*)* @roff_addtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roff_addtbl(%struct.roff_man* %0, i32 %1, %struct.tbl_node* %2) #0 {
  %4 = alloca %struct.roff_man*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tbl_node*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca %struct.tbl_span*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tbl_node* %2, %struct.tbl_node** %6, align 8
  %9 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %10 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MACROSET_MAN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %17 = load i32, i32* @ROFF_TS, align 4
  %18 = call i32 @man_breakscope(%struct.roff_man* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %3
  br label %20

20:                                               ; preds = %24, %19
  %21 = load %struct.tbl_node*, %struct.tbl_node** %6, align 8
  %22 = call %struct.tbl_span* @tbl_span(%struct.tbl_node* %21)
  store %struct.tbl_span* %22, %struct.tbl_span** %8, align 8
  %23 = icmp ne %struct.tbl_span* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ROFFT_TBL, align 4
  %28 = load i32, i32* @TOKEN_NONE, align 4
  %29 = call %struct.roff_node* @roff_node_alloc(%struct.roff_man* %25, i32 %26, i32 0, i32 %27, i32 %28)
  store %struct.roff_node* %29, %struct.roff_node** %7, align 8
  %30 = load %struct.tbl_span*, %struct.tbl_span** %8, align 8
  %31 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 1
  store %struct.tbl_span* %30, %struct.tbl_span** %32, align 8
  %33 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %34 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %35 = call i32 @roff_node_append(%struct.roff_man* %33, %struct.roff_node* %34)
  %36 = load i32, i32* @NODE_VALID, align 4
  %37 = load i32, i32* @NODE_ENDED, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %40 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %44 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %45 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %20

46:                                               ; preds = %20
  ret void
}

declare dso_local i32 @man_breakscope(%struct.roff_man*, i32) #1

declare dso_local %struct.tbl_span* @tbl_span(%struct.tbl_node*) #1

declare dso_local %struct.roff_node* @roff_node_alloc(%struct.roff_man*, i32, i32, i32, i32) #1

declare dso_local i32 @roff_node_append(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
