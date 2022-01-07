; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_file.c_fetch_stat_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_file.c_fetch_stat_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_stat = type { i32, i32, i32 }
%struct.stat = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.url_stat*)* @fetch_stat_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_stat_file(i8* %0, %struct.url_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.url_stat*, align 8
  %6 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.url_stat* %1, %struct.url_stat** %5, align 8
  %7 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %8 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %10 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %12 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @stat(i8* %13, %struct.stat* %6)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (...) @fetch_syserr()
  store i32 -1, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %22 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %26 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.url_stat*, %struct.url_stat** %5, align 8
  %30 = getelementptr inbounds %struct.url_stat, %struct.url_stat* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fetch_syserr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
