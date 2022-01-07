; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_event.c_pmcstat_clone_event_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmcstat/extr_libpmcstat_event.c_pmcstat_clone_event_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcstat_ev = type { i32, i32*, i32, i32, i32*, i32, i32, i32, i32 }
%struct.pmcstat_args = type { i32 }

@CPU_SETSIZE = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR: Out of memory\00", align 1
@ev_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmcstat_clone_event_descriptor(%struct.pmcstat_ev* %0, i32* %1, %struct.pmcstat_args* %2) #0 {
  %4 = alloca %struct.pmcstat_ev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pmcstat_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pmcstat_ev*, align 8
  store %struct.pmcstat_ev* %0, %struct.pmcstat_ev** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.pmcstat_args* %2, %struct.pmcstat_args** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %96, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @CPU_SETSIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %99

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @CPU_ISSET(i32 %14, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %96

19:                                               ; preds = %13
  %20 = call %struct.pmcstat_ev* @malloc(i32 48)
  store %struct.pmcstat_ev* %20, %struct.pmcstat_ev** %8, align 8
  %21 = icmp eq %struct.pmcstat_ev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @EX_SOFTWARE, align 4
  %24 = call i32 @errx(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %27 = call i32 @memset(%struct.pmcstat_ev* %26, i32 0, i32 48)
  %28 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %29 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %32 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %35 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %37 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %40 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %42 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %45 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %47 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %50 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %52 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @strdup(i32* %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %57 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %59 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %25
  %63 = load i32, i32* @EX_SOFTWARE, align 4
  %64 = call i32 @errx(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %25
  %66 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %67 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %70 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %72 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %75 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %4, align 8
  %77 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @strdup(i32* %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %82 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %81, i32 0, i32 1
  store i32* %80, i32** %82, align 8
  %83 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %84 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %65
  %88 = load i32, i32* @EX_SOFTWARE, align 4
  %89 = call i32 @errx(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %65
  %91 = load %struct.pmcstat_args*, %struct.pmcstat_args** %6, align 8
  %92 = getelementptr inbounds %struct.pmcstat_args, %struct.pmcstat_args* %91, i32 0, i32 0
  %93 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %8, align 8
  %94 = load i32, i32* @ev_next, align 4
  %95 = call i32 @STAILQ_INSERT_TAIL(i32* %92, %struct.pmcstat_ev* %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %18
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %9

99:                                               ; preds = %9
  ret void
}

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local %struct.pmcstat_ev* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(%struct.pmcstat_ev*, i32, i32) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pmcstat_ev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
