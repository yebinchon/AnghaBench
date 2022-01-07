; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rr.c_ldns_rr_descript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rr.c_ldns_rr_descript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@LDNS_RDATA_FIELD_DESCRIPTORS_COMMON = common dso_local global i64 0, align 8
@rdata_field_descriptors = common dso_local global %struct.TYPE_4__* null, align 8
@LDNS_RDATA_FIELD_DESCRIPTORS_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ldns_rr_descript(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @LDNS_RDATA_FIELD_DESCRIPTORS_COMMON, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdata_field_descriptors, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load i64, i64* @LDNS_RDATA_FIELD_DESCRIPTORS_COMMON, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %31, %12
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @LDNS_RDATA_FIELD_DESCRIPTORS_COUNT, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdata_field_descriptors, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdata_field_descriptors, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %2, align 8
  br label %37

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rdata_field_descriptors, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %2, align 8
  br label %37

37:                                               ; preds = %34, %26, %8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
