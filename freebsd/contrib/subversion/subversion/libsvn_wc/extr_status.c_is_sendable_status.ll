; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_is_sendable_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_is_sendable_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@svn_wc_status_none = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc_status_ignored = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@svn_wc_status_unversioned = common dso_local global i64 0, align 8
@svn_wc_status_normal = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i64)* @is_sendable_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @is_sendable_status(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @svn_wc_status_none, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %4, align 8
  br label %116

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %4, align 8
  br label %116

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %4, align 8
  br label %116

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @svn_wc_status_ignored, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %4, align 8
  br label %116

43:                                               ; preds = %38, %32
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @TRUE, align 8
  store i64 %47, i64* %4, align 8
  br label %116

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @svn_wc_status_unversioned, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @TRUE, align 8
  store i64 %55, i64* %4, align 8
  br label %116

56:                                               ; preds = %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @svn_wc_status_none, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @svn_wc_status_normal, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @svn_wc_status_deleted, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %68
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %4, align 8
  br label %116

81:                                               ; preds = %74, %62, %56
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %4, align 8
  br label %116

88:                                               ; preds = %81
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %4, align 8
  br label %116

100:                                              ; preds = %93, %88
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* @TRUE, align 8
  store i64 %106, i64* %4, align 8
  br label %116

107:                                              ; preds = %100
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %4, align 8
  br label %116

114:                                              ; preds = %107
  %115 = load i64, i64* @FALSE, align 8
  store i64 %115, i64* %4, align 8
  br label %116

116:                                              ; preds = %114, %112, %105, %98, %86, %79, %54, %46, %41, %30, %23, %16
  %117 = load i64, i64* %4, align 8
  ret i64 %117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
