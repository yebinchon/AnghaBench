; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Nm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32, i32* }
%struct.roff_node = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SEC_NAME = common dso_local global i64 0, align 8
@NAME_TITLE = common dso_local global i32 0, align 4
@SEC_SYNOPSIS = common dso_local global i64 0, align 8
@ROFFT_HEAD = common dso_local global i64 0, align 8
@NAME_SYN = common dso_local global i32 0, align 4
@NAME_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Nm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Nm(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca %struct.mpage*, align 8
  %5 = alloca %struct.roff_meta*, align 8
  %6 = alloca %struct.roff_node*, align 8
  store %struct.mpage* %0, %struct.mpage** %4, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %5, align 8
  store %struct.roff_node* %2, %struct.roff_node** %6, align 8
  %7 = load i64, i64* @SEC_NAME, align 8
  %8 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %9 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.mpage*, %struct.mpage** %4, align 8
  %14 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* @NAME_TITLE, align 4
  %18 = call i32 @putmdockey(%struct.mpage* %13, %struct.TYPE_2__* %16, i32 %17, i32 0)
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %21 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SEC_SYNOPSIS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %19
  %26 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %27 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ROFFT_HEAD, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %33 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp eq %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.mpage*, %struct.mpage** %4, align 8
  %38 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %39 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @NAME_SYN, align 4
  %42 = call i32 @putkey(%struct.mpage* %37, i32* %40, i32 %41)
  br label %50

43:                                               ; preds = %31
  %44 = load %struct.mpage*, %struct.mpage** %4, align 8
  %45 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %46 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* @NAME_SYN, align 4
  %49 = call i32 @putmdockey(%struct.mpage* %44, %struct.TYPE_2__* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %25, %19
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.mpage*, %struct.mpage** %4, align 8
  %54 = getelementptr inbounds %struct.mpage, %struct.mpage* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %91, label %57

57:                                               ; preds = %52
  %58 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %59 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = icmp eq %struct.TYPE_2__* %60, null
  br i1 %61, label %91, label %62

62:                                               ; preds = %57
  %63 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %64 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %91, label %69

69:                                               ; preds = %62
  %70 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %71 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.roff_meta*, %struct.roff_meta** %5, align 8
  %76 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @strcasecmp(i32* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %69
  %81 = load %struct.mpage*, %struct.mpage** %4, align 8
  %82 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %83 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @NAME_HEAD, align 4
  %88 = call i32 @putkey(%struct.mpage* %81, i32* %86, i32 %87)
  %89 = load %struct.mpage*, %struct.mpage** %4, align 8
  %90 = getelementptr inbounds %struct.mpage, %struct.mpage* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %69, %62, %57, %52
  ret i32 0
}

declare dso_local i32 @putmdockey(%struct.mpage*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @putkey(%struct.mpage*, i32*, i32) #1

declare dso_local i64 @strcasecmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
