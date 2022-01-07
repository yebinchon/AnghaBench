; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_set_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_set_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfioc_table = type { i32, i32, i32, i32, i32, i32, i32, %struct.pfr_addr*, %struct.pfr_table }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRSETADDRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_set_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfr_table*, align 8
  %11 = alloca %struct.pfr_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pfioc_table, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %10, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.pfr_table*, %struct.pfr_table** %10, align 8
  %20 = icmp eq %struct.pfr_table* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.pfr_addr*, %struct.pfr_addr** %11, align 8
  %29 = icmp eq %struct.pfr_addr* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %21, %8
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %9, align 4
  br label %88

32:                                               ; preds = %27, %24
  %33 = call i32 @bzero(%struct.pfioc_table* %18, i32 48)
  %34 = load i32, i32* %17, align 4
  %35 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 8
  %37 = load %struct.pfr_table*, %struct.pfr_table** %10, align 8
  %38 = bitcast %struct.pfr_table* %36 to i8*
  %39 = bitcast %struct.pfr_table* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.pfr_addr*, %struct.pfr_addr** %11, align 8
  %41 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 7
  store %struct.pfr_addr* %40, %struct.pfr_addr** %41, align 8
  %42 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 1
  store i32 4, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  %53 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @dev, align 4
  %55 = load i32, i32* @DIOCRSETADDRS, align 4
  %56 = call i64 @ioctl(i32 %54, i32 %55, %struct.pfioc_table* %18)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 -1, i32* %9, align 4
  br label %88

59:                                               ; preds = %51
  %60 = load i32*, i32** %14, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %14, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32*, i32** %15, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %15, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32*, i32** %16, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %16, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %18, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %80
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %58, %30
  %89 = load i32, i32* %9, align 4
  ret i32 %89
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
