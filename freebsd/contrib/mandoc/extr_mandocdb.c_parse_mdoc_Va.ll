; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Va.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@ROFFT_ELEM = common dso_local global i64 0, align 8
@ROFFT_BODY = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@TYPE_Vt = common dso_local global i32 0, align 4
@MDOC_Va = common dso_local global i64 0, align 8
@TYPE_Va = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Va(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_meta*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca i8*, align 8
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %6, align 8
  store %struct.roff_node* %2, %struct.roff_node** %7, align 8
  %9 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROFFT_ELEM, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ROFFT_BODY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %72

21:                                               ; preds = %14, %3
  %22 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %23 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ROFFT_TEXT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %72

42:                                               ; preds = %33, %26, %21
  store i8* null, i8** %8, align 8
  %43 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %44 = call i32 @deroff(i8** %8, %struct.roff_node* %43)
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.mpage*, %struct.mpage** %5, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* @TYPE_Vt, align 4
  %51 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %52 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MDOC_Va, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %58 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ROFFT_BODY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %47
  %63 = load i32, i32* @TYPE_Va, align 4
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %50, %66
  %68 = call i32 @putkey(%struct.mpage* %48, i8* %49, i32 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %65, %42
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %41, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @deroff(i8**, %struct.roff_node*) #1

declare dso_local i32 @putkey(%struct.mpage*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
