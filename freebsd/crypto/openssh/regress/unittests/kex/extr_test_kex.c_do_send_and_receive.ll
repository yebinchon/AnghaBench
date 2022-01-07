; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/kex/extr_test_kex.c_do_send_and_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/kex/extr_test_kex.c_do_send_and_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ssh_packet_next: %s\0A\00", align 1
@do_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.ssh*)* @do_send_and_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_send_and_receive(%struct.ssh* %0, %struct.ssh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.ssh* %1, %struct.ssh** %5, align 8
  br label %10

10:                                               ; preds = %49, %2
  %11 = load %struct.ssh*, %struct.ssh** %4, align 8
  %12 = call i32 @ssh_packet_next(%struct.ssh* %11, i64* %6)
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i8* @ssh_err(i32 %16)
  %18 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %10
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %20
  %25 = load %struct.ssh*, %struct.ssh** %4, align 8
  %26 = call i64* @ssh_output_ptr(%struct.ssh* %25, i64* %7)
  store i64* %26, i64** %8, align 8
  %27 = load i64, i64* @do_debug, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %50

36:                                               ; preds = %32
  %37 = load %struct.ssh*, %struct.ssh** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ssh_output_consume(%struct.ssh* %37, i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.ssh*, %struct.ssh** %5, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @ssh_input_append(%struct.ssh* %42, i64* %43, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %41
  br label %10

50:                                               ; preds = %47, %35, %23, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ssh_packet_next(%struct.ssh*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i64* @ssh_output_ptr(%struct.ssh*, i64*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @ssh_output_consume(%struct.ssh*, i64) #1

declare dso_local i32 @ssh_input_append(%struct.ssh*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
