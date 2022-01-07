; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_synopsis_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_synopsis_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roff_node = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NODE_SYNPRETTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_node*)* @synopsis_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synopsis_pre(%struct.termp* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %6 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* null, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @NODE_SYNPRETTY, align 4
  %11 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %12 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %2
  br label %71

17:                                               ; preds = %9
  %18 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %17
  %28 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 130, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %34 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 131, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 132, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.termp*, %struct.termp** %3, align 8
  %44 = call i32 @term_newln(%struct.termp* %43)
  br label %71

45:                                               ; preds = %37, %32, %27, %17
  %46 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %47 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  switch i64 %50, label %68 [
    i64 133, label %51
    i64 132, label %51
    i64 131, label %51
    i64 129, label %51
    i64 128, label %51
    i64 130, label %54
  ]

51:                                               ; preds = %45, %45, %45, %45, %45
  %52 = load %struct.termp*, %struct.termp** %3, align 8
  %53 = call i32 @term_vspace(%struct.termp* %52)
  br label %71

54:                                               ; preds = %45
  %55 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %56 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 132, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 131, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.termp*, %struct.termp** %3, align 8
  %66 = call i32 @term_vspace(%struct.termp* %65)
  br label %71

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %45, %67
  %69 = load %struct.termp*, %struct.termp** %3, align 8
  %70 = call i32 @term_newln(%struct.termp* %69)
  br label %71

71:                                               ; preds = %16, %42, %68, %64, %51
  ret void
}

declare dso_local i32 @term_newln(%struct.termp*) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
