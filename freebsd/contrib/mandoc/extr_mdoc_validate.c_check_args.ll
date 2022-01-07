; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.roff_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, %struct.roff_node*)* @check_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_args(%struct.roff_man* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %6 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %7 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp eq %struct.TYPE_2__* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @assert(i64 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %11
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %29 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @check_argv(%struct.roff_man* %28, %struct.roff_node* %29, i32* %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %10, %18
  ret void
}

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @check_argv(%struct.roff_man*, %struct.roff_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
