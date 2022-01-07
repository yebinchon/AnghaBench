; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/admin/extr_purge.c_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e = type { i32, %struct.e* }

@context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.e* (i32, %struct.e*)* @get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.e* @get_entry(i32 %0, %struct.e* %1) #0 {
  %3 = alloca %struct.e*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e*, align 8
  %6 = alloca %struct.e*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.e* %1, %struct.e** %5, align 8
  %7 = load %struct.e*, %struct.e** %5, align 8
  store %struct.e* %7, %struct.e** %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load %struct.e*, %struct.e** %6, align 8
  %10 = icmp ne %struct.e* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* @context, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.e*, %struct.e** %6, align 8
  %15 = getelementptr inbounds %struct.e, %struct.e* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @krb5_principal_compare(i32 %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load %struct.e*, %struct.e** %6, align 8
  store %struct.e* %20, %struct.e** %3, align 8
  br label %27

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.e*, %struct.e** %6, align 8
  %24 = getelementptr inbounds %struct.e, %struct.e* %23, i32 0, i32 1
  %25 = load %struct.e*, %struct.e** %24, align 8
  store %struct.e* %25, %struct.e** %6, align 8
  br label %8

26:                                               ; preds = %8
  store %struct.e* null, %struct.e** %3, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.e*, %struct.e** %3, align 8
  ret %struct.e* %28
}

declare dso_local i64 @krb5_principal_compare(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
