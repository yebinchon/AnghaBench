; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_print_altq_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_print_altq_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq_node = type { %struct.pf_altq_node*, %struct.pf_altq_node*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i8*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@PF_OPT_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"  [ qid=%u ifname=%s ifbandwidth=%s ]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfctl_print_altq_node(i32 %0, %struct.pf_altq_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_altq_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pf_altq_node*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pf_altq_node* %1, %struct.pf_altq_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %11 = icmp eq %struct.pf_altq_node* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %97

13:                                               ; preds = %4
  %14 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %15 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %14, i32 0, i32 2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @print_altq(%struct.TYPE_2__* %15, i32 %16, i32* null, i32* null)
  %18 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %19 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %18, i32 0, i32 1
  %20 = load %struct.pf_altq_node*, %struct.pf_altq_node** %19, align 8
  %21 = icmp ne %struct.pf_altq_node* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %13
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %25 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %24, i32 0, i32 1
  %26 = load %struct.pf_altq_node*, %struct.pf_altq_node** %25, align 8
  store %struct.pf_altq_node* %26, %struct.pf_altq_node** %9, align 8
  br label %27

27:                                               ; preds = %43, %22
  %28 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %29 = icmp ne %struct.pf_altq_node* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %32 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %37 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %36, i32 0, i32 0
  %38 = load %struct.pf_altq_node*, %struct.pf_altq_node** %37, align 8
  %39 = icmp ne %struct.pf_altq_node* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %45 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %44, i32 0, i32 0
  %46 = load %struct.pf_altq_node*, %struct.pf_altq_node** %45, align 8
  store %struct.pf_altq_node* %46, %struct.pf_altq_node** %9, align 8
  br label %27

47:                                               ; preds = %27
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %13
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %58 = call i32 @pfctl_print_altq_nodestat(i32 %56, %struct.pf_altq_node* %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @PF_OPT_DEBUG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %66 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %70 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %74 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to double
  %78 = call i8* @rate2str(double %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %68, i8* %72, i8* %78)
  br label %80

80:                                               ; preds = %64, %59
  %81 = load %struct.pf_altq_node*, %struct.pf_altq_node** %6, align 8
  %82 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %81, i32 0, i32 1
  %83 = load %struct.pf_altq_node*, %struct.pf_altq_node** %82, align 8
  store %struct.pf_altq_node* %83, %struct.pf_altq_node** %9, align 8
  br label %84

84:                                               ; preds = %93, %80
  %85 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %86 = icmp ne %struct.pf_altq_node* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  %92 = load i32, i32* %8, align 4
  call void @pfctl_print_altq_node(i32 %88, %struct.pf_altq_node* %89, i32 %91, i32 %92)
  br label %93

93:                                               ; preds = %87
  %94 = load %struct.pf_altq_node*, %struct.pf_altq_node** %9, align 8
  %95 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %94, i32 0, i32 0
  %96 = load %struct.pf_altq_node*, %struct.pf_altq_node** %95, align 8
  store %struct.pf_altq_node* %96, %struct.pf_altq_node** %9, align 8
  br label %84

97:                                               ; preds = %12, %84
  ret void
}

declare dso_local i32 @print_altq(%struct.TYPE_2__*, i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pfctl_print_altq_nodestat(i32, %struct.pf_altq_node*) #1

declare dso_local i8* @rate2str(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
