; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_nextid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_nextid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccache_mutex = common dso_local global i32 0, align 4
@ccache_nextid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%ld:%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kcm_ccache_nextid(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @HEIMDAL_MUTEX_lock(i32* @ccache_mutex)
  %10 = load i32, i32* @ccache_nextid, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @ccache_nextid, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 @HEIMDAL_MUTEX_unlock(i32* @ccache_mutex)
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14)
  %16 = load i8*, i8** %8, align 8
  ret i8* %16
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
