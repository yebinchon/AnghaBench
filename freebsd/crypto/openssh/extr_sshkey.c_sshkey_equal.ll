; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_equal(%struct.sshkey* %0, %struct.sshkey* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca %struct.sshkey*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store %struct.sshkey* %1, %struct.sshkey** %5, align 8
  %6 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %7 = icmp eq %struct.sshkey* %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %10 = icmp eq %struct.sshkey* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %13 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %16 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %11
  %21 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %22 = call i64 @sshkey_is_cert(%struct.sshkey* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %26 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %29 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cert_compare(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %37 = load %struct.sshkey*, %struct.sshkey** %5, align 8
  %38 = call i32 @sshkey_equal_public(%struct.sshkey* %36, %struct.sshkey* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %33, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @cert_compare(i32, i32) #1

declare dso_local i32 @sshkey_equal_public(%struct.sshkey*, %struct.sshkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
