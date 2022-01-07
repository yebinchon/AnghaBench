; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_add_permission.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_add_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.permission_set = type { i64 }

@FORWARD_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"allow %s forwarding to host %s port %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_add_permission(%struct.ssh* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.permission_set*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @FORWARD_LOCAL, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ssh*, %struct.ssh** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.permission_set* @permission_set_get(%struct.ssh* %17, i32 %18)
  store %struct.permission_set* %19, %struct.permission_set** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @fwd_ident(i32 %20, i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23, i32 %24)
  %26 = load %struct.ssh*, %struct.ssh** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i8*, i8** %9, align 8
  br label %34

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ null, %33 ]
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i8* [ null, %45 ], [ %47, %46 ]
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 0, %52 ], [ %54, %53 ]
  %57 = call i32 @permission_set_add(%struct.ssh* %26, i32 %27, i32 %28, i8* %35, i32 %42, i8* %49, i32* null, i32 %56, i32* null)
  %58 = load %struct.permission_set*, %struct.permission_set** %12, align 8
  %59 = getelementptr inbounds %struct.permission_set, %struct.permission_set* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local %struct.permission_set* @permission_set_get(%struct.ssh*, i32) #1

declare dso_local i32 @debug(i8*, i32, i8*, i32) #1

declare dso_local i32 @fwd_ident(i32, i32) #1

declare dso_local i32 @permission_set_add(%struct.ssh*, i32, i32, i8*, i32, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
