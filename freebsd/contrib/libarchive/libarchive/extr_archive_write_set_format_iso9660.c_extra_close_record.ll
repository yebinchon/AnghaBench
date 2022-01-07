; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_close_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_extra_close_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_extr_rec = type { i32, i32, i32, i32, i32*, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_extr_rec*, i32)* @extra_close_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extra_close_record(%struct.ctl_extr_rec* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_extr_rec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ctl_extr_rec* %0, %struct.ctl_extr_rec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @extra_tell_used_size(%struct.ctl_extr_rec* %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %23, i32 0, i32 6
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %28, i32 0, i32 6
  %30 = load i64*, i64** %29, align 8
  %31 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %18
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %12
  %38 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %55 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %58 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @set_SUSP_CE(i32* %50, i32 %53, i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %47, %42
  br label %70

64:                                               ; preds = %37
  %65 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %66 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ctl_extr_rec*, %struct.ctl_extr_rec** %3, align 8
  %69 = getelementptr inbounds %struct.ctl_extr_rec, %struct.ctl_extr_rec* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %63
  ret void
}

declare dso_local i32 @extra_tell_used_size(%struct.ctl_extr_rec*, i32) #1

declare dso_local i32 @set_SUSP_CE(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
