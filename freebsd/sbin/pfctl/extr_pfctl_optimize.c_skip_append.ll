; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_skip_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superblock = type { i32* }
%struct.pf_skip_step = type { i64, i32 }
%struct.pf_opt_rule = type { i32 }

@por_skip_entry = common dso_local global i32* null, align 8
@ps_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skip_append(%struct.superblock* %0, i32 %1, %struct.pf_skip_step* %2, %struct.pf_opt_rule* %3) #0 {
  %5 = alloca %struct.superblock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_skip_step*, align 8
  %8 = alloca %struct.pf_opt_rule*, align 8
  %9 = alloca %struct.pf_skip_step*, align 8
  store %struct.superblock* %0, %struct.superblock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pf_skip_step* %2, %struct.pf_skip_step** %7, align 8
  store %struct.pf_opt_rule* %3, %struct.pf_opt_rule** %8, align 8
  %10 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %11 = getelementptr inbounds %struct.pf_skip_step, %struct.pf_skip_step* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %15 = getelementptr inbounds %struct.pf_skip_step, %struct.pf_skip_step* %14, i32 0, i32 1
  %16 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %8, align 8
  %17 = load i32*, i32** @por_skip_entry, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TAILQ_INSERT_TAIL(i32* %15, %struct.pf_opt_rule* %16, i32 %21)
  br label %23

23:                                               ; preds = %39, %4
  %24 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %25 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %26 = load i32, i32* @ps_entry, align 4
  %27 = call %struct.pf_skip_step* @TAILQ_PREV(%struct.pf_skip_step* %24, %struct.pf_skip_step* %25, i32 %26)
  store %struct.pf_skip_step* %27, %struct.pf_skip_step** %9, align 8
  %28 = icmp ne %struct.pf_skip_step* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.pf_skip_step*, %struct.pf_skip_step** %9, align 8
  %31 = getelementptr inbounds %struct.pf_skip_step, %struct.pf_skip_step* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %34 = getelementptr inbounds %struct.pf_skip_step, %struct.pf_skip_step* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi i1 [ false, %23 ], [ %36, %29 ]
  br i1 %38, label %39, label %53

39:                                               ; preds = %37
  %40 = load %struct.superblock*, %struct.superblock** %5, align 8
  %41 = getelementptr inbounds %struct.superblock, %struct.superblock* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %47 = load i32, i32* @ps_entry, align 4
  %48 = call i32 @TAILQ_REMOVE(i32* %45, %struct.pf_skip_step* %46, i32 %47)
  %49 = load %struct.pf_skip_step*, %struct.pf_skip_step** %9, align 8
  %50 = load %struct.pf_skip_step*, %struct.pf_skip_step** %7, align 8
  %51 = load i32, i32* @ps_entry, align 4
  %52 = call i32 @TAILQ_INSERT_BEFORE(%struct.pf_skip_step* %49, %struct.pf_skip_step* %50, i32 %51)
  br label %23

53:                                               ; preds = %37
  ret void
}

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pf_opt_rule*, i32) #1

declare dso_local %struct.pf_skip_step* @TAILQ_PREV(%struct.pf_skip_step*, %struct.pf_skip_step*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_skip_step*, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.pf_skip_step*, %struct.pf_skip_step*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
