; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_insert_altq_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_insert_altq_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq_node = type { %struct.pf_altq_node*, %struct.pf_altq_node*, i32, i32 }
%struct.pf_altq = type { i32*, i32 }
%struct.queue_stats = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"pfctl_insert_altq_node: calloc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"parent %s not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_insert_altq_node(%struct.pf_altq_node** %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.pf_altq, align 8
  %7 = alloca %struct.queue_stats, align 8
  %8 = alloca %struct.pf_altq_node**, align 8
  %9 = alloca %struct.pf_altq_node*, align 8
  %10 = alloca %struct.pf_altq_node*, align 8
  %11 = alloca %struct.pf_altq_node*, align 8
  %12 = alloca %struct.pf_altq_node*, align 8
  %13 = bitcast %struct.pf_altq* %6 to { i32*, i32 }*
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %13, i32 0, i32 0
  store i32* %1, i32** %14, align 8
  %15 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %13, i32 0, i32 1
  store i32 %2, i32* %15, align 8
  %16 = bitcast %struct.queue_stats* %7 to { i32*, i32 }*
  %17 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %16, i32 0, i32 0
  store i32* %3, i32** %17, align 8
  %18 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %16, i32 0, i32 1
  store i32 %4, i32* %18, align 8
  store %struct.pf_altq_node** %0, %struct.pf_altq_node*** %8, align 8
  %19 = call %struct.pf_altq_node* @calloc(i32 1, i32 24)
  store %struct.pf_altq_node* %19, %struct.pf_altq_node** %9, align 8
  %20 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %21 = icmp eq %struct.pf_altq_node* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %5
  %25 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %26 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %25, i32 0, i32 3
  %27 = bitcast %struct.pf_altq* %6 to %struct.queue_stats*
  %28 = call i32 @memcpy(i32* %26, %struct.queue_stats* %27, i32 16)
  %29 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %30 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %29, i32 0, i32 2
  %31 = call i32 @memcpy(i32* %30, %struct.queue_stats* %7, i32 16)
  %32 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %33 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %32, i32 0, i32 1
  store %struct.pf_altq_node* null, %struct.pf_altq_node** %33, align 8
  %34 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %35 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %34, i32 0, i32 0
  store %struct.pf_altq_node* null, %struct.pf_altq_node** %35, align 8
  %36 = load %struct.pf_altq_node**, %struct.pf_altq_node*** %8, align 8
  %37 = load %struct.pf_altq_node*, %struct.pf_altq_node** %36, align 8
  %38 = icmp eq %struct.pf_altq_node* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %41 = load %struct.pf_altq_node**, %struct.pf_altq_node*** %8, align 8
  store %struct.pf_altq_node* %40, %struct.pf_altq_node** %41, align 8
  br label %106

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %6, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %42
  %49 = load %struct.pf_altq_node**, %struct.pf_altq_node*** %8, align 8
  %50 = load %struct.pf_altq_node*, %struct.pf_altq_node** %49, align 8
  store %struct.pf_altq_node* %50, %struct.pf_altq_node** %10, align 8
  br label %51

51:                                               ; preds = %56, %48
  %52 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  %53 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %52, i32 0, i32 0
  %54 = load %struct.pf_altq_node*, %struct.pf_altq_node** %53, align 8
  %55 = icmp ne %struct.pf_altq_node* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  %58 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %57, i32 0, i32 0
  %59 = load %struct.pf_altq_node*, %struct.pf_altq_node** %58, align 8
  store %struct.pf_altq_node* %59, %struct.pf_altq_node** %10, align 8
  br label %51

60:                                               ; preds = %51
  %61 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %62 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  %63 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %62, i32 0, i32 0
  store %struct.pf_altq_node* %61, %struct.pf_altq_node** %63, align 8
  br label %105

64:                                               ; preds = %42
  %65 = load %struct.pf_altq_node**, %struct.pf_altq_node*** %8, align 8
  %66 = load %struct.pf_altq_node*, %struct.pf_altq_node** %65, align 8
  %67 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.pf_altq_node* @pfctl_find_altq_node(%struct.pf_altq_node* %66, i32* %68, i32 %70)
  store %struct.pf_altq_node* %71, %struct.pf_altq_node** %11, align 8
  %72 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %73 = icmp eq %struct.pf_altq_node* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.pf_altq, %struct.pf_altq* %6, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %76)
  br label %78

78:                                               ; preds = %74, %64
  %79 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %80 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %79, i32 0, i32 1
  %81 = load %struct.pf_altq_node*, %struct.pf_altq_node** %80, align 8
  %82 = icmp eq %struct.pf_altq_node* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %85 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %86 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %85, i32 0, i32 1
  store %struct.pf_altq_node* %84, %struct.pf_altq_node** %86, align 8
  br label %104

87:                                               ; preds = %78
  %88 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %89 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %88, i32 0, i32 1
  %90 = load %struct.pf_altq_node*, %struct.pf_altq_node** %89, align 8
  store %struct.pf_altq_node* %90, %struct.pf_altq_node** %12, align 8
  br label %91

91:                                               ; preds = %96, %87
  %92 = load %struct.pf_altq_node*, %struct.pf_altq_node** %12, align 8
  %93 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %92, i32 0, i32 0
  %94 = load %struct.pf_altq_node*, %struct.pf_altq_node** %93, align 8
  %95 = icmp ne %struct.pf_altq_node* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.pf_altq_node*, %struct.pf_altq_node** %12, align 8
  %98 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %97, i32 0, i32 0
  %99 = load %struct.pf_altq_node*, %struct.pf_altq_node** %98, align 8
  store %struct.pf_altq_node* %99, %struct.pf_altq_node** %12, align 8
  br label %91

100:                                              ; preds = %91
  %101 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %102 = load %struct.pf_altq_node*, %struct.pf_altq_node** %12, align 8
  %103 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %102, i32 0, i32 0
  store %struct.pf_altq_node* %101, %struct.pf_altq_node** %103, align 8
  br label %104

104:                                              ; preds = %100, %83
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %39
  %107 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %108 = call i32 @update_avg(%struct.pf_altq_node* %107)
  ret void
}

declare dso_local %struct.pf_altq_node* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.queue_stats*, i32) #1

declare dso_local %struct.pf_altq_node* @pfctl_find_altq_node(%struct.pf_altq_node*, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*, i32*) #1

declare dso_local i32 @update_avg(%struct.pf_altq_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
