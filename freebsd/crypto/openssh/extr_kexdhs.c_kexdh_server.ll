; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhs.c_kexdh_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhs.c_kexdh_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32, i32* }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"expecting SSH2_MSG_KEXDH_INIT\00", align 1
@SSH2_MSG_KEXDH_INIT = common dso_local global i32 0, align 4
@input_kex_dh_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexdh_server(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.kex*, align 8
  %4 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %5 = load %struct.ssh*, %struct.ssh** %2, align 8
  %6 = getelementptr inbounds %struct.ssh, %struct.ssh* %5, i32 0, i32 0
  %7 = load %struct.kex*, %struct.kex** %6, align 8
  store %struct.kex* %7, %struct.kex** %3, align 8
  %8 = load %struct.kex*, %struct.kex** %3, align 8
  %9 = getelementptr inbounds %struct.kex, %struct.kex* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %27 [
    i32 128, label %11
    i32 132, label %15
    i32 131, label %15
    i32 130, label %19
    i32 129, label %23
  ]

11:                                               ; preds = %1
  %12 = call i32* (...) @dh_new_group1()
  %13 = load %struct.kex*, %struct.kex** %3, align 8
  %14 = getelementptr inbounds %struct.kex, %struct.kex* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  br label %29

15:                                               ; preds = %1, %1
  %16 = call i32* (...) @dh_new_group14()
  %17 = load %struct.kex*, %struct.kex** %3, align 8
  %18 = getelementptr inbounds %struct.kex, %struct.kex* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  br label %29

19:                                               ; preds = %1
  %20 = call i32* (...) @dh_new_group16()
  %21 = load %struct.kex*, %struct.kex** %3, align 8
  %22 = getelementptr inbounds %struct.kex, %struct.kex* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  br label %29

23:                                               ; preds = %1
  %24 = call i32* (...) @dh_new_group18()
  %25 = load %struct.kex*, %struct.kex** %3, align 8
  %26 = getelementptr inbounds %struct.kex, %struct.kex* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %23, %19, %15, %11
  %30 = load %struct.kex*, %struct.kex** %3, align 8
  %31 = getelementptr inbounds %struct.kex, %struct.kex* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %35, i32* %4, align 4
  br label %52

36:                                               ; preds = %29
  %37 = load %struct.kex*, %struct.kex** %3, align 8
  %38 = getelementptr inbounds %struct.kex, %struct.kex* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.kex*, %struct.kex** %3, align 8
  %41 = getelementptr inbounds %struct.kex, %struct.kex* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 8
  %44 = call i32 @dh_gen_key(i32* %39, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %52

47:                                               ; preds = %36
  %48 = call i32 @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.ssh*, %struct.ssh** %2, align 8
  %50 = load i32, i32* @SSH2_MSG_KEXDH_INIT, align 4
  %51 = call i32 @ssh_dispatch_set(%struct.ssh* %49, i32 %50, i32* @input_kex_dh_init)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %46, %34, %27
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @dh_new_group1(...) #1

declare dso_local i32* @dh_new_group14(...) #1

declare dso_local i32* @dh_new_group16(...) #1

declare dso_local i32* @dh_new_group18(...) #1

declare dso_local i32 @dh_gen_key(i32*, i32) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
