; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_clr_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_clr_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfioc_table = type { i32, i32, %struct.pfr_table }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRCLRADDRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_addrs(%struct.pfr_table* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfioc_table, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %10 = icmp eq %struct.pfr_table* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %34

13:                                               ; preds = %3
  %14 = call i32 @bzero(%struct.pfioc_table* %8, i32 12)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 2
  %18 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %19 = bitcast %struct.pfr_table* %17 to i8*
  %20 = bitcast %struct.pfr_table* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32, i32* @dev, align 4
  %22 = load i32, i32* @DIOCRCLRADDRS, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.pfioc_table* %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %34

26:                                               ; preds = %13
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %26
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %25, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
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
