; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/libexec/ld.elf_so/extr_h_locking.c_test_dl_iterate_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/libexec/ld.elf_so/extr_h_locking.c_test_dl_iterate_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sleep_init = common dso_local global i64 0, align 8
@sleep_fini = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"libh_helper_dso2.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"opening helper failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"tls_callback\00", align 1
@tls_callback_sym = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"bad helper\0A\00", align 1
@test_dl_iterate_phdr_helper = common dso_local global i32 0, align 4
@dl_iterate_phdr_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dl_iterate_phdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dl_iterate_phdr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i64 0, i64* @sleep_init, align 8
  store i64 0, i64* @sleep_fini, align 8
  %3 = load i32, i32* @RTLD_LAZY, align 4
  %4 = call i8* @dlopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i8* %4, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @_exit(i32 1) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @dlsym(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32* %12, i32** @tls_callback_sym, align 8
  %13 = load i32*, i32** @tls_callback_sym, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %18 = call i32 @_exit(i32 1) #3
  unreachable

19:                                               ; preds = %10
  %20 = load i32, i32* @test_dl_iterate_phdr_helper, align 4
  %21 = call i32 @pthread_create(i32* %1, i32* null, i32 %20, i32* null)
  %22 = load i32, i32* @dl_iterate_phdr_cb, align 4
  %23 = call i64 @dl_iterate_phdr(i32 %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 @_exit(i32 1) #3
  unreachable

27:                                               ; preds = %19
  %28 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32* @dlsym(i8*, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i64 @dl_iterate_phdr(i32, i32*) #1

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
