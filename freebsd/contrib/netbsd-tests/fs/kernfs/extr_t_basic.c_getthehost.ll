; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/kernfs/extr_t_basic.c_getthehost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/kernfs/extr_t_basic.c_getthehost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getthehost.buf = internal global [8192 x i8] zeroinitializer, align 16
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_HOSTNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sysctl gethostname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @getthehost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getthehost() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @CTL_KERN, align 4
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* @KERN_HOSTNAME, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %5, i32* %6, align 4
  store i64 8192, i64* %2, align 8
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %8 = call i32 @rump_sys___sysctl(i32* %7, i32 2, i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @getthehost.buf, i64 0, i64 0), i64* %2, i32* null, i32 0)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  ret i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @getthehost.buf, i64 0, i64 0)
}

declare dso_local i32 @rump_sys___sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
