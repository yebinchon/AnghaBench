; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_rew_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_rew_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node* }
%struct.roff_node = type { i64, i32, %struct.roff_node* }

@ROFFT_ELEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, i32)* @rew_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rew_elem(%struct.roff_man* %0, i32 %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %7 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %6, i32 0, i32 0
  %8 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  store %struct.roff_node* %8, %struct.roff_node** %5, align 8
  %9 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROFFT_ELEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 2
  %17 = load %struct.roff_node*, %struct.roff_node** %16, align 8
  store %struct.roff_node* %17, %struct.roff_node** %5, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %20 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ROFFT_ELEM, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %34 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %35 = call i32 @rew_last(%struct.roff_man* %33, %struct.roff_node* %34)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rew_last(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
