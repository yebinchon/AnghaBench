; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_init_l1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_init_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.l1_ttable = type { i32*, i32, i64, i64, i32* }

@PMAP_DOMAINS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@L1_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pmap_init_l1: can't get PA of L1 at %p\00", align 1
@l1_list = common dso_local global i32 0, align 4
@l1_link = common dso_local global i32 0, align 4
@l1_lru_list = common dso_local global i32 0, align 4
@l1_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l1_ttable*, i32*)* @pmap_init_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_init_l1(%struct.l1_ttable* %0, i32* %1) #0 {
  %3 = alloca %struct.l1_ttable*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.l1_ttable* %0, %struct.l1_ttable** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %8 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %7, i32 0, i32 4
  store i32* %6, i32** %8, align 8
  %9 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %10 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %12 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PMAP_DOMAINS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %21 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %30, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @L1_TABLE_SIZE, align 4
  %45 = call i32 @memcpy(i32* %38, i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %29
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @pmap_extract(%struct.TYPE_5__* %47, i32 %49)
  %51 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %52 = getelementptr inbounds %struct.l1_ttable, %struct.l1_ttable* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %59 = load i32, i32* @l1_link, align 4
  %60 = call i32 @SLIST_INSERT_HEAD(i32* @l1_list, %struct.l1_ttable* %58, i32 %59)
  %61 = load %struct.l1_ttable*, %struct.l1_ttable** %3, align 8
  %62 = load i32, i32* @l1_lru, align 4
  %63 = call i32 @TAILQ_INSERT_TAIL(i32* @l1_lru_list, %struct.l1_ttable* %61, i32 %62)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pmap_extract(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.l1_ttable*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.l1_ttable*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
