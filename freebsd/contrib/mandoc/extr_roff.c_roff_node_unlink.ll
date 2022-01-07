; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_node_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { %struct.TYPE_2__, i32, %struct.roff_node* }
%struct.TYPE_2__ = type { %struct.roff_node* }
%struct.roff_node = type { %struct.roff_node*, %struct.roff_node*, %struct.roff_node*, %struct.roff_node*, %struct.roff_node* }

@ROFF_NEXT_CHILD = common dso_local global i32 0, align 4
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_node_unlink(%struct.roff_man* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca %struct.roff_node*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %5 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %6 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %5, i32 0, i32 0
  %7 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %8 = icmp ne %struct.roff_node* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %11 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %10, i32 0, i32 3
  %12 = load %struct.roff_node*, %struct.roff_node** %11, align 8
  %13 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %14 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %13, i32 0, i32 0
  %15 = load %struct.roff_node*, %struct.roff_node** %14, align 8
  %16 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %15, i32 0, i32 3
  store %struct.roff_node* %12, %struct.roff_node** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %19 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %18, i32 0, i32 3
  %20 = load %struct.roff_node*, %struct.roff_node** %19, align 8
  %21 = icmp ne %struct.roff_node* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 0
  %25 = load %struct.roff_node*, %struct.roff_node** %24, align 8
  %26 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %27 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %26, i32 0, i32 3
  %28 = load %struct.roff_node*, %struct.roff_node** %27, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  store %struct.roff_node* %25, %struct.roff_node** %29, align 8
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 1
  %33 = load %struct.roff_node*, %struct.roff_node** %32, align 8
  %34 = icmp ne %struct.roff_node* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 1
  %38 = load %struct.roff_node*, %struct.roff_node** %37, align 8
  %39 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %38, i32 0, i32 4
  %40 = load %struct.roff_node*, %struct.roff_node** %39, align 8
  %41 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %42 = icmp eq %struct.roff_node* %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %45 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %44, i32 0, i32 3
  %46 = load %struct.roff_node*, %struct.roff_node** %45, align 8
  %47 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 1
  %49 = load %struct.roff_node*, %struct.roff_node** %48, align 8
  %50 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %49, i32 0, i32 4
  store %struct.roff_node* %46, %struct.roff_node** %50, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %53 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %52, i32 0, i32 1
  %54 = load %struct.roff_node*, %struct.roff_node** %53, align 8
  %55 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %54, i32 0, i32 2
  %56 = load %struct.roff_node*, %struct.roff_node** %55, align 8
  %57 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %58 = icmp eq %struct.roff_node* %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %61 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %60, i32 0, i32 0
  %62 = load %struct.roff_node*, %struct.roff_node** %61, align 8
  %63 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %64 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %63, i32 0, i32 1
  %65 = load %struct.roff_node*, %struct.roff_node** %64, align 8
  %66 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %65, i32 0, i32 2
  store %struct.roff_node* %62, %struct.roff_node** %66, align 8
  br label %67

67:                                               ; preds = %59, %51
  br label %68

68:                                               ; preds = %67, %30
  %69 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %70 = icmp eq %struct.roff_man* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %113

72:                                               ; preds = %68
  %73 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %74 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %73, i32 0, i32 2
  %75 = load %struct.roff_node*, %struct.roff_node** %74, align 8
  %76 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %77 = icmp eq %struct.roff_node* %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %72
  %79 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %80 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %79, i32 0, i32 0
  %81 = load %struct.roff_node*, %struct.roff_node** %80, align 8
  %82 = icmp eq %struct.roff_node* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %85 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %84, i32 0, i32 1
  %86 = load %struct.roff_node*, %struct.roff_node** %85, align 8
  %87 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %88 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %87, i32 0, i32 2
  store %struct.roff_node* %86, %struct.roff_node** %88, align 8
  %89 = load i32, i32* @ROFF_NEXT_CHILD, align 4
  %90 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %91 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %101

92:                                               ; preds = %78
  %93 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %94 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %93, i32 0, i32 0
  %95 = load %struct.roff_node*, %struct.roff_node** %94, align 8
  %96 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %97 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %96, i32 0, i32 2
  store %struct.roff_node* %95, %struct.roff_node** %97, align 8
  %98 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %99 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %100 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %83
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %104 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.roff_node*, %struct.roff_node** %105, align 8
  %107 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %108 = icmp eq %struct.roff_node* %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %111 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store %struct.roff_node* null, %struct.roff_node** %112, align 8
  br label %113

113:                                              ; preds = %71, %109, %102
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
