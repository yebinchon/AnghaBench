; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_collector.c__hx509_collector_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, %struct.hx509_collector* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hx509_collector_free(%struct.hx509_collector* %0) #0 {
  %2 = alloca %struct.hx509_collector*, align 8
  %3 = alloca i64, align 8
  store %struct.hx509_collector* %0, %struct.hx509_collector** %2, align 8
  %4 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %5 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %10 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %9, i32 0, i32 2
  %11 = call i32 @hx509_certs_free(i64* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %14 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %19 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %18, i32 0, i32 1
  %20 = call i32 @hx509_certs_free(i64* %19)
  br label %21

21:                                               ; preds = %17, %12
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %25 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %31 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.hx509_collector*, %struct.hx509_collector** %32, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %33, i64 %34
  %36 = call i32 @free_private_key(%struct.hx509_collector* byval(%struct.hx509_collector) align 8 %35)
  br label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %22

40:                                               ; preds = %22
  %41 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %42 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.hx509_collector*, %struct.hx509_collector** %43, align 8
  %45 = icmp ne %struct.hx509_collector* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %48 = getelementptr inbounds %struct.hx509_collector, %struct.hx509_collector* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.hx509_collector*, %struct.hx509_collector** %49, align 8
  %51 = call i32 @free(%struct.hx509_collector* %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.hx509_collector*, %struct.hx509_collector** %2, align 8
  %54 = call i32 @free(%struct.hx509_collector* %53)
  ret void
}

declare dso_local i32 @hx509_certs_free(i64*) #1

declare dso_local i32 @free_private_key(%struct.hx509_collector* byval(%struct.hx509_collector) align 8) #1

declare dso_local i32 @free(%struct.hx509_collector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
