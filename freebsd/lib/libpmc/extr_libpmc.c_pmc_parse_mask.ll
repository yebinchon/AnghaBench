; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_parse_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_parse_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_masks = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmc_masks*, i8*, i32*)* @pmc_parse_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_parse_mask(%struct.pmc_masks* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmc_masks*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pmc_masks*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.pmc_masks* %0, %struct.pmc_masks** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.pmc_masks*, %struct.pmc_masks** %5, align 8
  %13 = icmp eq %struct.pmc_masks* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 61)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %65

24:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = load %struct.pmc_masks*, %struct.pmc_masks** %5, align 8
  store %struct.pmc_masks* %29, %struct.pmc_masks** %8, align 8
  br label %30

30:                                               ; preds = %45, %28
  %31 = load %struct.pmc_masks*, %struct.pmc_masks** %8, align 8
  %32 = getelementptr inbounds %struct.pmc_masks, %struct.pmc_masks* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.pmc_masks*, %struct.pmc_masks** %8, align 8
  %38 = getelementptr inbounds %struct.pmc_masks, %struct.pmc_masks* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @strcasecmp(i8* %36, i32* %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %35, %30
  %43 = phi i1 [ false, %30 ], [ %41, %35 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.pmc_masks*, %struct.pmc_masks** %8, align 8
  %47 = getelementptr inbounds %struct.pmc_masks, %struct.pmc_masks* %46, i32 1
  store %struct.pmc_masks* %47, %struct.pmc_masks** %8, align 8
  br label %30

48:                                               ; preds = %42
  %49 = load %struct.pmc_masks*, %struct.pmc_masks** %8, align 8
  %50 = getelementptr inbounds %struct.pmc_masks, %struct.pmc_masks* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %65

54:                                               ; preds = %48
  %55 = load %struct.pmc_masks*, %struct.pmc_masks** %8, align 8
  %56 = getelementptr inbounds %struct.pmc_masks, %struct.pmc_masks* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %25

63:                                               ; preds = %25
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %53, %23, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcasecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
