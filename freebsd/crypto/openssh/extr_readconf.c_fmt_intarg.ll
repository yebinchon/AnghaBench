; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_fmt_intarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_fmt_intarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@multistate_addressfamily = common dso_local global i32 0, align 4
@multistate_yesnoask = common dso_local global i32 0, align 4
@multistate_strict_hostkey = common dso_local global i32 0, align 4
@multistate_controlmaster = common dso_local global i32 0, align 4
@multistate_tunnel = common dso_local global i32 0, align 4
@multistate_requesttty = common dso_local global i32 0, align 4
@multistate_canonicalizehostname = common dso_local global i32 0, align 4
@multistate_yesnoaskconfirm = common dso_local global i32 0, align 4
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
  br label %51

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %46 [
    i32 136, label %11
    i32 128, label %15
    i32 129, label %15
    i32 131, label %19
    i32 134, label %23
    i32 130, label %27
    i32 132, label %31
    i32 135, label %35
    i32 137, label %39
    i32 133, label %43
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @multistate_addressfamily, align 4
  %14 = call i8* @fmt_multistate_int(i32 %12, i32 %13)
  store i8* %14, i8** %3, align 8
  br label %51

15:                                               ; preds = %9, %9
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @multistate_yesnoask, align 4
  %18 = call i8* @fmt_multistate_int(i32 %16, i32 %17)
  store i8* %18, i8** %3, align 8
  br label %51

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @multistate_strict_hostkey, align 4
  %22 = call i8* @fmt_multistate_int(i32 %20, i32 %21)
  store i8* %22, i8** %3, align 8
  br label %51

23:                                               ; preds = %9
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @multistate_controlmaster, align 4
  %26 = call i8* @fmt_multistate_int(i32 %24, i32 %25)
  store i8* %26, i8** %3, align 8
  br label %51

27:                                               ; preds = %9
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @multistate_tunnel, align 4
  %30 = call i8* @fmt_multistate_int(i32 %28, i32 %29)
  store i8* %30, i8** %3, align 8
  br label %51

31:                                               ; preds = %9
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @multistate_requesttty, align 4
  %34 = call i8* @fmt_multistate_int(i32 %32, i32 %33)
  store i8* %34, i8** %3, align 8
  br label %51

35:                                               ; preds = %9
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @multistate_canonicalizehostname, align 4
  %38 = call i8* @fmt_multistate_int(i32 %36, i32 %37)
  store i8* %38, i8** %3, align 8
  br label %51

39:                                               ; preds = %9
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @multistate_yesnoaskconfirm, align 4
  %42 = call i8* @fmt_multistate_int(i32 %40, i32 %41)
  store i8* %42, i8** %3, align 8
  br label %51

43:                                               ; preds = %9
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @ssh_digest_alg_name(i32 %44)
  store i8* %45, i8** %3, align 8
  br label %51

46:                                               ; preds = %9
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %50 [
    i32 0, label %48
    i32 1, label %49
  ]

48:                                               ; preds = %46
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %51

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %51

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %51

51:                                               ; preds = %50, %49, %48, %43, %39, %35, %31, %27, %23, %19, %15, %11, %8
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i8* @fmt_multistate_int(i32, i32) #1

declare dso_local i8* @ssh_digest_alg_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
