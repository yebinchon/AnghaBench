; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/libexec/ld.elf_so/extr_h_locking.c_test_dlopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/libexec/ld.elf_so/extr_h_locking.c_test_dlopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sleep_init = common dso_local global i32 0, align 4
@sleep_fini = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@dlopen_cookie = common dso_local global i32 0, align 4
@init_fini_helper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"libh_helper_dso2.so\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"libutil.so\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dlopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dlopen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @sleep_init, align 4
  store i64 0, i64* @sleep_fini, align 8
  %3 = load i32, i32* @dlopen_cookie, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @init_fini_helper, align 4
  %6 = call i32 @__UNCONST(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @pthread_create(i32* %1, i32* null, i32 %5, i32 %6)
  %8 = call i32 @sleep(i32 1)
  %9 = load i32, i32* @dlopen_cookie, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @dlopen_cookie, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @_exit(i32 1) #3
  unreachable

15:                                               ; preds = %0
  %16 = call i32 @sleep(i32 1)
  %17 = load i32, i32* @init_fini_helper, align 4
  %18 = call i32 @__UNCONST(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @pthread_create(i32* %2, i32* null, i32 %17, i32 %18)
  %20 = load i32, i32* @dlopen_cookie, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @dlopen_cookie, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @_exit(i32 1) #3
  unreachable

26:                                               ; preds = %15
  %27 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
