; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_thread_db.c_thr_pread.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthread_db/extr_thread_db.c_thr_pread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@PS_OK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps_prochandle*, i32, i32*, i32, i32)* @thr_pread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thr_pread(%struct.ps_prochandle* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  store %struct.ps_prochandle* %0, %struct.ps_prochandle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
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
  %20 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @ps_pread(%struct.ps_prochandle* %20, i32 %21, i32* %22, i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @PS_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @EFAULT, align 4
  store i32 %29, i32* %6, align 4
  br label %77

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %74 [
    i32 129, label %32
    i32 128, label %53
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %50 [
    i32 1, label %34
    i32 2, label %38
    i32 4, label %42
    i32 8, label %46
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %52

38:                                               ; preds = %32
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %40 = call i32 @be16dec(i32* %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %52

42:                                               ; preds = %32
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %44 = call i32 @be32dec(i32* %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  br label %52

46:                                               ; preds = %32
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %48 = call i32 @be64dec(i32* %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %77

52:                                               ; preds = %46, %42, %38, %34
  br label %76

53:                                               ; preds = %30
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %71 [
    i32 1, label %55
    i32 2, label %59
    i32 4, label %63
    i32 8, label %67
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %73

59:                                               ; preds = %53
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %61 = call i32 @le16dec(i32* %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %73

63:                                               ; preds = %53
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %65 = call i32 @le32dec(i32* %64)
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %73

67:                                               ; preds = %53
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %69 = call i32 @le64dec(i32* %68)
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %6, align 4
  br label %77

73:                                               ; preds = %67, %63, %59, %55
  br label %76

74:                                               ; preds = %30
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %73, %52
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %74, %71, %50, %28, %17
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @ps_pread(%struct.ps_prochandle*, i32, i32*, i32) #1

declare dso_local i32 @be16dec(i32*) #1

declare dso_local i32 @be32dec(i32*) #1

declare dso_local i32 @be64dec(i32*) #1

declare dso_local i32 @le16dec(i32*) #1

declare dso_local i32 @le32dec(i32*) #1

declare dso_local i32 @le64dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
