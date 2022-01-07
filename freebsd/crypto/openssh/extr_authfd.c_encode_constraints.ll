; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_encode_constraints.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_authfd.c_encode_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshbuf = type { i32 }

@SSH_AGENT_CONSTRAIN_LIFETIME = common dso_local global i32 0, align 4
@SSH_AGENT_CONSTRAIN_CONFIRM = common dso_local global i32 0, align 4
@SSH_AGENT_CONSTRAIN_MAXSIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshbuf*, i64, i64, i64)* @encode_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_constraints(%struct.sshbuf* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sshbuf* %0, %struct.sshbuf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %14 = load i32, i32* @SSH_AGENT_CONSTRAIN_LIFETIME, align 4
  %15 = call i32 @sshbuf_put_u8(%struct.sshbuf* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @sshbuf_put_u32(%struct.sshbuf* %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12
  br label %50

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %29 = load i32, i32* @SSH_AGENT_CONSTRAIN_CONFIRM, align 4
  %30 = call i32 @sshbuf_put_u8(%struct.sshbuf* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %39 = load i32, i32* @SSH_AGENT_CONSTRAIN_MAXSIGN, align 4
  %40 = call i32 @sshbuf_put_u8(%struct.sshbuf* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @sshbuf_put_u32(%struct.sshbuf* %43, i64 %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  br label %50

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %34
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %47, %32, %22
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @sshbuf_put_u8(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
