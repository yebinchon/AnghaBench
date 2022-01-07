; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_gname_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_gname_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32 }
%struct.group = type { i8* }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"getgrgid(%s) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpio*, i8**, i64)* @lookup_gname_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_gname_helper(%struct.cpio* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpio*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.group*, align 8
  store %struct.cpio* %0, %struct.cpio** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.cpio*, %struct.cpio** %5, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i64, i64* %7, align 8
  %11 = trunc i64 %10 to i32
  %12 = call %struct.group* @getgrgid(i32 %11)
  store %struct.group* %12, %struct.group** %8, align 8
  %13 = load %struct.group*, %struct.group** %8, align 8
  %14 = icmp eq %struct.group* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load i64, i64* @errno, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64, i64* @errno, align 8
  %20 = load i64, i64* @ENOENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @cpio_i64toa(i32 %25)
  %27 = call i32 @lafe_warnc(i64 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %18, %15
  store i32 1, i32* %4, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.group*, %struct.group** %8, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %6, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @lafe_warnc(i64, i8*, i32) #1

declare dso_local i32 @cpio_i64toa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
