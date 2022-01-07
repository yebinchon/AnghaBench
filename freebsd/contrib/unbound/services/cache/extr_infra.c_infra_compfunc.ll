; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_compfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_compfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_key = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_compfunc(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.infra_key*, align 8
  %7 = alloca %struct.infra_key*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.infra_key*
  store %struct.infra_key* %10, %struct.infra_key** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.infra_key*
  store %struct.infra_key* %12, %struct.infra_key** %7, align 8
  %13 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %14 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %13, i32 0, i32 3
  %15 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %16 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.infra_key*, %struct.infra_key** %7, align 8
  %19 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %18, i32 0, i32 3
  %20 = load %struct.infra_key*, %struct.infra_key** %7, align 8
  %21 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sockaddr_cmp(i32* %14, i32 %17, i32* %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %30 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.infra_key*, %struct.infra_key** %7, align 8
  %33 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %38 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.infra_key*, %struct.infra_key** %7, align 8
  %41 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %54

45:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %54

46:                                               ; preds = %28
  %47 = load %struct.infra_key*, %struct.infra_key** %6, align 8
  %48 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.infra_key*, %struct.infra_key** %7, align 8
  %51 = getelementptr inbounds %struct.infra_key, %struct.infra_key* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @query_dname_compare(i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %45, %44, %26
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @sockaddr_cmp(i32*, i32, i32*, i32) #1

declare dso_local i32 @query_dname_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
