; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_copy_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_copy_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i32, %struct.edns_option*, %struct.edns_option* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edns_option* @edns_opt_copy_alloc(%struct.edns_option* %0) #0 {
  %2 = alloca %struct.edns_option*, align 8
  %3 = alloca %struct.edns_option*, align 8
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca %struct.edns_option*, align 8
  %6 = alloca %struct.edns_option*, align 8
  store %struct.edns_option* %0, %struct.edns_option** %3, align 8
  store %struct.edns_option* null, %struct.edns_option** %4, align 8
  store %struct.edns_option* null, %struct.edns_option** %5, align 8
  br label %7

7:                                                ; preds = %56, %1
  %8 = load %struct.edns_option*, %struct.edns_option** %3, align 8
  %9 = icmp ne %struct.edns_option* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %7
  %11 = load %struct.edns_option*, %struct.edns_option** %3, align 8
  %12 = call i8* @memdup(%struct.edns_option* %11, i32 24)
  %13 = bitcast i8* %12 to %struct.edns_option*
  store %struct.edns_option* %13, %struct.edns_option** %6, align 8
  %14 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %15 = icmp ne %struct.edns_option* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %18 = call i32 @edns_opt_list_free(%struct.edns_option* %17)
  store %struct.edns_option* null, %struct.edns_option** %2, align 8
  br label %63

19:                                               ; preds = %10
  %20 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %21 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %20, i32 0, i32 1
  store %struct.edns_option* null, %struct.edns_option** %21, align 8
  %22 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %23 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %22, i32 0, i32 2
  %24 = load %struct.edns_option*, %struct.edns_option** %23, align 8
  %25 = icmp ne %struct.edns_option* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %28 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %27, i32 0, i32 2
  %29 = load %struct.edns_option*, %struct.edns_option** %28, align 8
  %30 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %31 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @memdup(%struct.edns_option* %29, i32 %32)
  %34 = bitcast i8* %33 to %struct.edns_option*
  %35 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %36 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %35, i32 0, i32 2
  store %struct.edns_option* %34, %struct.edns_option** %36, align 8
  %37 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %38 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %37, i32 0, i32 2
  %39 = load %struct.edns_option*, %struct.edns_option** %38, align 8
  %40 = icmp ne %struct.edns_option* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %26
  %42 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %43 = call i32 @free(%struct.edns_option* %42)
  %44 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %45 = call i32 @edns_opt_list_free(%struct.edns_option* %44)
  store %struct.edns_option* null, %struct.edns_option** %2, align 8
  br label %63

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %49 = icmp ne %struct.edns_option* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  %52 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %53 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %52, i32 0, i32 1
  store %struct.edns_option* %51, %struct.edns_option** %53, align 8
  br label %56

54:                                               ; preds = %47
  %55 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  store %struct.edns_option* %55, %struct.edns_option** %4, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.edns_option*, %struct.edns_option** %6, align 8
  store %struct.edns_option* %57, %struct.edns_option** %5, align 8
  %58 = load %struct.edns_option*, %struct.edns_option** %3, align 8
  %59 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %58, i32 0, i32 1
  %60 = load %struct.edns_option*, %struct.edns_option** %59, align 8
  store %struct.edns_option* %60, %struct.edns_option** %3, align 8
  br label %7

61:                                               ; preds = %7
  %62 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  store %struct.edns_option* %62, %struct.edns_option** %2, align 8
  br label %63

63:                                               ; preds = %61, %41, %16
  %64 = load %struct.edns_option*, %struct.edns_option** %2, align 8
  ret %struct.edns_option* %64
}

declare dso_local i8* @memdup(%struct.edns_option*, i32) #1

declare dso_local i32 @edns_opt_list_free(%struct.edns_option*) #1

declare dso_local i32 @free(%struct.edns_option*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
