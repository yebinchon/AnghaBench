; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_restore_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_restore_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32 }
%struct.archive_entry = type { i32 }

@restore_time.warned = internal global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Can't restore access times on this platform\00", align 1
@AE_IFLNK = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio*, %struct.archive_entry*, i8*, i32)* @restore_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_time(%struct.cpio* %0, %struct.archive_entry* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cpio*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cpio*, %struct.cpio** %5, align 8
  %10 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @restore_time.warned, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %4
  store i32 1, i32* @restore_time.warned, align 4
  %17 = load i32, i32* %8, align 4
  ret i32 %17
}

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
