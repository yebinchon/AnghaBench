; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_bios_add_smap_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_machdep.c_bios_add_smap_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_smap = type { i32, i32, i32 }

@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SMAP type=%02x base=%016lx len=%016lx\0A\00", align 1
@SMAP_TYPE_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bios_add_smap_entries(%struct.bios_smap* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.bios_smap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bios_smap*, align 8
  %10 = alloca %struct.bios_smap*, align 8
  store %struct.bios_smap* %0, %struct.bios_smap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  %12 = ptrtoint %struct.bios_smap* %11 to i64
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %12, %13
  %15 = inttoptr i64 %14 to %struct.bios_smap*
  store %struct.bios_smap* %15, %struct.bios_smap** %10, align 8
  %16 = load %struct.bios_smap*, %struct.bios_smap** %5, align 8
  store %struct.bios_smap* %16, %struct.bios_smap** %9, align 8
  br label %17

17:                                               ; preds = %58, %4
  %18 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %19 = load %struct.bios_smap*, %struct.bios_smap** %10, align 8
  %20 = icmp ult %struct.bios_smap* %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i32, i32* @boothowto, align 4
  %23 = load i32, i32* @RB_VERBOSE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %28 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %31 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %34 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %26, %21
  %38 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %39 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @SMAP_TYPE_MEMORY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %58

45:                                               ; preds = %37
  %46 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %47 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %50 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @add_physmap_entry(i32 %48, i32 %51, i32* %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  br label %61

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %44
  %59 = load %struct.bios_smap*, %struct.bios_smap** %9, align 8
  %60 = getelementptr inbounds %struct.bios_smap, %struct.bios_smap* %59, i32 1
  store %struct.bios_smap* %60, %struct.bios_smap** %9, align 8
  br label %17

61:                                               ; preds = %56, %17
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @add_physmap_entry(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
