; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__isoent_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c__isoent_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.isoent*, %struct.TYPE_2__, %struct.isoent*, %struct.isoent* }
%struct.TYPE_2__ = type { %struct.isoent* }
%struct.extr_rec = type { %struct.extr_rec*, %struct.TYPE_2__, %struct.extr_rec*, %struct.extr_rec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isoent*)* @_isoent_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_isoent_free(%struct.isoent* %0) #0 {
  %2 = alloca %struct.isoent*, align 8
  %3 = alloca %struct.extr_rec*, align 8
  %4 = alloca %struct.extr_rec*, align 8
  store %struct.isoent* %0, %struct.isoent** %2, align 8
  %5 = load %struct.isoent*, %struct.isoent** %2, align 8
  %6 = getelementptr inbounds %struct.isoent, %struct.isoent* %5, i32 0, i32 3
  %7 = load %struct.isoent*, %struct.isoent** %6, align 8
  %8 = call i32 @free(%struct.isoent* %7)
  %9 = load %struct.isoent*, %struct.isoent** %2, align 8
  %10 = getelementptr inbounds %struct.isoent, %struct.isoent* %9, i32 0, i32 2
  %11 = load %struct.isoent*, %struct.isoent** %10, align 8
  %12 = call i32 @free(%struct.isoent* %11)
  %13 = load %struct.isoent*, %struct.isoent** %2, align 8
  %14 = getelementptr inbounds %struct.isoent, %struct.isoent* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.isoent*, %struct.isoent** %15, align 8
  %17 = bitcast %struct.isoent* %16 to %struct.extr_rec*
  store %struct.extr_rec* %17, %struct.extr_rec** %3, align 8
  br label %18

18:                                               ; preds = %21, %1
  %19 = load %struct.extr_rec*, %struct.extr_rec** %3, align 8
  %20 = icmp ne %struct.extr_rec* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.extr_rec*, %struct.extr_rec** %3, align 8
  %23 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %22, i32 0, i32 0
  %24 = load %struct.extr_rec*, %struct.extr_rec** %23, align 8
  store %struct.extr_rec* %24, %struct.extr_rec** %4, align 8
  %25 = load %struct.extr_rec*, %struct.extr_rec** %3, align 8
  %26 = bitcast %struct.extr_rec* %25 to %struct.isoent*
  %27 = call i32 @free(%struct.isoent* %26)
  %28 = load %struct.extr_rec*, %struct.extr_rec** %4, align 8
  store %struct.extr_rec* %28, %struct.extr_rec** %3, align 8
  br label %18

29:                                               ; preds = %18
  %30 = load %struct.isoent*, %struct.isoent** %2, align 8
  %31 = call i32 @free(%struct.isoent* %30)
  ret void
}

declare dso_local i32 @free(%struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
