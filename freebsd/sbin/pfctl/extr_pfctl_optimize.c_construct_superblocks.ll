; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_construct_superblocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_construct_superblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.pf_opt_queue = type { i32 }
%struct.superblocks = type { i32 }
%struct.superblock = type { %struct.superblocks, %struct.superblocks* }
%struct.pf_opt_rule = type { %struct.superblocks, %struct.superblocks* }

@por_entry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@PF_SKIP_COUNT = common dso_local global i32 0, align 4
@sb_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @construct_superblocks(%struct.pfctl* %0, %struct.pf_opt_queue* %1, %struct.superblocks* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfctl*, align 8
  %6 = alloca %struct.pf_opt_queue*, align 8
  %7 = alloca %struct.superblocks*, align 8
  %8 = alloca %struct.superblock*, align 8
  %9 = alloca %struct.pf_opt_rule*, align 8
  %10 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %5, align 8
  store %struct.pf_opt_queue* %1, %struct.pf_opt_queue** %6, align 8
  store %struct.superblocks* %2, %struct.superblocks** %7, align 8
  store %struct.superblock* null, %struct.superblock** %8, align 8
  br label %11

11:                                               ; preds = %62, %3
  %12 = load %struct.pf_opt_queue*, %struct.pf_opt_queue** %6, align 8
  %13 = call i32 @TAILQ_EMPTY(%struct.pf_opt_queue* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %69

16:                                               ; preds = %11
  %17 = load %struct.pf_opt_queue*, %struct.pf_opt_queue** %6, align 8
  %18 = call %struct.superblock* @TAILQ_FIRST(%struct.pf_opt_queue* %17)
  %19 = bitcast %struct.superblock* %18 to %struct.pf_opt_rule*
  store %struct.pf_opt_rule* %19, %struct.pf_opt_rule** %9, align 8
  %20 = load %struct.pf_opt_queue*, %struct.pf_opt_queue** %6, align 8
  %21 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %9, align 8
  %22 = bitcast %struct.pf_opt_rule* %21 to %struct.superblock*
  %23 = load i32, i32* @por_entry, align 4
  %24 = call i32 @TAILQ_REMOVE(%struct.pf_opt_queue* %20, %struct.superblock* %22, i32 %23)
  %25 = load %struct.superblock*, %struct.superblock** %8, align 8
  %26 = icmp eq %struct.superblock* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %16
  %28 = load %struct.superblock*, %struct.superblock** %8, align 8
  %29 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %9, align 8
  %30 = bitcast %struct.pf_opt_rule* %29 to %struct.superblock*
  %31 = call i32 @superblock_inclusive(%struct.superblock* %28, %struct.superblock* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %27, %16
  %34 = call %struct.superblock* @calloc(i32 1, i32 16)
  store %struct.superblock* %34, %struct.superblock** %8, align 8
  %35 = icmp eq %struct.superblock* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %70

38:                                               ; preds = %33
  %39 = load %struct.superblock*, %struct.superblock** %8, align 8
  %40 = getelementptr inbounds %struct.superblock, %struct.superblock* %39, i32 0, i32 0
  %41 = call i32 @TAILQ_INIT(%struct.superblocks* %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %54, %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PF_SKIP_COUNT, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.superblock*, %struct.superblock** %8, align 8
  %48 = getelementptr inbounds %struct.superblock, %struct.superblock* %47, i32 0, i32 1
  %49 = load %struct.superblocks*, %struct.superblocks** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.superblocks, %struct.superblocks* %49, i64 %51
  %53 = call i32 @TAILQ_INIT(%struct.superblocks* %52)
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %42

57:                                               ; preds = %42
  %58 = load %struct.superblocks*, %struct.superblocks** %7, align 8
  %59 = load %struct.superblock*, %struct.superblock** %8, align 8
  %60 = load i32, i32* @sb_entry, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(%struct.superblocks* %58, %struct.superblock* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %27
  %63 = load %struct.superblock*, %struct.superblock** %8, align 8
  %64 = getelementptr inbounds %struct.superblock, %struct.superblock* %63, i32 0, i32 0
  %65 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %9, align 8
  %66 = bitcast %struct.pf_opt_rule* %65 to %struct.superblock*
  %67 = load i32, i32* @por_entry, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(%struct.superblocks* %64, %struct.superblock* %66, i32 %67)
  br label %11

69:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @TAILQ_EMPTY(%struct.pf_opt_queue*) #1

declare dso_local %struct.superblock* @TAILQ_FIRST(%struct.pf_opt_queue*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.pf_opt_queue*, %struct.superblock*, i32) #1

declare dso_local i32 @superblock_inclusive(%struct.superblock*, %struct.superblock*) #1

declare dso_local %struct.superblock* @calloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @TAILQ_INIT(%struct.superblocks*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.superblocks*, %struct.superblock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
