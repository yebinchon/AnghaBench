; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_sigcli.c_sighand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_sigcli.c_sighand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hostnamemib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sighand sysctl\00", align 1
@hostnamebuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"sighandler hostname\00", align 1
@sigexecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sighand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 128, i64* %4, align 8
  %5 = load i32, i32* @hostnamemib, align 4
  %6 = load i32, i32* @hostnamemib, align 4
  %7 = call i32 @__arraycount(i32 %6)
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %9 = call i32 @rump_sys___sysctl(i32 %5, i32 %7, i8* %8, i64* %4, i32* null, i32 0)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %15 = load i32, i32* @hostnamebuf, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %13
  %21 = load i32, i32* @sigexecs, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @sigexecs, align 4
  ret void
}

declare dso_local i32 @rump_sys___sysctl(i32, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @__arraycount(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
