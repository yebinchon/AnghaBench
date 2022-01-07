; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_ina_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_ina_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfioc_table = type { i32, i32, i32, i32, i32, i32, %struct.pfr_addr*, %struct.pfr_table }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRINADEFINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_ina_define(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfr_table*, align 8
  %10 = alloca %struct.pfr_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pfioc_table, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %9, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.pfr_table*, %struct.pfr_table** %9, align 8
  %18 = icmp eq %struct.pfr_table* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.pfr_addr*, %struct.pfr_addr** %10, align 8
  %27 = icmp eq %struct.pfr_addr* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19, %7
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %65

30:                                               ; preds = %25, %22
  %31 = call i32 @bzero(%struct.pfioc_table* %16, i32 40)
  %32 = load i32, i32* %15, align 4
  %33 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 7
  %35 = load %struct.pfr_table*, %struct.pfr_table** %9, align 8
  %36 = bitcast %struct.pfr_table* %34 to i8*
  %37 = bitcast %struct.pfr_table* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.pfr_addr*, %struct.pfr_addr** %10, align 8
  %39 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 6
  store %struct.pfr_addr* %38, %struct.pfr_addr** %39, align 8
  %40 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @dev, align 4
  %46 = load i32, i32* @DIOCRINADEFINE, align 4
  %47 = call i64 @ioctl(i32 %45, i32 %46, %struct.pfioc_table* %16)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  store i32 -1, i32* %8, align 4
  br label %65

50:                                               ; preds = %30
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %16, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %57
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %49, %28
  %66 = load i32, i32* %8, align 4
  ret i32 %66
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
