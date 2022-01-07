; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_run_kex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_run_kex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"do_send_and_receive S2C: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"do_send_and_receive C2S: %s\00", align 1
@do_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"done: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.ssh*)* @run_kex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_kex(%struct.ssh* %0, %struct.ssh* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.ssh* %1, %struct.ssh** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %2
  %7 = load %struct.ssh*, %struct.ssh** %4, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.ssh*, %struct.ssh** %3, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %13, %6
  %22 = phi i1 [ true, %6 ], [ %20, %13 ]
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  %24 = load %struct.ssh*, %struct.ssh** %4, align 8
  %25 = load %struct.ssh*, %struct.ssh** %3, align 8
  %26 = call i32 @do_send_and_receive(%struct.ssh* %24, %struct.ssh* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @ssh_err(i32 %29)
  %31 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.ssh*, %struct.ssh** %3, align 8
  %34 = load %struct.ssh*, %struct.ssh** %4, align 8
  %35 = call i32 @do_send_and_receive(%struct.ssh* %33, %struct.ssh* %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @ssh_err(i32 %38)
  %40 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %42

41:                                               ; preds = %32
  br label %6

42:                                               ; preds = %37, %28, %21
  %43 = load i64, i64* @do_debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = call i8* @ssh_err(i32 %46)
  %48 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ASSERT_INT_EQ(i32 %50, i32 0)
  %52 = load %struct.ssh*, %struct.ssh** %4, align 8
  %53 = getelementptr inbounds %struct.ssh, %struct.ssh* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ASSERT_INT_EQ(i32 %56, i32 1)
  %58 = load %struct.ssh*, %struct.ssh** %3, align 8
  %59 = getelementptr inbounds %struct.ssh, %struct.ssh* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ASSERT_INT_EQ(i32 %62, i32 1)
  ret void
}

declare dso_local i32 @do_send_and_receive(%struct.ssh*, %struct.ssh*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
