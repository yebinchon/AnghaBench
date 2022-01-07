; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mount_nfs/extr_mount_nfs.c_netidbytype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mount_nfs/extr_mount_nfs.c_netidbytype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nc_protos = type { i8*, i32, i32 }

@nc_protos = common dso_local global %struct.nc_protos* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @netidbytype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @netidbytype(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nc_protos*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nc_protos*, %struct.nc_protos** @nc_protos, align 8
  store %struct.nc_protos* %7, %struct.nc_protos** %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load %struct.nc_protos*, %struct.nc_protos** %6, align 8
  %10 = getelementptr inbounds %struct.nc_protos, %struct.nc_protos* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.nc_protos*, %struct.nc_protos** %6, align 8
  %16 = getelementptr inbounds %struct.nc_protos, %struct.nc_protos* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nc_protos*, %struct.nc_protos** %6, align 8
  %22 = getelementptr inbounds %struct.nc_protos, %struct.nc_protos* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.nc_protos*, %struct.nc_protos** %6, align 8
  %28 = getelementptr inbounds %struct.nc_protos, %struct.nc_protos* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %34

30:                                               ; preds = %25
  %31 = load %struct.nc_protos*, %struct.nc_protos** %6, align 8
  %32 = getelementptr inbounds %struct.nc_protos, %struct.nc_protos* %31, i32 1
  store %struct.nc_protos* %32, %struct.nc_protos** %6, align 8
  br label %8

33:                                               ; preds = %8
  store i8* null, i8** %3, align 8
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
