; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_msg_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_msg_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }

@A_MSGTYPE = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@BPF_JEQ = common dso_local global i32 0, align 4
@CALL_PROCEED = common dso_local global i32 0, align 4
@CONNECT = common dso_local global i32 0, align 4
@CONNECT_ACK = common dso_local global i32 0, align 4
@RELEASE = common dso_local global i32 0, align 4
@RELEASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (i32*, i32)* @gen_msg_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_msg_abbrev(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.block*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %43 [
    i32 128, label %7
    i32 133, label %13
    i32 132, label %19
    i32 131, label %25
    i32 130, label %31
    i32 129, label %37
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @A_MSGTYPE, align 4
  %10 = load i32, i32* @SETUP, align 4
  %11 = load i32, i32* @BPF_JEQ, align 4
  %12 = call %struct.block* @gen_atmfield_code(i32* %8, i32 %9, i32 %10, i32 %11, i32 0)
  store %struct.block* %12, %struct.block** %5, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @A_MSGTYPE, align 4
  %16 = load i32, i32* @CALL_PROCEED, align 4
  %17 = load i32, i32* @BPF_JEQ, align 4
  %18 = call %struct.block* @gen_atmfield_code(i32* %14, i32 %15, i32 %16, i32 %17, i32 0)
  store %struct.block* %18, %struct.block** %5, align 8
  br label %45

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @A_MSGTYPE, align 4
  %22 = load i32, i32* @CONNECT, align 4
  %23 = load i32, i32* @BPF_JEQ, align 4
  %24 = call %struct.block* @gen_atmfield_code(i32* %20, i32 %21, i32 %22, i32 %23, i32 0)
  store %struct.block* %24, %struct.block** %5, align 8
  br label %45

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @A_MSGTYPE, align 4
  %28 = load i32, i32* @CONNECT_ACK, align 4
  %29 = load i32, i32* @BPF_JEQ, align 4
  %30 = call %struct.block* @gen_atmfield_code(i32* %26, i32 %27, i32 %28, i32 %29, i32 0)
  store %struct.block* %30, %struct.block** %5, align 8
  br label %45

31:                                               ; preds = %2
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @A_MSGTYPE, align 4
  %34 = load i32, i32* @RELEASE, align 4
  %35 = load i32, i32* @BPF_JEQ, align 4
  %36 = call %struct.block* @gen_atmfield_code(i32* %32, i32 %33, i32 %34, i32 %35, i32 0)
  store %struct.block* %36, %struct.block** %5, align 8
  br label %45

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @A_MSGTYPE, align 4
  %40 = load i32, i32* @RELEASE_DONE, align 4
  %41 = load i32, i32* @BPF_JEQ, align 4
  %42 = call %struct.block* @gen_atmfield_code(i32* %38, i32 %39, i32 %40, i32 %41, i32 0)
  store %struct.block* %42, %struct.block** %5, align 8
  br label %45

43:                                               ; preds = %2
  %44 = call i32 (...) @abort() #3
  unreachable

45:                                               ; preds = %37, %31, %25, %19, %13, %7
  %46 = load %struct.block*, %struct.block** %5, align 8
  ret %struct.block* %46
}

declare dso_local %struct.block* @gen_atmfield_code(i32*, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
