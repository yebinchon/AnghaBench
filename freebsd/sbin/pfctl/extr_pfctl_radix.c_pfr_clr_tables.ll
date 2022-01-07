; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_clr_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_clr_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfioc_table = type { i32, i32, %struct.pfr_table }

@dev = common dso_local global i32 0, align 4
@DIOCRCLRTABLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_tables(%struct.pfr_table* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfioc_table, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 @bzero(%struct.pfioc_table* %8, i32 12)
  %10 = load i32, i32* %7, align 4
  %11 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %13 = icmp ne %struct.pfr_table* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 2
  %16 = load %struct.pfr_table*, %struct.pfr_table** %5, align 8
  %17 = bitcast %struct.pfr_table* %15 to i8*
  %18 = bitcast %struct.pfr_table* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @dev, align 4
  %21 = load i32, i32* @DIOCRCLRTABLES, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.pfioc_table* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %25
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i32, i32* %4, align 4
  ret i32 %34
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
