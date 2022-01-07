; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_statsdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_filegen.c_filegen_statsdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filegen_entry = type { %struct.TYPE_2__*, %struct.filegen_entry* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@filegen_registry = common dso_local global %struct.filegen_entry* null, align 8
@statsdir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filegen_statsdir() #0 {
  %1 = alloca %struct.filegen_entry*, align 8
  %2 = load %struct.filegen_entry*, %struct.filegen_entry** @filegen_registry, align 8
  store %struct.filegen_entry* %2, %struct.filegen_entry** %1, align 8
  br label %3

3:                                                ; preds = %27, %0
  %4 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %5 = icmp ne %struct.filegen_entry* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %8 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* @statsdir, align 4
  %11 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %12 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %17 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %22 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @filegen_config(%struct.TYPE_2__* %9, i32 %10, i32 %15, i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %6
  %28 = load %struct.filegen_entry*, %struct.filegen_entry** %1, align 8
  %29 = getelementptr inbounds %struct.filegen_entry, %struct.filegen_entry* %28, i32 0, i32 1
  %30 = load %struct.filegen_entry*, %struct.filegen_entry** %29, align 8
  store %struct.filegen_entry* %30, %struct.filegen_entry** %1, align 8
  br label %3

31:                                               ; preds = %3
  ret void
}

declare dso_local i32 @filegen_config(%struct.TYPE_2__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
