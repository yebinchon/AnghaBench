; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_nth_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_nth_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt_addr = type { i32, %struct.delegpt_addr* }

@.str = private unnamed_addr constant [36 x i8] c"malloc failure: allocating rtt_list\00", align 1
@rtt_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delegpt_addr*, i64, i64)* @nth_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nth_rtt(%struct.delegpt_addr* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.delegpt_addr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.delegpt_addr* %0, %struct.delegpt_addr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 -1, i32* %4, align 4
  br label %73

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = call i32* @calloc(i64 %20, i32 4)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %73

26:                                               ; preds = %19
  %27 = load i32*, i32** %10, align 8
  store i32* %27, i32** %11, align 8
  store i64 0, i64* %9, align 8
  br label %28

28:                                               ; preds = %53, %26
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %34 = icmp ne %struct.delegpt_addr* %33, null
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %39 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %44 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %11, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %51 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %50, i32 0, i32 1
  %52 = load %struct.delegpt_addr*, %struct.delegpt_addr** %51, align 8
  store %struct.delegpt_addr* %52, %struct.delegpt_addr** %5, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %28

56:                                               ; preds = %35
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @rtt_compare, align 4
  %60 = call i32 @qsort(i32* %57, i64 %58, i32 4, i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @log_assert(i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @free(i32* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %56, %24, %18
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
