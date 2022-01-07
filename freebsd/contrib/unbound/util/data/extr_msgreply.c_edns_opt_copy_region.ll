; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_copy_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_copy_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i32, %struct.edns_option*, %struct.edns_option* }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edns_option* @edns_opt_copy_region(%struct.edns_option* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.edns_option*, align 8
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.edns_option*, align 8
  %7 = alloca %struct.edns_option*, align 8
  %8 = alloca %struct.edns_option*, align 8
  store %struct.edns_option* %0, %struct.edns_option** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  store %struct.edns_option* null, %struct.edns_option** %6, align 8
  store %struct.edns_option* null, %struct.edns_option** %7, align 8
  br label %9

9:                                                ; preds = %54, %2
  %10 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %11 = icmp ne %struct.edns_option* %10, null
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  %13 = load %struct.regional*, %struct.regional** %5, align 8
  %14 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %15 = call i8* @regional_alloc_init(%struct.regional* %13, %struct.edns_option* %14, i32 24)
  %16 = bitcast i8* %15 to %struct.edns_option*
  store %struct.edns_option* %16, %struct.edns_option** %8, align 8
  %17 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %18 = icmp ne %struct.edns_option* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store %struct.edns_option* null, %struct.edns_option** %3, align 8
  br label %61

20:                                               ; preds = %12
  %21 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %22 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %21, i32 0, i32 1
  store %struct.edns_option* null, %struct.edns_option** %22, align 8
  %23 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %24 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %23, i32 0, i32 2
  %25 = load %struct.edns_option*, %struct.edns_option** %24, align 8
  %26 = icmp ne %struct.edns_option* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load %struct.regional*, %struct.regional** %5, align 8
  %29 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %30 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %29, i32 0, i32 2
  %31 = load %struct.edns_option*, %struct.edns_option** %30, align 8
  %32 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %33 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @regional_alloc_init(%struct.regional* %28, %struct.edns_option* %31, i32 %34)
  %36 = bitcast i8* %35 to %struct.edns_option*
  %37 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %38 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %37, i32 0, i32 2
  store %struct.edns_option* %36, %struct.edns_option** %38, align 8
  %39 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %40 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %39, i32 0, i32 2
  %41 = load %struct.edns_option*, %struct.edns_option** %40, align 8
  %42 = icmp ne %struct.edns_option* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %27
  store %struct.edns_option* null, %struct.edns_option** %3, align 8
  br label %61

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %47 = icmp ne %struct.edns_option* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  %50 = load %struct.edns_option*, %struct.edns_option** %7, align 8
  %51 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %50, i32 0, i32 1
  store %struct.edns_option* %49, %struct.edns_option** %51, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  store %struct.edns_option* %53, %struct.edns_option** %6, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load %struct.edns_option*, %struct.edns_option** %8, align 8
  store %struct.edns_option* %55, %struct.edns_option** %7, align 8
  %56 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %57 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %56, i32 0, i32 1
  %58 = load %struct.edns_option*, %struct.edns_option** %57, align 8
  store %struct.edns_option* %58, %struct.edns_option** %4, align 8
  br label %9

59:                                               ; preds = %9
  %60 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  store %struct.edns_option* %60, %struct.edns_option** %3, align 8
  br label %61

61:                                               ; preds = %59, %43, %19
  %62 = load %struct.edns_option*, %struct.edns_option** %3, align 8
  ret %struct.edns_option* %62
}

declare dso_local i8* @regional_alloc_init(%struct.regional*, %struct.edns_option*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
