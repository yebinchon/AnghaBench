; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_open_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_open_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i32 }
%struct.ctl_extr_rec = type { i8*, i32, i32, i32, i32*, %struct.isoent*, i64 }

@DR_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.isoent*, %struct.ctl_extr_rec*)* @extra_open_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extra_open_record(i8* %0, i32 %1, %struct.isoent* %2, %struct.ctl_extr_rec* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isoent*, align 8
  %8 = alloca %struct.ctl_extr_rec*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.isoent* %2, %struct.isoent** %7, align 8
  store %struct.ctl_extr_rec* %3, %struct.ctl_extr_rec** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %11 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %14, %4
  %20 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %21 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.isoent*, %struct.isoent** %7, align 8
  %23 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %24 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %23, i32 0, i32 5
  store %struct.isoent* %22, %struct.isoent** %24, align 8
  %25 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %26 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %29 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %31 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @DR_LIMIT, align 4
  %33 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %8, align 8
  %34 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
