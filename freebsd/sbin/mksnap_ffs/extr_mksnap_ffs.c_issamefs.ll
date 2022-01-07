; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mksnap_ffs/extr_mksnap_ffs.c_issamefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mksnap_ffs/extr_mksnap_ffs.c_issamefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.statfs*)* @issamefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issamefs(i8* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.statfs, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @isdir(i8* %8, %struct.stat* %7)
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @statfs(i8* %13, %struct.statfs* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.statfs*, %struct.statfs** %5, align 8
  %24 = getelementptr inbounds %struct.statfs, %struct.statfs* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %22, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.statfs*, %struct.statfs** %5, align 8
  %37 = getelementptr inbounds %struct.statfs, %struct.statfs* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30, %17
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %16, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @isdir(i8*, %struct.stat*) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
