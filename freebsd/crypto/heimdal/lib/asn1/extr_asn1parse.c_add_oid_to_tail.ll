; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_asn1parse.c_add_oid_to_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_asn1parse.c_add_oid_to_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objid = type { %struct.objid* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objid*, %struct.objid*)* @add_oid_to_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_oid_to_tail(%struct.objid* %0, %struct.objid* %1) #0 {
  %3 = alloca %struct.objid*, align 8
  %4 = alloca %struct.objid*, align 8
  %5 = alloca %struct.objid*, align 8
  store %struct.objid* %0, %struct.objid** %3, align 8
  store %struct.objid* %1, %struct.objid** %4, align 8
  %6 = load %struct.objid*, %struct.objid** %3, align 8
  store %struct.objid* %6, %struct.objid** %5, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.objid*, %struct.objid** %5, align 8
  %9 = getelementptr inbounds %struct.objid, %struct.objid* %8, i32 0, i32 0
  %10 = load %struct.objid*, %struct.objid** %9, align 8
  %11 = icmp ne %struct.objid* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.objid*, %struct.objid** %5, align 8
  %14 = getelementptr inbounds %struct.objid, %struct.objid* %13, i32 0, i32 0
  %15 = load %struct.objid*, %struct.objid** %14, align 8
  store %struct.objid* %15, %struct.objid** %5, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load %struct.objid*, %struct.objid** %4, align 8
  %18 = load %struct.objid*, %struct.objid** %5, align 8
  %19 = getelementptr inbounds %struct.objid, %struct.objid* %18, i32 0, i32 0
  store %struct.objid* %17, %struct.objid** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
