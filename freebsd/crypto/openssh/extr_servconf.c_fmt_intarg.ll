; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_fmt_intarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_fmt_intarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@multistate_addressfamily = common dso_local global i32 0, align 4
@multistate_permitrootlogin = common dso_local global i32 0, align 4
@multistate_gatewayports = common dso_local global i32 0, align 4
@multistate_compression = common dso_local global i32 0, align 4
@multistate_tcpfwd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @fmt_intarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fmt_intarg(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %43

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %38 [
    i32 134, label %11
    i32 128, label %15
    i32 129, label %19
    i32 131, label %23
    i32 132, label %27
    i32 133, label %31
    i32 130, label %35
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @multistate_addressfamily, align 4
  %14 = call i8* @fmt_multistate_int(i32 %12, i32 %13)
  store i8* %14, i8** %3, align 8
  br label %43

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @multistate_permitrootlogin, align 4
  %18 = call i8* @fmt_multistate_int(i32 %16, i32 %17)
  store i8* %18, i8** %3, align 8
  br label %43

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @multistate_gatewayports, align 4
  %22 = call i8* @fmt_multistate_int(i32 %20, i32 %21)
  store i8* %22, i8** %3, align 8
  br label %43

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @multistate_compression, align 4
  %26 = call i8* @fmt_multistate_int(i32 %24, i32 %25)
  store i8* %26, i8** %3, align 8
  br label %43

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @multistate_tcpfwd, align 4
  %30 = call i8* @fmt_multistate_int(i32 %28, i32 %29)
  store i8* %30, i8** %3, align 8
  br label %43

31:                                               ; preds = %9
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @multistate_tcpfwd, align 4
  %34 = call i8* @fmt_multistate_int(i32 %32, i32 %33)
  store i8* %34, i8** %3, align 8
  br label %43

35:                                               ; preds = %9
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @ssh_digest_alg_name(i32 %36)
  store i8* %37, i8** %3, align 8
  br label %43

38:                                               ; preds = %9
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %42 [
    i32 0, label %40
    i32 1, label %41
  ]

40:                                               ; preds = %38
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %43

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %35, %31, %27, %23, %19, %15, %11, %8
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @fmt_multistate_int(i32, i32) #1

declare dso_local i8* @ssh_digest_alg_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
