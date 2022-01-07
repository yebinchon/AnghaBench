; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/tests/extr_ld_library_pathfds.c_try_to_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/tests/extr_ld_library_pathfds.c_try_to_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@__const.try_to_run.args = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"fexecve() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8**, i8*, i8*)* @try_to_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_to_run(i32 %0, i32 %1, i8** %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i8*], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = call i64 (...) @atf_utils_fork()
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([2 x i8*]* @__const.try_to_run.args to i8*), i64 16, i1 false)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %20 = load i8**, i8*** %8, align 8
  %21 = call i32 @fexecve(i32 %18, i8** %19, i8** %20)
  %22 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %5
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @atf_utils_wait(i64 %24, i32 %25, i8* %26, i8* %27)
  ret void
}

declare dso_local i64 @atf_utils_fork(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fexecve(i32, i8**, i8**) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @atf_utils_wait(i64, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
