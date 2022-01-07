; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_thread_db.c_thr_pwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_thread_db.c_thr_pwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PS_OK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps_prochandle*, i32, i32, i32, i32)* @thr_pwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thr_pwrite(%struct.ps_prochandle* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %15, 16
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @EOVERFLOW, align 4
  store i32 %18, i32* %6, align 4
  br label %77

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %61 [
    i32 129, label %21
    i32 128, label %41
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %38 [
    i32 1, label %23
    i32 2, label %26
    i32 4, label %30
    i32 8, label %34
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  br label %40

26:                                               ; preds = %21
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @be16enc(i32* %27, i32 %28)
  br label %40

30:                                               ; preds = %21
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @be32enc(i32* %31, i32 %32)
  br label %40

34:                                               ; preds = %21
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @be64enc(i32* %35, i32 %36)
  br label %40

38:                                               ; preds = %21
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %77

40:                                               ; preds = %34, %30, %26, %23
  br label %63

41:                                               ; preds = %19
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %58 [
    i32 1, label %43
    i32 2, label %46
    i32 4, label %50
    i32 8, label %54
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  br label %60

46:                                               ; preds = %41
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @le16enc(i32* %47, i32 %48)
  br label %60

50:                                               ; preds = %41
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @le32enc(i32* %51, i32 %52)
  br label %60

54:                                               ; preds = %41
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @le64enc(i32* %55, i32 %56)
  br label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %6, align 4
  br label %77

60:                                               ; preds = %54, %50, %46, %43
  br label %63

61:                                               ; preds = %19
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %6, align 4
  br label %77

63:                                               ; preds = %60, %40
  %64 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @ps_pwrite(%struct.ps_prochandle* %64, i32 %65, i32* %66, i32 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @PS_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @EFAULT, align 4
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %61, %58, %38, %17
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @be16enc(i32*, i32) #1

declare dso_local i32 @be32enc(i32*, i32) #1

declare dso_local i32 @be64enc(i32*, i32) #1

declare dso_local i32 @le16enc(i32*, i32) #1

declare dso_local i32 @le32enc(i32*, i32) #1

declare dso_local i32 @le64enc(i32*, i32) #1

declare dso_local i64 @ps_pwrite(%struct.ps_prochandle*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
