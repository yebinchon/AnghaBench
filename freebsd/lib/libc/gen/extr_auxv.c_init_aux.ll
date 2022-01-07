; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_auxv.c_init_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_auxv.c_init_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@__elf_aux_vector = common dso_local global %struct.TYPE_5__* null, align 8
@AT_NULL = common dso_local global i32 0, align 4
@canary = common dso_local global i8* null, align 8
@canary_len = common dso_local global i32 0, align 4
@execpath = common dso_local global i8* null, align 8
@hwcap_present = common dso_local global i32 0, align 4
@hwcap = common dso_local global i8* null, align 8
@hwcap2_present = common dso_local global i32 0, align 4
@hwcap2 = common dso_local global i8* null, align 8
@pagesizes = common dso_local global i8* null, align 8
@pagesizes_len = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@osreldate = common dso_local global i32 0, align 4
@ncpus = common dso_local global i32 0, align 4
@timekeep = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_aux() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__elf_aux_vector, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %1, align 8
  br label %3

3:                                                ; preds = %76, %0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @AT_NULL, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %79

9:                                                ; preds = %3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %75 [
    i32 138, label %13
    i32 137, label %19
    i32 136, label %24
    i32 135, label %30
    i32 134, label %37
    i32 131, label %44
    i32 130, label %50
    i32 129, label %55
    i32 132, label %60
    i32 133, label %65
    i32 128, label %70
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** @canary, align 8
  br label %75

19:                                               ; preds = %9
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* @canary_len, align 4
  br label %75

24:                                               ; preds = %9
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @execpath, align 8
  br label %75

30:                                               ; preds = %9
  store i32 1, i32* @hwcap_present, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** @hwcap, align 8
  br label %75

37:                                               ; preds = %9
  store i32 1, i32* @hwcap2_present, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** @hwcap2, align 8
  br label %75

44:                                               ; preds = %9
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** @pagesizes, align 8
  br label %75

50:                                               ; preds = %9
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* @pagesizes_len, align 4
  br label %75

55:                                               ; preds = %9
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* @pagesize, align 4
  br label %75

60:                                               ; preds = %9
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* @osreldate, align 4
  br label %75

65:                                               ; preds = %9
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* @ncpus, align 4
  br label %75

70:                                               ; preds = %9
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* @timekeep, align 8
  br label %75

75:                                               ; preds = %9, %70, %65, %60, %55, %50, %44, %37, %30, %24, %19, %13
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 1
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %1, align 8
  br label %3

79:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
