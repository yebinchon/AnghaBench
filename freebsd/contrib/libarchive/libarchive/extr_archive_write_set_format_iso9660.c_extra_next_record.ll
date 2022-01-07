; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_next_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_next_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_extr_rec = type { i32, i32, i8*, i8*, i32, i32, i32, i32 }

@RR_CE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ctl_extr_rec*, i32)* @extra_next_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extra_next_record(%struct.ctl_extr_rec* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_extr_rec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.ctl_extr_rec* %0, %struct.ctl_extr_rec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %11 = load i32, i32* @RR_CE_SIZE, align 4
  %12 = call i32 @extra_close_record(%struct.ctl_extr_rec* %10, i32 %11)
  %13 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %32, i32 0, i32 4
  %34 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %34, i32 0, i32 7
  %36 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %36, i32 0, i32 6
  %38 = call i8* @extra_get_record(i32 %31, i32* %33, i32* %35, i32* %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 -1
  %41 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %50

43:                                               ; preds = %2
  %44 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %48 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %47, i32 0, i32 4
  %49 = call i8* @extra_get_record(i32 %46, i32* %48, i32* null, i32* null)
  br label %50

50:                                               ; preds = %43, %19
  %51 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %54 = call i32 @extra_space(%struct.ctl_extr_rec* %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i8* @extra_next_record(%struct.ctl_extr_rec* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  ret i8* %64
}

declare dso_local i32 @extra_close_record(%struct.ctl_extr_rec*, i32) #1

declare dso_local i8* @extra_get_record(i32, i32*, i32*, i32*) #1

declare dso_local i32 @extra_space(%struct.ctl_extr_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
