; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_relink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_relink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32 }
%struct.roff_node = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_node_relink(%struct.roff_man* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %6 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %7 = call i32 @roff_node_unlink(%struct.roff_man* %5, %struct.roff_node* %6)
  %8 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %11 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %13 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %14 = call i32 @roff_node_append(%struct.roff_man* %12, %struct.roff_node* %13)
  ret void
}

declare dso_local i32 @roff_node_unlink(%struct.roff_man*, %struct.roff_node*) #1

declare dso_local i32 @roff_node_append(%struct.roff_man*, %struct.roff_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
