; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i32* }

@ROFFT_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Fo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Fo(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_meta*, align 8
  %7 = alloca %struct.roff_node*, align 8
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %6, align 8
  store %struct.roff_node* %2, %struct.roff_node** %7, align 8
  %8 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ROFFT_HEAD, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.mpage*, %struct.mpage** %5, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @parse_mdoc_fname(%struct.mpage* %20, i32* %23)
  br label %25

25:                                               ; preds = %19, %14
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @parse_mdoc_fname(%struct.mpage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
