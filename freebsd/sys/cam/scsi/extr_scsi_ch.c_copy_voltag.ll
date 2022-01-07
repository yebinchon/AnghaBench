; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_copy_voltag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_ch.c_copy_voltag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_voltag = type { i8*, i32 }
%struct.volume_tag = type { i8*, i32 }

@CH_VOLTAG_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.changer_voltag*, %struct.volume_tag*)* @copy_voltag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_voltag(%struct.changer_voltag* %0, %struct.volume_tag* %1) #0 {
  %3 = alloca %struct.changer_voltag*, align 8
  %4 = alloca %struct.volume_tag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.changer_voltag* %0, %struct.changer_voltag** %3, align 8
  store %struct.volume_tag* %1, %struct.volume_tag** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CH_VOLTAG_MAXLEN, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.volume_tag*, %struct.volume_tag** %4, align 8
  %13 = getelementptr inbounds %struct.volume_tag, %struct.volume_tag* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %6, align 1
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 32
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i8, i8* %6, align 1
  %28 = load %struct.changer_voltag*, %struct.changer_voltag** %3, align 8
  %29 = getelementptr inbounds %struct.changer_voltag, %struct.changer_voltag* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %27, i8* %33, align 1
  br label %35

34:                                               ; preds = %22, %11
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %34, %7
  %40 = load %struct.volume_tag*, %struct.volume_tag** %4, align 8
  %41 = getelementptr inbounds %struct.volume_tag, %struct.volume_tag* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @scsi_2btoul(i32 %42)
  %44 = load %struct.changer_voltag*, %struct.changer_voltag** %3, align 8
  %45 = getelementptr inbounds %struct.changer_voltag, %struct.changer_voltag* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  ret void
}

declare dso_local i32 @scsi_2btoul(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
