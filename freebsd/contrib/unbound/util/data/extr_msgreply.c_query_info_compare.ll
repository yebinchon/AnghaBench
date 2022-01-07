; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_query_info_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_query_info_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_info_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.query_info*, align 8
  %7 = alloca %struct.query_info*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.query_info*
  store %struct.query_info* %10, %struct.query_info** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.query_info*
  store %struct.query_info* %12, %struct.query_info** %7, align 8
  %13 = load %struct.query_info*, %struct.query_info** %6, align 8
  %14 = getelementptr inbounds %struct.query_info, %struct.query_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.query_info*, %struct.query_info** %7, align 8
  %17 = getelementptr inbounds %struct.query_info, %struct.query_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @COMPARE_IT(i32 %15, i32 %18)
  %20 = load %struct.query_info*, %struct.query_info** %6, align 8
  %21 = getelementptr inbounds %struct.query_info, %struct.query_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.query_info*, %struct.query_info** %7, align 8
  %24 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @query_dname_compare(i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.query_info*, %struct.query_info** %6, align 8
  %32 = getelementptr inbounds %struct.query_info, %struct.query_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.query_info*, %struct.query_info** %7, align 8
  %35 = getelementptr inbounds %struct.query_info, %struct.query_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @log_assert(i32 %38)
  %40 = load %struct.query_info*, %struct.query_info** %6, align 8
  %41 = getelementptr inbounds %struct.query_info, %struct.query_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.query_info*, %struct.query_info** %7, align 8
  %44 = getelementptr inbounds %struct.query_info, %struct.query_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @COMPARE_IT(i32 %42, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %30, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @COMPARE_IT(i32, i32) #1

declare dso_local i32 @query_dname_compare(i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
