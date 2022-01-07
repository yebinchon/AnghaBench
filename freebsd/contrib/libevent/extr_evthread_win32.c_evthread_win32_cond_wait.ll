; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread_win32.c_evthread_win32_cond_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evthread_win32.c_evthread_win32_cond_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.evthread_win32_cond = type { i32, i64, i32, i32, i32 }

@INFINITE = common dso_local global i64 0, align 8
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.timeval*)* @evthread_win32_cond_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evthread_win32_cond_wait(i8* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.evthread_win32_cond*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.timeval* %2, %struct.timeval** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.evthread_win32_cond*
  store %struct.evthread_win32_cond* %18, %struct.evthread_win32_cond** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %8, align 8
  store i32 1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %21 = load i64, i64* @INFINITE, align 8
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* @INFINITE, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.timeval*, %struct.timeval** %6, align 8
  %24 = icmp ne %struct.timeval* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.timeval*, %struct.timeval** %6, align 8
  %27 = call i64 @evutil_tv_to_msec_(%struct.timeval* %26)
  store i64 %27, i64* %12, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %30 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %29, i32 0, i32 2
  %31 = call i32 @EnterCriticalSection(i32* %30)
  %32 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %33 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %37 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %40 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %39, i32 0, i32 2
  %41 = call i32 @LeaveCriticalSection(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @LeaveCriticalSection(i32* %42)
  %44 = call i64 (...) @GetTickCount()
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %127, %28
  %46 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %47 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %12, align 8
  %50 = call i64 @WaitForSingleObject(i32 %48, i64 %49)
  store i64 %50, i64* %16, align 8
  %51 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %52 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %51, i32 0, i32 2
  %53 = call i32 @EnterCriticalSection(i32* %52)
  %54 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %55 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %45
  %59 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %60 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %66 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %70 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %123

73:                                               ; preds = %58, %45
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @WAIT_OBJECT_0, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @WAIT_TIMEOUT, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 -1
  store i32 %82, i32* %11, align 4
  %83 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %84 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  store i32 0, i32* %10, align 4
  br label %123

87:                                               ; preds = %73
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* @INFINITE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = call i64 (...) @GetTickCount()
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %13, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i64, i64* %15, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  store i32 1, i32* %11, align 4
  %99 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %100 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %10, align 4
  br label %123

103:                                              ; preds = %91
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %13, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %15, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %114 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %119 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ResetEvent(i32 %120)
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122, %98, %77, %64
  %124 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %125 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %124, i32 0, i32 2
  %126 = call i32 @LeaveCriticalSection(i32* %125)
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %45, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @EnterCriticalSection(i32* %131)
  %133 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %134 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %133, i32 0, i32 2
  %135 = call i32 @EnterCriticalSection(i32* %134)
  %136 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %137 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %130
  %141 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %142 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ResetEvent(i32 %143)
  br label %145

145:                                              ; preds = %140, %130
  %146 = load %struct.evthread_win32_cond*, %struct.evthread_win32_cond** %7, align 8
  %147 = getelementptr inbounds %struct.evthread_win32_cond, %struct.evthread_win32_cond* %146, i32 0, i32 2
  %148 = call i32 @LeaveCriticalSection(i32* %147)
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

declare dso_local i64 @evutil_tv_to_msec_(%struct.timeval*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i64 @WaitForSingleObject(i32, i64) #1

declare dso_local i32 @ResetEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
