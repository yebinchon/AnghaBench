; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_rate_compfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_rate_compfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_key = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rate_compfunc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rate_key*, align 8
  %7 = alloca %struct.rate_key*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rate_key*
  store %struct.rate_key* %9, %struct.rate_key** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rate_key*
  store %struct.rate_key* %11, %struct.rate_key** %7, align 8
  %12 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %13 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rate_key*, %struct.rate_key** %7, align 8
  %16 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %21 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.rate_key*, %struct.rate_key** %7, align 8
  %24 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %37

28:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.rate_key*, %struct.rate_key** %6, align 8
  %31 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rate_key*, %struct.rate_key** %7, align 8
  %34 = getelementptr inbounds %struct.rate_key, %struct.rate_key* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @query_dname_compare(i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %28, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @query_dname_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
