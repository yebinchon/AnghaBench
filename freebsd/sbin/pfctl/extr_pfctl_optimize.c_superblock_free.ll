; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_superblock_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_optimize.c_superblock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl = type { i32 }
%struct.superblock = type { %struct.superblock*, %struct.superblock*, %struct.superblock*, %struct.superblock*, i32 }
%struct.pf_opt_rule = type { %struct.pf_opt_rule*, %struct.pf_opt_rule*, %struct.pf_opt_rule*, %struct.pf_opt_rule*, i32 }

@por_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @superblock_free(%struct.pfctl* %0, %struct.superblock* %1) #0 {
  %3 = alloca %struct.pfctl*, align 8
  %4 = alloca %struct.superblock*, align 8
  %5 = alloca %struct.pf_opt_rule*, align 8
  store %struct.pfctl* %0, %struct.pfctl** %3, align 8
  store %struct.superblock* %1, %struct.superblock** %4, align 8
  br label %6

6:                                                ; preds = %84, %2
  %7 = load %struct.superblock*, %struct.superblock** %4, align 8
  %8 = getelementptr inbounds %struct.superblock, %struct.superblock* %7, i32 0, i32 4
  %9 = call %struct.superblock* @TAILQ_FIRST(i32* %8)
  %10 = bitcast %struct.superblock* %9 to %struct.pf_opt_rule*
  store %struct.pf_opt_rule* %10, %struct.pf_opt_rule** %5, align 8
  %11 = icmp ne %struct.pf_opt_rule* %10, null
  br i1 %11, label %12, label %88

12:                                               ; preds = %6
  %13 = load %struct.superblock*, %struct.superblock** %4, align 8
  %14 = getelementptr inbounds %struct.superblock, %struct.superblock* %13, i32 0, i32 4
  %15 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %16 = bitcast %struct.pf_opt_rule* %15 to %struct.superblock*
  %17 = load i32, i32* @por_entry, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %14, %struct.superblock* %16, i32 %17)
  %19 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %20 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %19, i32 0, i32 3
  %21 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %20, align 8
  %22 = icmp ne %struct.pf_opt_rule* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %12
  %24 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %25 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %24, i32 0, i32 3
  %26 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %25, align 8
  %27 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %26, i32 0, i32 2
  %28 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %27, align 8
  %29 = icmp ne %struct.pf_opt_rule* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %32 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %31, i32 0, i32 3
  %33 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %32, align 8
  %34 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %33, i32 0, i32 2
  %35 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %34, align 8
  %36 = bitcast %struct.pf_opt_rule* %35 to %struct.superblock*
  %37 = call i32 @pfr_buf_clear(%struct.superblock* %36)
  %38 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %39 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %38, i32 0, i32 3
  %40 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %39, align 8
  %41 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %40, i32 0, i32 2
  %42 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %41, align 8
  %43 = bitcast %struct.pf_opt_rule* %42 to %struct.superblock*
  %44 = call i32 @free(%struct.superblock* %43)
  br label %45

45:                                               ; preds = %30, %23
  %46 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %47 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %46, i32 0, i32 3
  %48 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %47, align 8
  %49 = bitcast %struct.pf_opt_rule* %48 to %struct.superblock*
  %50 = call i32 @free(%struct.superblock* %49)
  br label %51

51:                                               ; preds = %45, %12
  %52 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %53 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %52, i32 0, i32 1
  %54 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %53, align 8
  %55 = icmp ne %struct.pf_opt_rule* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  %57 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %58 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %57, i32 0, i32 1
  %59 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %58, align 8
  %60 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %59, i32 0, i32 2
  %61 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %60, align 8
  %62 = icmp ne %struct.pf_opt_rule* %61, null
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %65 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %64, i32 0, i32 1
  %66 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %65, align 8
  %67 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %66, i32 0, i32 2
  %68 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %67, align 8
  %69 = bitcast %struct.pf_opt_rule* %68 to %struct.superblock*
  %70 = call i32 @pfr_buf_clear(%struct.superblock* %69)
  %71 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %72 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %71, i32 0, i32 1
  %73 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %72, align 8
  %74 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %73, i32 0, i32 2
  %75 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %74, align 8
  %76 = bitcast %struct.pf_opt_rule* %75 to %struct.superblock*
  %77 = call i32 @free(%struct.superblock* %76)
  br label %78

78:                                               ; preds = %63, %56
  %79 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %80 = getelementptr inbounds %struct.pf_opt_rule, %struct.pf_opt_rule* %79, i32 0, i32 1
  %81 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %80, align 8
  %82 = bitcast %struct.pf_opt_rule* %81 to %struct.superblock*
  %83 = call i32 @free(%struct.superblock* %82)
  br label %84

84:                                               ; preds = %78, %51
  %85 = load %struct.pf_opt_rule*, %struct.pf_opt_rule** %5, align 8
  %86 = bitcast %struct.pf_opt_rule* %85 to %struct.superblock*
  %87 = call i32 @free(%struct.superblock* %86)
  br label %6

88:                                               ; preds = %6
  %89 = load %struct.superblock*, %struct.superblock** %4, align 8
  %90 = getelementptr inbounds %struct.superblock, %struct.superblock* %89, i32 0, i32 0
  %91 = load %struct.superblock*, %struct.superblock** %90, align 8
  %92 = icmp ne %struct.superblock* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.pfctl*, %struct.pfctl** %3, align 8
  %95 = load %struct.superblock*, %struct.superblock** %4, align 8
  %96 = getelementptr inbounds %struct.superblock, %struct.superblock* %95, i32 0, i32 0
  %97 = load %struct.superblock*, %struct.superblock** %96, align 8
  call void @superblock_free(%struct.pfctl* %94, %struct.superblock* %97)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.superblock*, %struct.superblock** %4, align 8
  %100 = call i32 @free(%struct.superblock* %99)
  ret void
}

declare dso_local %struct.superblock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.superblock*, i32) #1

declare dso_local i32 @pfr_buf_clear(%struct.superblock*) #1

declare dso_local i32 @free(%struct.superblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
