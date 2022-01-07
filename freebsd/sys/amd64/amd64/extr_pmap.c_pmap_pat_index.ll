; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pat_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pat_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@X86_PG_PDE_PAT = common dso_local global i32 0, align 4
@X86_PG_PTE_PAT = common dso_local global i32 0, align 4
@PG_NC_PCD = common dso_local global i32 0, align 4
@PG_NC_PWT = common dso_local global i32 0, align 4
@EPT_PG_IGNORE_PAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EPT PTE %#lx has no PAT memory type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @pmap_pat_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pat_index(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %58 [
    i32 128, label %12
    i32 129, label %12
    i32 130, label %45
  ]

12:                                               ; preds = %3, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @X86_PG_PDE_PAT, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @X86_PG_PTE_PAT, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PG_NC_PCD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PG_NC_PWT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %36
  br label %58

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @EPT_PG_IGNORE_PAT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @EPT_PG_MEMORY_TYPE(i32 7)
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %3, %53, %44
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 7
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 3, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @EPT_PG_MEMORY_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
