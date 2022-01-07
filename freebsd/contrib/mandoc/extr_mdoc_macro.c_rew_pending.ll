; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_rew_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_rew_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.roff_node*, i32 }
%struct.roff_node = type { i32, i32, %struct.roff_node*, i32, i32, i32 }

@MDOC_Ss = common dso_local global i32 0, align 4
@ROFF_NONOFILL = common dso_local global i32 0, align 4
@NODE_BROKEN = common dso_local global i32 0, align 4
@NODE_ENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_man*, %struct.roff_node*)* @rew_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rew_pending(%struct.roff_man* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  br label %5

5:                                                ; preds = %85, %2
  %6 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %8 = call i32 @rew_last(%struct.roff_man* %6, %struct.roff_node* %7)
  %9 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %10 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %9, i32 0, i32 0
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  %12 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %13 = icmp eq %struct.roff_node* %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %5
  %15 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %44 [
    i32 128, label %18
    i32 129, label %43
  ]

18:                                               ; preds = %14
  %19 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %20 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %27 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @roff_body_alloc(%struct.roff_man* %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MDOC_Ss, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* @ROFF_NONOFILL, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %39 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %35, %18
  br label %45

43:                                               ; preds = %14
  br label %45

44:                                               ; preds = %14
  br label %86

45:                                               ; preds = %43, %42
  %46 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %47 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NODE_BROKEN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %86

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %5
  %55 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %56 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %55, i32 0, i32 0
  %57 = load %struct.roff_node*, %struct.roff_node** %56, align 8
  store %struct.roff_node* %57, %struct.roff_node** %4, align 8
  br label %58

58:                                               ; preds = %54, %53
  br label %59

59:                                               ; preds = %84, %58
  %60 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 2
  %62 = load %struct.roff_node*, %struct.roff_node** %61, align 8
  store %struct.roff_node* %62, %struct.roff_node** %4, align 8
  %63 = icmp eq %struct.roff_node* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %86

65:                                               ; preds = %59
  %66 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %67 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 129
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %72 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %84

75:                                               ; preds = %70, %65
  %76 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %77 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NODE_ENDED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %85

83:                                               ; preds = %75
  br label %86

84:                                               ; preds = %70
  br label %59

85:                                               ; preds = %82
  br label %5

86:                                               ; preds = %83, %64, %52, %44
  ret void
}

declare dso_local i32 @rew_last(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local i32 @roff_body_alloc(%struct.roff_man*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
