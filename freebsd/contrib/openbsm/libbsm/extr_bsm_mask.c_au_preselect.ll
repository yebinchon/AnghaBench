; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_mask.c_au_preselect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_mask.c_au_preselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.au_event_ent = type { i32 }

@firsttime = common dso_local global i64 0, align 8
@AU_PRS_SUCCESS = common dso_local global i32 0, align 4
@AU_PRS_FAILURE = common dso_local global i32 0, align 4
@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_preselect(i32 %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.au_event_ent*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %76

15:                                               ; preds = %4
  %16 = load i64, i64* @firsttime, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  store i64 0, i64* @firsttime, align 8
  %19 = call i32 (...) @load_event_table()
  %20 = icmp eq i32 -1, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %76

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %15
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %36 [
    i32 129, label %25
    i32 128, label %33
  ]

25:                                               ; preds = %23
  %26 = call i32 (...) @flush_cache()
  %27 = call i32 (...) @load_event_table()
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %76

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.au_event_ent* @read_from_cache(i32 %31)
  store %struct.au_event_ent* %32, %struct.au_event_ent** %10, align 8
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.au_event_ent* @read_from_cache(i32 %34)
  store %struct.au_event_ent* %35, %struct.au_event_ent** %10, align 8
  br label %37

36:                                               ; preds = %23
  store %struct.au_event_ent* null, %struct.au_event_ent** %10, align 8
  br label %37

37:                                               ; preds = %36, %33, %30
  %38 = load %struct.au_event_ent*, %struct.au_event_ent** %10, align 8
  %39 = icmp eq %struct.au_event_ent* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %76

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AU_PRS_SUCCESS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.au_event_ent*, %struct.au_event_ent** %10, align 8
  %51 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %46, %41
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AU_PRS_FAILURE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.au_event_ent*, %struct.au_event_ent** %10, align 8
  %66 = getelementptr inbounds %struct.au_event_ent, %struct.au_event_ent* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %61, %56
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 1, i32* %5, align 4
  br label %76

75:                                               ; preds = %71
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %74, %40, %29, %21, %14
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @load_event_table(...) #1

declare dso_local i32 @flush_cache(...) #1

declare dso_local %struct.au_event_ent* @read_from_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
