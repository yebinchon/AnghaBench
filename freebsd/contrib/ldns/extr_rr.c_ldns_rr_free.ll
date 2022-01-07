; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rr.c_ldns_rr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rr.c_ldns_rr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_rr_free(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i64 @ldns_rr_owner(%struct.TYPE_7__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = call i64 @ldns_rr_owner(%struct.TYPE_7__* %11)
  %13 = call i32 @ldns_rdf_deep_free(i64 %12)
  br label %14

14:                                               ; preds = %10, %6
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %25, %14
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i64 @ldns_rr_rd_count(%struct.TYPE_7__* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ldns_rr_rdf(%struct.TYPE_7__* %21, i64 %22)
  %24 = call i32 @ldns_rdf_deep_free(i64 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = call i32 @LDNS_FREE(%struct.TYPE_7__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = call i32 @LDNS_FREE(%struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @ldns_rr_owner(%struct.TYPE_7__*) #1

declare dso_local i32 @ldns_rdf_deep_free(i64) #1

declare dso_local i64 @ldns_rr_rd_count(%struct.TYPE_7__*) #1

declare dso_local i64 @ldns_rr_rdf(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @LDNS_FREE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
