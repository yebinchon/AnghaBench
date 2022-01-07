; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_list.h_dl_list_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_list.h_dl_list_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_list = type { %struct.dl_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dl_list*)* @dl_list_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dl_list_len(%struct.dl_list* %0) #0 {
  %2 = alloca %struct.dl_list*, align 8
  %3 = alloca %struct.dl_list*, align 8
  %4 = alloca i32, align 4
  store %struct.dl_list* %0, %struct.dl_list** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dl_list*, %struct.dl_list** %2, align 8
  %6 = getelementptr inbounds %struct.dl_list, %struct.dl_list* %5, i32 0, i32 0
  %7 = load %struct.dl_list*, %struct.dl_list** %6, align 8
  store %struct.dl_list* %7, %struct.dl_list** %3, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %10 = load %struct.dl_list*, %struct.dl_list** %2, align 8
  %11 = icmp ne %struct.dl_list* %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.dl_list*, %struct.dl_list** %3, align 8
  %17 = getelementptr inbounds %struct.dl_list, %struct.dl_list* %16, i32 0, i32 0
  %18 = load %struct.dl_list*, %struct.dl_list** %17, align 8
  store %struct.dl_list* %18, %struct.dl_list** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
