; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i32, i32, i32*, i32*, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, %struct.sshkey*, i32*, i32*, i32* }

@ED25519_PK_SZ = common dso_local global i32 0, align 4
@ED25519_SK_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sshkey_free(%struct.sshkey* %0) #0 {
  %2 = alloca %struct.sshkey*, align 8
  store %struct.sshkey* %0, %struct.sshkey** %2, align 8
  %3 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %4 = icmp eq %struct.sshkey* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %8 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %26 [
    i32 134, label %10
    i32 133, label %10
    i32 130, label %25
  ]

10:                                               ; preds = %6, %6
  %11 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %12 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %11, i32 0, i32 7
  %13 = load %struct.sshkey*, %struct.sshkey** %12, align 8
  %14 = load i32, i32* @ED25519_PK_SZ, align 4
  %15 = call i32 @freezero(%struct.sshkey* %13, i32 %14)
  %16 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %17 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %16, i32 0, i32 7
  store %struct.sshkey* null, %struct.sshkey** %17, align 8
  %18 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %19 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %18, i32 0, i32 6
  %20 = load %struct.sshkey*, %struct.sshkey** %19, align 8
  %21 = load i32, i32* @ED25519_SK_SZ, align 4
  %22 = call i32 @freezero(%struct.sshkey* %20, i32 %21)
  %23 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %24 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %23, i32 0, i32 6
  store %struct.sshkey* null, %struct.sshkey** %24, align 8
  br label %27

25:                                               ; preds = %6
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %25, %10
  %28 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %29 = call i64 @sshkey_is_cert(%struct.sshkey* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %33 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cert_free(i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.sshkey*, %struct.sshkey** %2, align 8
  %38 = call i32 @freezero(%struct.sshkey* %37, i32 80)
  br label %39

39:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @freezero(%struct.sshkey*, i32) #1

declare dso_local i64 @sshkey_is_cert(%struct.sshkey*) #1

declare dso_local i32 @cert_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
