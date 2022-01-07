; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_show_altq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_qstats.c_pfctl_show_altq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_altq_node = type { %struct.TYPE_2__, %struct.pf_altq_node* }
%struct.TYPE_2__ = type { i32, i32 }

@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No queue in use\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ALTQ:\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@STAT_INTERVAL = common dso_local global i32 0, align 4
@PFALTQ_FLAG_IF_REMOVED = common dso_local global i32 0, align 4
@altqsupport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_altq(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pf_altq_node*, align 8
  %11 = alloca %struct.pf_altq_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.pf_altq_node* null, %struct.pf_altq_node** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pfctl_update_qstats(i32 %17, %struct.pf_altq_node** %10)
  store i32 %18, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %106

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  store %struct.pf_altq_node* %27, %struct.pf_altq_node** %11, align 8
  br label %28

28:                                               ; preds = %53, %26
  %29 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %30 = icmp ne %struct.pf_altq_node* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %36 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcmp(i32 %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %53

43:                                               ; preds = %34, %31
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pfctl_print_altq_node(i32 %49, %struct.pf_altq_node* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %55 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %54, i32 0, i32 1
  %56 = load %struct.pf_altq_node*, %struct.pf_altq_node** %55, align 8
  store %struct.pf_altq_node* %56, %struct.pf_altq_node** %11, align 8
  br label %28

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %102, %57
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %103

66:                                               ; preds = %64
  %67 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fflush(i32 %68)
  %70 = load i32, i32* @STAT_INTERVAL, align 4
  %71 = call i32 @sleep(i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @pfctl_update_qstats(i32 %72, %struct.pf_altq_node** %10)
  store i32 %73, i32* %12, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %106

76:                                               ; preds = %66
  %77 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  store %struct.pf_altq_node* %77, %struct.pf_altq_node** %11, align 8
  br label %78

78:                                               ; preds = %98, %76
  %79 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %80 = icmp ne %struct.pf_altq_node* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %86 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @strcmp(i32 %88, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %98

93:                                               ; preds = %84, %81
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @pfctl_print_altq_node(i32 %94, %struct.pf_altq_node* %95, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %93, %92
  %99 = load %struct.pf_altq_node*, %struct.pf_altq_node** %11, align 8
  %100 = getelementptr inbounds %struct.pf_altq_node, %struct.pf_altq_node* %99, i32 0, i32 1
  %101 = load %struct.pf_altq_node*, %struct.pf_altq_node** %100, align 8
  store %struct.pf_altq_node* %101, %struct.pf_altq_node** %11, align 8
  br label %78

102:                                              ; preds = %78
  br label %58

103:                                              ; preds = %64
  %104 = load %struct.pf_altq_node*, %struct.pf_altq_node** %10, align 8
  %105 = call i32 @pfctl_free_altq_node(%struct.pf_altq_node* %104)
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %103, %75, %20
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @pfctl_update_qstats(i32, %struct.pf_altq_node**) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @pfctl_print_altq_node(i32, %struct.pf_altq_node*, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pfctl_free_altq_node(%struct.pf_altq_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
