; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_makedumpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_makedumpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumpdates = type { i32, i32, i32 }

@DUMPINFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumpdates*, i8*)* @makedumpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makedumpdate(%struct.dumpdates* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dumpdates*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  store %struct.dumpdates* %0, %struct.dumpdates** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @DUMPINFMT, align 4
  %9 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %10 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %13 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %12, i32 0, i32 1
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %15 = call i32 @sscanf(i8* %7, i32 %8, i32 %11, i32* %13, i8* %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %17 = call i32 @unctime(i8* %16)
  %18 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %19 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dumpdates*, %struct.dumpdates** %4, align 8
  %21 = getelementptr inbounds %struct.dumpdates, %struct.dumpdates* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @sscanf(i8*, i32, i32, i32*, i8*) #1

declare dso_local i32 @unctime(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
