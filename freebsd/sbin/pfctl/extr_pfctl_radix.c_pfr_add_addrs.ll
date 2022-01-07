; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_add_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_add_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfioc_table = type { i32, i32, i32, i32, %struct.pfr_addr*, %struct.pfr_table }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRADDADDRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_add_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca %struct.pfr_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfioc_table, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %14 = icmp eq %struct.pfr_table* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  %23 = icmp eq %struct.pfr_addr* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %15, %5
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %52

26:                                               ; preds = %21, %18
  %27 = call i32 @bzero(%struct.pfioc_table* %12, i32 32)
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 5
  %31 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %32 = bitcast %struct.pfr_table* %30 to i8*
  %33 = bitcast %struct.pfr_table* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.pfr_addr*, %struct.pfr_addr** %8, align 8
  %35 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 4
  store %struct.pfr_addr* %34, %struct.pfr_addr** %35, align 8
  %36 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 1
  store i32 4, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @dev, align 4
  %40 = load i32, i32* @DIOCRADDADDRS, align 4
  %41 = call i64 @ioctl(i32 %39, i32 %40, %struct.pfioc_table* %12)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %12, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %44
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %43, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @bzero(%struct.pfioc_table*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
