; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_futex_condvar_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_cloudabi_futex_condvar_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.futex_condvar = type { i32, %struct.futex_lock*, i32 }
%struct.futex_lock = type { i32 }
%struct.futex_waiter = type { i32, i64 }

@CLOUDABI_CONDVAR_HAS_NO_WAITERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Received threads while being locked\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CLOUDABI_CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Received threads on error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_futex_condvar_wait(%struct.thread* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.futex_condvar*, align 8
  %21 = alloca %struct.futex_lock*, align 8
  %22 = alloca %struct.futex_waiter, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %25 = load %struct.thread*, %struct.thread** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @futex_condvar_lookup_or_create(%struct.thread* %25, i32* %26, i32 %27, i32* %28, i32 %29, %struct.futex_condvar** %20)
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = load i32, i32* %23, align 4
  store i32 %34, i32* %10, align 4
  br label %137

35:                                               ; preds = %9
  %36 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %37 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %36, i32 0, i32 1
  %38 = load %struct.futex_lock*, %struct.futex_lock** %37, align 8
  store %struct.futex_lock* %38, %struct.futex_lock** %21, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @CLOUDABI_CONDVAR_HAS_NO_WAITERS, align 4
  %41 = xor i32 %40, -1
  %42 = call i32 @futex_user_store(i32* %39, i32 %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %47 = call i32 @futex_condvar_release(%struct.futex_condvar* %46)
  %48 = load i32, i32* %23, align 4
  store i32 %48, i32* %10, align 4
  br label %137

49:                                               ; preds = %35
  %50 = load %struct.futex_lock*, %struct.futex_lock** %21, align 8
  %51 = load %struct.thread*, %struct.thread** %11, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = call i32 @futex_lock_unlock(%struct.futex_lock* %50, %struct.thread* %51, i32* %52)
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %23, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @futex_condvar_unmanage(%struct.futex_condvar* %57, i32* %58)
  %60 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %61 = call i32 @futex_condvar_release(%struct.futex_condvar* %60)
  %62 = load i32, i32* %23, align 4
  store i32 %62, i32* %10, align 4
  br label %137

63:                                               ; preds = %49
  %64 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %65 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %69 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %68, i32 0, i32 2
  %70 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %71 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %70, i32 0, i32 1
  %72 = load %struct.futex_lock*, %struct.futex_lock** %71, align 8
  %73 = load %struct.thread*, %struct.thread** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @futex_queue_sleep(i32* %69, %struct.futex_lock* %72, %struct.futex_waiter* %22, %struct.thread* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %23, align 4
  %79 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %22, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %22, i32 0, i32 0
  %84 = call i64 @futex_queue_count(i32* %83)
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @KASSERT(i32 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %129

88:                                               ; preds = %63
  %89 = load i32, i32* %23, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %23, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @futex_condvar_unmanage(%struct.futex_condvar* %99, i32* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.futex_lock*, %struct.futex_lock** %21, align 8
  %104 = load %struct.thread*, %struct.thread** %11, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = load i32, i32* @CLOUDABI_CLOCK_MONOTONIC, align 4
  %107 = load i32, i32* @UINT64_MAX, align 4
  %108 = load i32, i32* %19, align 4
  %109 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %22, i32 0, i32 0
  %110 = call i32 @futex_lock_wrlock(%struct.futex_lock* %103, %struct.thread* %104, i32* %105, i32 %106, i32 %107, i32 0, i32 %108, i32* %109)
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* %24, align 4
  store i32 %114, i32* %23, align 4
  br label %115

115:                                              ; preds = %113, %102
  br label %128

116:                                              ; preds = %91
  %117 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %22, i32 0, i32 0
  %118 = call i64 @futex_queue_count(i32* %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @KASSERT(i32 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %122 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @futex_condvar_unmanage(%struct.futex_condvar* %122, i32* %123)
  %125 = load %struct.futex_lock*, %struct.futex_lock** %21, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = call i32 @futex_lock_unmanage(%struct.futex_lock* %125, i32* %126)
  br label %128

128:                                              ; preds = %116, %115
  br label %129

129:                                              ; preds = %128, %82
  %130 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %131 = getelementptr inbounds %struct.futex_condvar, %struct.futex_condvar* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.futex_condvar*, %struct.futex_condvar** %20, align 8
  %135 = call i32 @futex_condvar_release(%struct.futex_condvar* %134)
  %136 = load i32, i32* %23, align 4
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %129, %56, %45, %33
  %138 = load i32, i32* %10, align 4
  ret i32 %138
}

declare dso_local i32 @futex_condvar_lookup_or_create(%struct.thread*, i32*, i32, i32*, i32, %struct.futex_condvar**) #1

declare dso_local i32 @futex_user_store(i32*, i32) #1

declare dso_local i32 @futex_condvar_release(%struct.futex_condvar*) #1

declare dso_local i32 @futex_lock_unlock(%struct.futex_lock*, %struct.thread*, i32*) #1

declare dso_local i32 @futex_condvar_unmanage(%struct.futex_condvar*, i32*) #1

declare dso_local i32 @futex_queue_sleep(i32*, %struct.futex_lock*, %struct.futex_waiter*, %struct.thread*, i32, i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @futex_queue_count(i32*) #1

declare dso_local i32 @futex_lock_wrlock(%struct.futex_lock*, %struct.thread*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @futex_lock_unmanage(%struct.futex_lock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
