; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localtime_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_localtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@lcl_rwlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @localtime_r(i32* %0, %struct.tm* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tm*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  %6 = call i32 @tzset_basic(i32 1)
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = call %struct.tm* @localsub(i32* %7, i64 0, %struct.tm* %8)
  store %struct.tm* %9, %struct.tm** %4, align 8
  %10 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  %11 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %11
}

declare dso_local i32 @_RWLOCK_RDLOCK(i32*) #1

declare dso_local i32 @tzset_basic(i32) #1

declare dso_local %struct.tm* @localsub(i32*, i64, %struct.tm*) #1

declare dso_local i32 @_RWLOCK_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
