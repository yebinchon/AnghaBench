; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_cleanup_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_cleanup_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { i64, %struct.autr_ta*, i64, %struct.autr_ta*, i32, i32 }

@AUTR_STATE_START = common dso_local global i64 0, align 8
@AUTR_STATE_REMOVED = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@AUTR_STATE_ADDPEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust_anchor*)* @autr_cleanup_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autr_cleanup_keys(%struct.trust_anchor* %0) #0 {
  %2 = alloca %struct.trust_anchor*, align 8
  %3 = alloca %struct.autr_ta*, align 8
  %4 = alloca %struct.autr_ta**, align 8
  %5 = alloca %struct.autr_ta*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %2, align 8
  %6 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %7 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.autr_ta** %9, %struct.autr_ta*** %4, align 8
  %10 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %11 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.autr_ta*, %struct.autr_ta** %13, align 8
  store %struct.autr_ta* %14, %struct.autr_ta** %3, align 8
  br label %15

15:                                               ; preds = %65, %43, %1
  %16 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %17 = icmp ne %struct.autr_ta* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %15
  %19 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %20 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @AUTR_STATE_START, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %43, label %24

24:                                               ; preds = %18
  %25 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %26 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTR_STATE_REMOVED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %32 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %31, i32 0, i32 3
  %33 = load %struct.autr_ta*, %struct.autr_ta** %32, align 8
  %34 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %35 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %38 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @sldns_wirerr_get_type(%struct.autr_ta* %33, i32 %36, i32 %39)
  %41 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %30, %24, %18
  %44 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %45 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %44, i32 0, i32 1
  %46 = load %struct.autr_ta*, %struct.autr_ta** %45, align 8
  store %struct.autr_ta* %46, %struct.autr_ta** %5, align 8
  %47 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %48 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %47, i32 0, i32 3
  %49 = load %struct.autr_ta*, %struct.autr_ta** %48, align 8
  %50 = call i32 @free(%struct.autr_ta* %49)
  %51 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %52 = call i32 @free(%struct.autr_ta* %51)
  %53 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  %54 = load %struct.autr_ta**, %struct.autr_ta*** %4, align 8
  store %struct.autr_ta* %53, %struct.autr_ta** %54, align 8
  %55 = load %struct.autr_ta*, %struct.autr_ta** %5, align 8
  store %struct.autr_ta* %55, %struct.autr_ta** %3, align 8
  br label %15

56:                                               ; preds = %30
  %57 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %58 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AUTR_STATE_ADDPEND, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %64 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %56
  %66 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %67 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %66, i32 0, i32 1
  store %struct.autr_ta** %67, %struct.autr_ta*** %4, align 8
  %68 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %69 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %68, i32 0, i32 1
  %70 = load %struct.autr_ta*, %struct.autr_ta** %69, align 8
  store %struct.autr_ta* %70, %struct.autr_ta** %3, align 8
  br label %15

71:                                               ; preds = %15
  ret void
}

declare dso_local i64 @sldns_wirerr_get_type(%struct.autr_ta*, i32, i32) #1

declare dso_local i32 @free(%struct.autr_ta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
