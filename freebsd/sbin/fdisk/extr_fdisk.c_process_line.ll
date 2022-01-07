; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @process_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @parse_config_line(i8* %6, %struct.TYPE_6__* %3)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %17 [
    i32 0, label %10
    i32 103, label %11
    i32 112, label %13
    i32 97, label %15
  ]

10:                                               ; preds = %5
  br label %18

11:                                               ; preds = %5
  %12 = call i32 @process_geometry(%struct.TYPE_6__* %3)
  store i32 %12, i32* %4, align 4
  br label %18

13:                                               ; preds = %5
  %14 = call i32 @process_partition(%struct.TYPE_6__* %3)
  store i32 %14, i32* %4, align 4
  br label %18

15:                                               ; preds = %5
  %16 = call i32 @process_active(%struct.TYPE_6__* %3)
  store i32 %16, i32* %4, align 4
  br label %18

17:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %15, %13, %11, %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @parse_config_line(i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @process_geometry(%struct.TYPE_6__*) #1

declare dso_local i32 @process_partition(%struct.TYPE_6__*) #1

declare dso_local i32 @process_active(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
