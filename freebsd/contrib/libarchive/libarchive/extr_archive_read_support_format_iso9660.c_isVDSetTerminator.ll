; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isVDSetTerminator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_isVDSetTerminator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iso9660*, i8*)* @isVDSetTerminator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isVDSetTerminator(%struct.iso9660* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i8*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 6
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @isNull(%struct.iso9660* %21, i8* %22, i32 7, i32 2041)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %19, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @isNull(%struct.iso9660*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
