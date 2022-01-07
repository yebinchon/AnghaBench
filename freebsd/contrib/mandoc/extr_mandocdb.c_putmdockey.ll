; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_putmdockey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_putmdockey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_node = type { i32, i64, i32, %struct.roff_node*, %struct.roff_node* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, %struct.roff_node*, i32, i32)* @putmdockey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putmdockey(%struct.mpage* %0, %struct.roff_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_node* %1, %struct.roff_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %9

9:                                                ; preds = %46, %4
  %10 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %11 = icmp ne %struct.roff_node* null, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %46

20:                                               ; preds = %12
  %21 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 3
  %23 = load %struct.roff_node*, %struct.roff_node** %22, align 8
  %24 = icmp ne %struct.roff_node* null, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.mpage*, %struct.mpage** %5, align 8
  %27 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 3
  %29 = load %struct.roff_node*, %struct.roff_node** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  call void @putmdockey(%struct.mpage* %26, %struct.roff_node* %29, i32 %30, i32 %31)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ROFFT_TEXT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.mpage*, %struct.mpage** %5, align 8
  %40 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %41 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @putkey(%struct.mpage* %39, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 4
  %49 = load %struct.roff_node*, %struct.roff_node** %48, align 8
  store %struct.roff_node* %49, %struct.roff_node** %6, align 8
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @putkey(%struct.mpage*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
