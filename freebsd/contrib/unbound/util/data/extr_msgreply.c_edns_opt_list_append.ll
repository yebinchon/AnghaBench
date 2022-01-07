; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, %struct.edns_option*, i32*, i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edns_opt_list_append(%struct.edns_option** %0, i32 %1, i64 %2, i32* %3, %struct.regional* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.edns_option**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.edns_option**, align 8
  %13 = alloca %struct.edns_option*, align 8
  store %struct.edns_option** %0, %struct.edns_option*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.regional* %4, %struct.regional** %11, align 8
  %14 = load %struct.regional*, %struct.regional** %11, align 8
  %15 = call i64 @regional_alloc(%struct.regional* %14, i32 32)
  %16 = inttoptr i64 %15 to %struct.edns_option*
  store %struct.edns_option* %16, %struct.edns_option** %13, align 8
  %17 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %18 = icmp ne %struct.edns_option* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %59

20:                                               ; preds = %5
  %21 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %22 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %21, i32 0, i32 1
  store %struct.edns_option* null, %struct.edns_option** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %25 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %28 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %30 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %20
  %34 = load %struct.regional*, %struct.regional** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32* @regional_alloc_init(%struct.regional* %34, i32* %35, i64 %36)
  %38 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %39 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %41 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %59

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.edns_option**, %struct.edns_option*** %7, align 8
  store %struct.edns_option** %47, %struct.edns_option*** %12, align 8
  br label %48

48:                                               ; preds = %52, %46
  %49 = load %struct.edns_option**, %struct.edns_option*** %12, align 8
  %50 = load %struct.edns_option*, %struct.edns_option** %49, align 8
  %51 = icmp ne %struct.edns_option* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.edns_option**, %struct.edns_option*** %12, align 8
  %54 = load %struct.edns_option*, %struct.edns_option** %53, align 8
  %55 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %54, i32 0, i32 1
  store %struct.edns_option** %55, %struct.edns_option*** %12, align 8
  br label %48

56:                                               ; preds = %48
  %57 = load %struct.edns_option*, %struct.edns_option** %13, align 8
  %58 = load %struct.edns_option**, %struct.edns_option*** %12, align 8
  store %struct.edns_option* %57, %struct.edns_option** %58, align 8
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %56, %44, %19
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32* @regional_alloc_init(%struct.regional*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
