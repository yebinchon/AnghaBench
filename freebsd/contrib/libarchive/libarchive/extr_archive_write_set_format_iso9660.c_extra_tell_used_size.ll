; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_tell_used_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_tell_used_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_extr_rec = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.isoent* }
%struct.isoent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.extr_rec* }
%struct.extr_rec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_extr_rec*, i32)* @extra_tell_used_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extra_tell_used_size(%struct.ctl_extr_rec* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_extr_rec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca %struct.extr_rec*, align 8
  store %struct.ctl_extr_rec* %0, %struct.ctl_extr_rec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.isoent*, %struct.isoent** %15, align 8
  store %struct.isoent* %16, %struct.isoent** %5, align 8
  %17 = load %struct.isoent*, %struct.isoent** %5, align 8
  %18 = getelementptr inbounds %struct.isoent, %struct.isoent* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.extr_rec*, %struct.extr_rec** %19, align 8
  store %struct.extr_rec* %20, %struct.extr_rec** %6, align 8
  %21 = load %struct.extr_rec*, %struct.extr_rec** %6, align 8
  %22 = icmp ne %struct.extr_rec* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.extr_rec*, %struct.extr_rec** %6, align 8
  %26 = getelementptr inbounds %struct.extr_rec, %struct.extr_rec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %11
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
