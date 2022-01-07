; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_src_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_src_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_src_nodes = type { i32, i8*, %struct.pf_src_node* }
%struct.pf_src_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@DIOCGETSRCNODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"DIOCGETSRCNODES\00", align 1
@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"SOURCE TRACKING NODES:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_src_nodes(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfioc_src_nodes, align 8
  %7 = alloca %struct.pf_src_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @memset(%struct.pfioc_src_nodes* %6, i32 0, i32 24)
  br label %13

13:                                               ; preds = %70, %2
  %14 = load i32, i32* %10, align 4
  %15 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @realloc(i8* %19, i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %8, align 8
  %28 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DIOCGETSRCNODES, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.pfioc_src_nodes* %6)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  store i32 -1, i32* %3, align 4
  br label %107

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = zext i32 %40 to i64
  %42 = add i64 %41, 24
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %73

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %104

55:                                               ; preds = %50, %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %58, %55
  %66 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %104

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = mul i32 %71, 2
  store i32 %72, i32* %10, align 4
  br label %13

73:                                               ; preds = %46
  %74 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 2
  %75 = load %struct.pf_src_node*, %struct.pf_src_node** %74, align 8
  store %struct.pf_src_node* %75, %struct.pf_src_node** %7, align 8
  %76 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ugt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79, %73
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.pfioc_src_nodes, %struct.pfioc_src_nodes* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.pf_src_node*, %struct.pf_src_node** %7, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @print_src_node(%struct.pf_src_node* %93, i32 %94)
  %96 = load %struct.pf_src_node*, %struct.pf_src_node** %7, align 8
  %97 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %96, i32 1
  store %struct.pf_src_node* %97, %struct.pf_src_node** %7, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  br label %87

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %69, %54
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %34
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.pfioc_src_nodes*, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_src_nodes*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @print_src_node(%struct.pf_src_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
