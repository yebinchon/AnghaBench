; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_edns_opt_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edns_option = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edns_opt_compare(%struct.edns_option* %0, %struct.edns_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edns_option*, align 8
  %5 = alloca %struct.edns_option*, align 8
  store %struct.edns_option* %0, %struct.edns_option** %4, align 8
  store %struct.edns_option* %1, %struct.edns_option** %5, align 8
  %6 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %7 = icmp ne %struct.edns_option* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %10 = icmp ne %struct.edns_option* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %82

12:                                               ; preds = %8, %2
  %13 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %14 = icmp ne %struct.edns_option* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %82

16:                                               ; preds = %12
  %17 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %18 = icmp ne %struct.edns_option* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %82

20:                                               ; preds = %16
  %21 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %22 = icmp ne %struct.edns_option* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %25 = icmp ne %struct.edns_option* %24, null
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %31 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %34 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %39 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %43 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %3, align 4
  br label %82

47:                                               ; preds = %26
  %48 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %49 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %52 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %57 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %61 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = sub nsw i32 %59, %63
  store i32 %64, i32* %3, align 4
  br label %82

65:                                               ; preds = %47
  %66 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %67 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %72 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.edns_option*, %struct.edns_option** %5, align 8
  %75 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.edns_option*, %struct.edns_option** %4, align 8
  %78 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @memcmp(i32 %73, i32 %76, i64 %79)
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %70, %55, %37, %19, %15, %11
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
