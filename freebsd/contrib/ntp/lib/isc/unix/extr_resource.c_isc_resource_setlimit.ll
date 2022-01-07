; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_resource.c_isc_resource_setlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_resource.c_isc_resource_setlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ISC_RESOURCE_UNLIMITED = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i32 0, align 4
@isc_resource_openfiles = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@NR_OPEN = common dso_local global i32 0, align 4
@OPEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_resource_setlimit(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rlimit, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @resource2rlim(i64 %13, i32* %9)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @ISC_R_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %3, align 8
  br label %96

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @ISC_RESOURCE_UNLIMITED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @RLIM_INFINITY, align 4
  store i32 %25, i32* %7, align 4
  br label %41

26:                                               ; preds = %20
  %27 = call i64 @ISC_TF(i32 1)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i64 2147483647, i64* %11, align 8
  br label %32

31:                                               ; preds = %26
  store i64 -1, i64* %11, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i64, i64* %5, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %24
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @setrlimit(i32 %45, %struct.rlimit* %6)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %50, i64* %3, align 8
  br label %96

51:                                               ; preds = %41
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @isc_resource_openfiles, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @RLIM_INFINITY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  store i32 1048576, i32* %60, align 4
  %61 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i32 1048576, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @setrlimit(i32 %62, %struct.rlimit* %6)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %67, i64* %3, align 8
  br label %96

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %55, %51
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @isc_resource_openfiles, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @RLIM_INFINITY, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @getrlimit(i32 %78, %struct.rlimit* %6)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %6, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @setrlimit(i32 %85, %struct.rlimit* %6)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %90, i64* %3, align 8
  br label %96

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %73, %69
  %94 = load i32, i32* @errno, align 4
  %95 = call i64 @isc__errno2result(i32 %94)
  store i64 %95, i64* %3, align 8
  br label %96

96:                                               ; preds = %93, %89, %66, %49, %18
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i64 @resource2rlim(i64, i32*) #1

declare dso_local i64 @ISC_TF(i32) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @isc__errno2result(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
