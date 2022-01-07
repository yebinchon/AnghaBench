; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_mdoc_endparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_macro.c_mdoc_endparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_3__, %struct.roff_node* }
%struct.TYPE_3__ = type { i32 }
%struct.roff_node = type { i32, i64, i64, i32, i32, %struct.roff_node* }
%struct.TYPE_4__ = type { i32 }

@NODE_VALID = common dso_local global i32 0, align 4
@ROFFT_BLOCK = common dso_local global i64 0, align 8
@MDOC_EXPLICIT = common dso_local global i32 0, align 4
@MANDOCERR_BLK_NOEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@roff_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdoc_endparse(%struct.roff_man* %0) #0 {
  %2 = alloca %struct.roff_man*, align 8
  %3 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %2, align 8
  %4 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %5 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %4, i32 0, i32 1
  %6 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %7 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NODE_VALID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %14 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %13, i32 0, i32 1
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 5
  %17 = load %struct.roff_node*, %struct.roff_node** %16, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %20 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %19, i32 0, i32 1
  %21 = load %struct.roff_node*, %struct.roff_node** %20, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi %struct.roff_node* [ %17, %12 ], [ %21, %18 ]
  store %struct.roff_node* %23, %struct.roff_node** %3, align 8
  br label %24

24:                                               ; preds = %59, %22
  %25 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %26 = icmp ne %struct.roff_node* %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ROFFT_BLOCK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %35 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_4__* @mdoc_macro(i64 %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MDOC_EXPLICIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %33
  %44 = load i32, i32* @MANDOCERR_BLK_NOEND, align 4
  %45 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %46 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %49 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** @roff_name, align 8
  %52 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %53 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mandoc_msg(i32 %44, i32 %47, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %43, %33, %27
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.roff_node*, %struct.roff_node** %3, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 5
  %62 = load %struct.roff_node*, %struct.roff_node** %61, align 8
  store %struct.roff_node* %62, %struct.roff_node** %3, align 8
  br label %24

63:                                               ; preds = %24
  %64 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %65 = load %struct.roff_man*, %struct.roff_man** %2, align 8
  %66 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @rew_last(%struct.roff_man* %64, i32 %68)
  ret void
}

declare dso_local %struct.TYPE_4__* @mdoc_macro(i64) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @rew_last(%struct.roff_man*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
