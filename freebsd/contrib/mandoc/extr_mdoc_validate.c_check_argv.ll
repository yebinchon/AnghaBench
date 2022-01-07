; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_argv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_validate.c_check_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.roff_node = type { i32 }
%struct.mdoc_argv = type { i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, %struct.roff_node*, %struct.mdoc_argv*)* @check_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_argv(%struct.roff_man* %0, %struct.roff_node* %1, %struct.mdoc_argv* %2) #0 {
  %4 = alloca %struct.roff_man*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca %struct.mdoc_argv*, align 8
  %7 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %4, align 8
  store %struct.roff_node* %1, %struct.roff_node** %5, align 8
  store %struct.mdoc_argv* %2, %struct.mdoc_argv** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mdoc_argv*, %struct.mdoc_argv** %6, align 8
  %11 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.roff_man*, %struct.roff_man** %4, align 8
  %17 = load %struct.mdoc_argv*, %struct.mdoc_argv** %6, align 8
  %18 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mdoc_argv*, %struct.mdoc_argv** %6, align 8
  %21 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mdoc_argv*, %struct.mdoc_argv** %6, align 8
  %24 = getelementptr inbounds %struct.mdoc_argv, %struct.mdoc_argv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @check_text(%struct.roff_man* %16, i32 %19, i32 %22, i32 %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @check_text(%struct.roff_man*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
