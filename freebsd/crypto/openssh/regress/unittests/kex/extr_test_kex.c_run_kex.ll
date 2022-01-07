; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/kex/extr_test_kex.c_run_kex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/unittests/kex/extr_test_kex.c_run_kex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@do_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" S:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" C:\00", align 1
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

6:                                                ; preds = %45, %2
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
  br i1 %22, label %23, label %46

23:                                               ; preds = %21
  %24 = load i64, i64* @do_debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load %struct.ssh*, %struct.ssh** %4, align 8
  %30 = load %struct.ssh*, %struct.ssh** %3, align 8
  %31 = call i32 @do_send_and_receive(%struct.ssh* %29, %struct.ssh* %30)
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %46

34:                                               ; preds = %28
  %35 = load i64, i64* @do_debug, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.ssh*, %struct.ssh** %3, align 8
  %41 = load %struct.ssh*, %struct.ssh** %4, align 8
  %42 = call i32 @do_send_and_receive(%struct.ssh* %40, %struct.ssh* %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %46

45:                                               ; preds = %39
  br label %6

46:                                               ; preds = %44, %33, %21
  %47 = load i64, i64* @do_debug, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = call i8* @ssh_err(i32 %50)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ASSERT_INT_EQ(i32 %54, i32 0)
  %56 = load %struct.ssh*, %struct.ssh** %4, align 8
  %57 = getelementptr inbounds %struct.ssh, %struct.ssh* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ASSERT_INT_EQ(i32 %60, i32 1)
  %62 = load %struct.ssh*, %struct.ssh** %3, align 8
  %63 = getelementptr inbounds %struct.ssh, %struct.ssh* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ASSERT_INT_EQ(i32 %66, i32 1)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @do_send_and_receive(%struct.ssh*, %struct.ssh*) #1

declare dso_local i8* @ssh_err(i32) #1

declare dso_local i32 @ASSERT_INT_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
