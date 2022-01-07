; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_remove_identical_rules.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_remove_identical_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.superblock = type { i32 }
%struct.pf_opt_rule = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pf_rule = type { i32 }

@por_entry = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"removing identical rule  nr%d = *nr%d*\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"removing identical rule  *nr%d* = nr%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_identical_rules(%struct.pfctl* %0, %struct.superblock* %1) #0 {
  %3 = alloca %struct.pfctl*, align 8
  %4 = alloca %struct.superblock*, align 8
  %5 = alloca %struct.pf_opt_rule*, align 8
  %6 = alloca %struct.pf_opt_rule*, align 8
  %7 = alloca %struct.pf_opt_rule*, align 8
  %8 = alloca %struct.pf_opt_rule*, align 8
  %9 = alloca %struct.pf_rule, align 4
  %10 = alloca %struct.pf_rule, align 4
  %11 = alloca %struct.pf_rule, align 4
  %12 = alloca %struct.pf_rule, align 4
  store %struct.pfctl* %0, %struct.pfctl** %3, align 8
  store %struct.superblock* %1, %struct.superblock** %4, align 8
  %13 = load %struct.superblock*, %struct.superblock** %4, align 8
  %14 = getelementptr inbounds %struct.superblock, %struct.superblock* %13, i32 0, i32 0
  %15 = call %struct.pf_opt_rule* @TAILQ_FIRST(i32* %14)
  store %struct.pf_opt_rule* %15, %struct.pf_opt_rule** %5, align 8
  br label %16

16:                                               ; preds = %95, %2
  %17 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %18 = icmp ne %struct.pf_opt_rule* %17, null
  br i1 %18, label %19, label %97

19:                                               ; preds = %16
  %20 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %21 = load i32, i32* @por_entry, align 4
  %22 = call %struct.pf_opt_rule* @TAILQ_NEXT(%struct.pf_opt_rule* %20, i32 %21)
  store %struct.pf_opt_rule* %22, %struct.pf_opt_rule** %7, align 8
  %23 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %7, align 8
  store %struct.pf_opt_rule* %23, %struct.pf_opt_rule** %6, align 8
  br label %24

24:                                               ; preds = %92, %19
  %25 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %26 = icmp ne %struct.pf_opt_rule* %25, null
  br i1 %26, label %27, label %94

27:                                               ; preds = %24
  %28 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %29 = load i32, i32* @por_entry, align 4
  %30 = call %struct.pf_opt_rule* @TAILQ_NEXT(%struct.pf_opt_rule* %28, i32 %29)
  store %struct.pf_opt_rule* %30, %struct.pf_opt_rule** %8, align 8
  %31 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %32 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %31, i32 0, i32 0
  %33 = load i32, i32* @DC, align 4
  %34 = call i32 @comparable_rule(%struct.pf_rule* %9, %struct.TYPE_2__* %32, i32 %33)
  %35 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %36 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %35, i32 0, i32 0
  %37 = load i32, i32* @DC, align 4
  %38 = call i32 @comparable_rule(%struct.pf_rule* %11, %struct.TYPE_2__* %36, i32 %37)
  %39 = call i32 @memcpy(%struct.pf_rule* %10, %struct.pf_rule* %9, i32 4)
  %40 = call i32 @memcpy(%struct.pf_rule* %12, %struct.pf_rule* %11, i32 4)
  %41 = call i32 @exclude_supersets(%struct.pf_rule* %9, %struct.pf_rule* %11)
  %42 = call i32 @exclude_supersets(%struct.pf_rule* %12, %struct.pf_rule* %10)
  %43 = call i64 @memcmp(%struct.pf_rule* %9, %struct.pf_rule* %11, i32 4)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %27
  %46 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %47 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %51 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.superblock*, %struct.superblock** %4, align 8
  %56 = getelementptr inbounds %struct.superblock, %struct.superblock* %55, i32 0, i32 0
  %57 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %58 = load i32, i32* @por_entry, align 4
  %59 = call i32 @TAILQ_REMOVE(i32* %56, %struct.pf_opt_rule* %57, i32 %58)
  %60 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %7, align 8
  %61 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %62 = icmp eq %struct.pf_opt_rule* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %65 = load i32, i32* @por_entry, align 4
  %66 = call %struct.pf_opt_rule* @TAILQ_NEXT(%struct.pf_opt_rule* %64, i32 %65)
  store %struct.pf_opt_rule* %66, %struct.pf_opt_rule** %7, align 8
  br label %67

67:                                               ; preds = %63, %45
  %68 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %69 = call i32 @free(%struct.pf_opt_rule* %68)
  br label %91

70:                                               ; preds = %27
  %71 = call i64 @memcmp(%struct.pf_rule* %10, %struct.pf_rule* %12, i32 4)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %75 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %6, align 8
  %79 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load %struct.superblock*, %struct.superblock** %4, align 8
  %84 = getelementptr inbounds %struct.superblock, %struct.superblock* %83, i32 0, i32 0
  %85 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %86 = load i32, i32* @por_entry, align 4
  %87 = call i32 @TAILQ_REMOVE(i32* %84, %struct.pf_opt_rule* %85, i32 %86)
  %88 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %89 = call i32 @free(%struct.pf_opt_rule* %88)
  br label %94

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %67
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %8, align 8
  store %struct.pf_opt_rule* %93, %struct.pf_opt_rule** %6, align 8
  br label %24

94:                                               ; preds = %73, %24
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %7, align 8
  store %struct.pf_opt_rule* %96, %struct.pf_opt_rule** %5, align 8
  br label %16

97:                                               ; preds = %16
  ret i32 0
}

declare dso_local %struct.pf_opt_rule* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pf_opt_rule* @TAILQ_NEXT(%struct.pf_opt_rule*, i32) #1

declare dso_local i32 @comparable_rule(%struct.pf_rule*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @memcpy(%struct.pf_rule*, %struct.pf_rule*, i32) #1

declare dso_local i32 @exclude_supersets(%struct.pf_rule*, %struct.pf_rule*) #1

declare dso_local i64 @memcmp(%struct.pf_rule*, %struct.pf_rule*, i32) #1

declare dso_local i32 @DEBUG(i8*, i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_opt_rule*, i32) #1

declare dso_local i32 @free(%struct.pf_opt_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
