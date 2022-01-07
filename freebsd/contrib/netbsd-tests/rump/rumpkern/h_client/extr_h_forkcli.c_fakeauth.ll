; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_fakeauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_forkcli.c_fakeauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rumpclient_fork = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"prefork\00", align 1
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fakeauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fakeauth() #0 {
  %1 = alloca %struct.rumpclient_fork*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.rumpclient_fork* (...) @rumpclient_prefork()
  store %struct.rumpclient_fork* %4, %struct.rumpclient_fork** %1, align 8
  %5 = icmp eq %struct.rumpclient_fork* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load %struct.rumpclient_fork*, %struct.rumpclient_fork** %1, align 8
  %10 = bitcast %struct.rumpclient_fork* %9 to i8*
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %14, 1
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rumpclient_fork*, %struct.rumpclient_fork** %1, align 8
  %19 = call i32 @rumpclient_fork_init(%struct.rumpclient_fork* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ESRCH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %8
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %22
  ret void
}

declare dso_local %struct.rumpclient_fork* @rumpclient_prefork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @rumpclient_fork_init(%struct.rumpclient_fork*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
