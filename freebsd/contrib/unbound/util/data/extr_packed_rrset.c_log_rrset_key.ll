; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_log_rrset_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_log_rrset_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@verbosity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_rrset_key(i32 %0, i8* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %6, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %14 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 @log_nametypeclass(i32 %11, i8* %12, i32 %16, i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %10, %3
  ret void
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
