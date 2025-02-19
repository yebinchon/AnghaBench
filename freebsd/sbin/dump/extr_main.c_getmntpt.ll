; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_getmntpt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_main.c_getmntpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i8*, i32 }

@MNT_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @getmntpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getmntpt(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.statfs*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @MNT_NOWAIT, align 4
  %10 = call i64 @getmntinfo(%struct.statfs** %8, i32 %9)
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.statfs*, %struct.statfs** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.statfs, %struct.statfs* %16, i64 %17
  %19 = getelementptr inbounds %struct.statfs, %struct.statfs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %15
  %25 = load %struct.statfs*, %struct.statfs** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.statfs, %struct.statfs* %25, i64 %26
  %28 = getelementptr inbounds %struct.statfs, %struct.statfs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.statfs*, %struct.statfs** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %31, i64 %32
  %34 = getelementptr inbounds %struct.statfs, %struct.statfs* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  br label %41

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %7, align 8
  br label %11

40:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i64 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
