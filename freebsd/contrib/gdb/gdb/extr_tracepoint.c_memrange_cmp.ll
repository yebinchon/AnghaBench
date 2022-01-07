; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_memrange_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_memrange_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memrange = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @memrange_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memrange_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.memrange*, align 8
  %7 = alloca %struct.memrange*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.memrange*
  store %struct.memrange* %9, %struct.memrange** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.memrange*
  store %struct.memrange* %11, %struct.memrange** %7, align 8
  %12 = load %struct.memrange*, %struct.memrange** %6, align 8
  %13 = getelementptr inbounds %struct.memrange, %struct.memrange* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.memrange*, %struct.memrange** %7, align 8
  %16 = getelementptr inbounds %struct.memrange, %struct.memrange* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.memrange*, %struct.memrange** %6, align 8
  %22 = getelementptr inbounds %struct.memrange, %struct.memrange* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.memrange*, %struct.memrange** %7, align 8
  %25 = getelementptr inbounds %struct.memrange, %struct.memrange* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %73

29:                                               ; preds = %20
  %30 = load %struct.memrange*, %struct.memrange** %6, align 8
  %31 = getelementptr inbounds %struct.memrange, %struct.memrange* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.memrange*, %struct.memrange** %6, align 8
  %36 = getelementptr inbounds %struct.memrange, %struct.memrange* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.memrange*, %struct.memrange** %7, align 8
  %39 = getelementptr inbounds %struct.memrange, %struct.memrange* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load %struct.memrange*, %struct.memrange** %6, align 8
  %45 = getelementptr inbounds %struct.memrange, %struct.memrange* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.memrange*, %struct.memrange** %7, align 8
  %48 = getelementptr inbounds %struct.memrange, %struct.memrange* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %73

52:                                               ; preds = %43
  br label %72

53:                                               ; preds = %29
  %54 = load %struct.memrange*, %struct.memrange** %6, align 8
  %55 = getelementptr inbounds %struct.memrange, %struct.memrange* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.memrange*, %struct.memrange** %7, align 8
  %58 = getelementptr inbounds %struct.memrange, %struct.memrange* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %73

62:                                               ; preds = %53
  %63 = load %struct.memrange*, %struct.memrange** %6, align 8
  %64 = getelementptr inbounds %struct.memrange, %struct.memrange* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.memrange*, %struct.memrange** %7, align 8
  %67 = getelementptr inbounds %struct.memrange, %struct.memrange* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %73

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %52
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %61, %51, %42, %28, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
