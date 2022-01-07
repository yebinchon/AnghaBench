; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Xr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Xr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i8*, %struct.TYPE_2__*, %struct.roff_node* }
%struct.TYPE_2__ = type { i32 }

@TYPE_Xr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Xr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Xr(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_meta*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca i8*, align 8
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %6, align 8
  store %struct.roff_node* %2, %struct.roff_node** %7, align 8
  %9 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 2
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  store %struct.roff_node* %11, %struct.roff_node** %7, align 8
  %12 = icmp eq %struct.roff_node* null, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* null, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.mpage*, %struct.mpage** %5, align 8
  %21 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %22 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @TYPE_Xr, align 4
  %25 = call i32 @putkey(%struct.mpage* %20, i8* %23, i32 %24)
  store i32 0, i32* %4, align 4
  br label %42

26:                                               ; preds = %14
  %27 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mandoc_asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %34)
  %36 = load %struct.mpage*, %struct.mpage** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* @TYPE_Xr, align 4
  %39 = call i32 @putkey(%struct.mpage* %36, i8* %37, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @free(i8* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %26, %19, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @putkey(%struct.mpage*, i8*, i32) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
