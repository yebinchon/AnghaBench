; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_break_intermediate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_break_intermediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, i64, i32, %struct.roff_node* }

@ROFFT_BLOCK = common dso_local global i64 0, align 8
@ROFFT_HEAD = common dso_local global i64 0, align 8
@ROFFT_BODY = common dso_local global i64 0, align 8
@ENDBODY_NOT = common dso_local global i64 0, align 8
@NODE_VALID = common dso_local global i32 0, align 4
@NODE_BROKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_node*, %struct.roff_node*)* @break_intermediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_intermediate(%struct.roff_node* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_node*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_node* %0, %struct.roff_node** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %6 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %7 = icmp ne %struct.roff_node* %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROFFT_BLOCK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ROFFT_HEAD, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROFFT_BODY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ENDBODY_NOT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %20
  %33 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 3
  %35 = load %struct.roff_node*, %struct.roff_node** %34, align 8
  store %struct.roff_node* %35, %struct.roff_node** %3, align 8
  br label %36

36:                                               ; preds = %32, %26, %14, %8, %2
  br label %37

37:                                               ; preds = %54, %36
  %38 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %39 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %40 = icmp ne %struct.roff_node* %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NODE_VALID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @NODE_BROKEN, align 4
  %50 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %51 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %56 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %55, i32 0, i32 3
  %57 = load %struct.roff_node*, %struct.roff_node** %56, align 8
  store %struct.roff_node* %57, %struct.roff_node** %3, align 8
  br label %37

58:                                               ; preds = %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
