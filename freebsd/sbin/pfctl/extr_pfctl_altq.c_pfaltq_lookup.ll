; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_pfaltq_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_altq.c_pfaltq_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfctl_altq = type { i32 }
%struct.TYPE_4__ = type { i8*, %struct.pfctl_altq* }

@FIND = common dso_local global i32 0, align 4
@if_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pfctl_altq* (i8*)* @pfaltq_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pfctl_altq* @pfaltq_lookup(i8* %0) #0 {
  %2 = alloca %struct.pfctl_altq*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* @FIND, align 4
  %9 = bitcast %struct.TYPE_4__* %4 to { i8*, %struct.pfctl_altq* }*
  %10 = getelementptr inbounds { i8*, %struct.pfctl_altq* }, { i8*, %struct.pfctl_altq* }* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, %struct.pfctl_altq* }, { i8*, %struct.pfctl_altq* }* %9, i32 0, i32 1
  %13 = load %struct.pfctl_altq*, %struct.pfctl_altq** %12, align 8
  %14 = call i64 @hsearch_r(i8* %11, %struct.pfctl_altq* %13, i32 %8, %struct.TYPE_4__** %5, i32* @if_map)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.pfctl_altq* null, %struct.pfctl_altq** %2, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.pfctl_altq*, %struct.pfctl_altq** %19, align 8
  store %struct.pfctl_altq* %20, %struct.pfctl_altq** %2, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = load %struct.pfctl_altq*, %struct.pfctl_altq** %2, align 8
  ret %struct.pfctl_altq* %22
}

declare dso_local i64 @hsearch_r(i8*, %struct.pfctl_altq*, i32, %struct.TYPE_4__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
