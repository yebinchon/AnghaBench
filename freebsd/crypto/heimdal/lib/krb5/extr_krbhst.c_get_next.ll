; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_get_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_krbhst.c_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_krbhst_data = type { %struct.krb5_krbhst_info** }
%struct.krb5_krbhst_info = type { %struct.krb5_krbhst_info* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_krbhst_data*, %struct.krb5_krbhst_info**)* @get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next(%struct.krb5_krbhst_data* %0, %struct.krb5_krbhst_info** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.krb5_krbhst_data*, align 8
  %5 = alloca %struct.krb5_krbhst_info**, align 8
  %6 = alloca %struct.krb5_krbhst_info*, align 8
  store %struct.krb5_krbhst_data* %0, %struct.krb5_krbhst_data** %4, align 8
  store %struct.krb5_krbhst_info** %1, %struct.krb5_krbhst_info*** %5, align 8
  %7 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %4, align 8
  %8 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %7, i32 0, i32 0
  %9 = load %struct.krb5_krbhst_info**, %struct.krb5_krbhst_info*** %8, align 8
  %10 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %9, align 8
  store %struct.krb5_krbhst_info* %10, %struct.krb5_krbhst_info** %6, align 8
  %11 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %6, align 8
  %12 = icmp ne %struct.krb5_krbhst_info* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %6, align 8
  %15 = load %struct.krb5_krbhst_info**, %struct.krb5_krbhst_info*** %5, align 8
  store %struct.krb5_krbhst_info* %14, %struct.krb5_krbhst_info** %15, align 8
  %16 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %4, align 8
  %17 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %16, i32 0, i32 0
  %18 = load %struct.krb5_krbhst_info**, %struct.krb5_krbhst_info*** %17, align 8
  %19 = load %struct.krb5_krbhst_info*, %struct.krb5_krbhst_info** %18, align 8
  %20 = getelementptr inbounds %struct.krb5_krbhst_info, %struct.krb5_krbhst_info* %19, i32 0, i32 0
  %21 = load %struct.krb5_krbhst_data*, %struct.krb5_krbhst_data** %4, align 8
  %22 = getelementptr inbounds %struct.krb5_krbhst_data, %struct.krb5_krbhst_data* %21, i32 0, i32 0
  store %struct.krb5_krbhst_info** %20, %struct.krb5_krbhst_info*** %22, align 8
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
