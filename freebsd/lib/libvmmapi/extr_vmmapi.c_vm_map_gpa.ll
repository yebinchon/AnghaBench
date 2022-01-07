; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_map_gpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_map_gpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i64, i8*, i32 }

@GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vm_map_gpa(%struct.vmctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %9 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %15 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %21 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %29 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ule i64 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %34 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr i8, i8* %35, i64 %36
  store i8* %37, i8** %4, align 8
  br label %88

38:                                               ; preds = %24, %18, %12
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %41 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @GB, align 4
  %47 = mul nsw i32 4, %46
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = load i32, i32* @GB, align 4
  %53 = mul nsw i32 4, %52
  %54 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %55 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %51, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %63 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ule i64 %61, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %68, %69
  %71 = load i32, i32* @GB, align 4
  %72 = mul nsw i32 4, %71
  %73 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %74 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = icmp ule i64 %70, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %81 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr i8, i8* %82, i64 %83
  store i8* %84, i8** %4, align 8
  br label %88

85:                                               ; preds = %67, %60, %50
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %39
  store i8* null, i8** %4, align 8
  br label %88

88:                                               ; preds = %87, %79, %32
  %89 = load i8*, i8** %4, align 8
  ret i8* %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
