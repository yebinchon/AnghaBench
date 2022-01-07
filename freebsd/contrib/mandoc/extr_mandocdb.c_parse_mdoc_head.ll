; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64 }

@ROFFT_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_head(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca %struct.mpage*, align 8
  %5 = alloca %struct.roff_meta*, align 8
  %6 = alloca %struct.roff_node*, align 8
  store %struct.mpage* %0, %struct.mpage** %4, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %5, align 8
  store %struct.roff_node* %2, %struct.roff_node** %6, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %8 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ROFFT_HEAD, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
