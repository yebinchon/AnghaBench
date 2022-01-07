; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, %struct.edns_option* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edns_opt_list_remove(%struct.edns_option** %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edns_option**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.edns_option*, align 8
  %7 = alloca %struct.edns_option*, align 8
  store %struct.edns_option** %0, %struct.edns_option*** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %9 = icmp ne %struct.edns_option** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %12 = load %struct.edns_option*, %struct.edns_option** %11, align 8
  %13 = icmp ne %struct.edns_option* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %78

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %32, %15
  %17 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %18 = icmp ne %struct.edns_option** %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %21 = load %struct.edns_option*, %struct.edns_option** %20, align 8
  %22 = icmp ne %struct.edns_option* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %25 = load %struct.edns_option*, %struct.edns_option** %24, align 8
  %26 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %23, %19, %16
  %31 = phi i1 [ false, %19 ], [ false, %16 ], [ %29, %23 ]
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %34 = load %struct.edns_option*, %struct.edns_option** %33, align 8
  %35 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %34, i32 0, i32 1
  %36 = load %struct.edns_option*, %struct.edns_option** %35, align 8
  %37 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  store %struct.edns_option* %36, %struct.edns_option** %37, align 8
  br label %16

38:                                               ; preds = %30
  %39 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %40 = icmp ne %struct.edns_option** %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %43 = load %struct.edns_option*, %struct.edns_option** %42, align 8
  %44 = icmp ne %struct.edns_option* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %38
  store i32 1, i32* %3, align 4
  br label %78

46:                                               ; preds = %41
  %47 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %48 = load %struct.edns_option*, %struct.edns_option** %47, align 8
  store %struct.edns_option* %48, %struct.edns_option** %6, align 8
  %49 = load %struct.edns_option**, %struct.edns_option*** %4, align 8
  %50 = load %struct.edns_option*, %struct.edns_option** %49, align 8
  %51 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %50, i32 0, i32 1
  %52 = load %struct.edns_option*, %struct.edns_option** %51, align 8
  store %struct.edns_option* %52, %struct.edns_option** %7, align 8
  br label %53

53:                                               ; preds = %76, %46
  %54 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %55 = icmp ne %struct.edns_option* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %58 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %64 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %63, i32 0, i32 1
  %65 = load %struct.edns_option*, %struct.edns_option** %64, align 8
  %66 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %67 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %66, i32 0, i32 1
  store %struct.edns_option* %65, %struct.edns_option** %67, align 8
  %68 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %69 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %68, i32 0, i32 1
  %70 = load %struct.edns_option*, %struct.edns_option** %69, align 8
  store %struct.edns_option* %70, %struct.edns_option** %7, align 8
  br label %76

71:                                               ; preds = %56
  %72 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  store %struct.edns_option* %72, %struct.edns_option** %6, align 8
  %73 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %74 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %73, i32 0, i32 1
  %75 = load %struct.edns_option*, %struct.edns_option** %74, align 8
  store %struct.edns_option* %75, %struct.edns_option** %7, align 8
  br label %76

76:                                               ; preds = %71, %62
  br label %53

77:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %45, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
