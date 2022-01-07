; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_vexists.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_vexists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }
%struct.nvhdr = type { i32 }

@errno = common dso_local global i32 0, align 4
@NV_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv*, i8*, i32)* @nv_vexists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_vexists(%struct.nv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nv*, %struct.nv** %5, align 8
  %12 = icmp eq %struct.nv* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.nv*, %struct.nv** %5, align 8
  %17 = getelementptr inbounds %struct.nv, %struct.nv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.nv*, %struct.nv** %5, align 8
  %20 = load i32, i32* @NV_TYPE_NONE, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.nvhdr* @nv_find(%struct.nv* %19, i32 %20, i8* %21, i32 %22)
  store %struct.nvhdr* %23, %struct.nvhdr** %8, align 8
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* @errno, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.nv*, %struct.nv** %5, align 8
  %27 = getelementptr inbounds %struct.nv, %struct.nv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.nvhdr*, %struct.nvhdr** %8, align 8
  %29 = icmp ne %struct.nvhdr* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %14, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.nvhdr* @nv_find(%struct.nv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
