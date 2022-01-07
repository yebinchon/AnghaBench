; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.roff_node* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@TYPE_Fa = common dso_local global i32 0, align 4
@SEC_SYNOPSIS = common dso_local global i64 0, align 8
@TYPE_Vt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Fn(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_meta*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca i32, align 4
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %6, align 8
  store %struct.roff_node* %2, %struct.roff_node** %7, align 8
  %9 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.mpage*, %struct.mpage** %5, align 8
  %16 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @parse_mdoc_fname(%struct.mpage* %15, %struct.TYPE_2__* %18)
  %20 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.roff_node*, %struct.roff_node** %23, align 8
  store %struct.roff_node* %24, %struct.roff_node** %7, align 8
  %25 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %26 = icmp ne %struct.roff_node* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %14
  %28 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ROFFT_TEXT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load i32, i32* @TYPE_Fa, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %36 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SEC_SYNOPSIS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @TYPE_Vt, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.mpage*, %struct.mpage** %5, align 8
  %46 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @putmdockey(%struct.mpage* %45, %struct.roff_node* %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44, %27, %14
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @parse_mdoc_fname(%struct.mpage*, %struct.TYPE_2__*) #1

declare dso_local i32 @putmdockey(%struct.mpage*, %struct.roff_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
