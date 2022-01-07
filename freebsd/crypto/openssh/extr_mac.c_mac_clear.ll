; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshmac = type { i64, i32*, i32* }

@SSH_UMAC = common dso_local global i64 0, align 8
@SSH_UMAC128 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_clear(%struct.sshmac* %0) #0 {
  %2 = alloca %struct.sshmac*, align 8
  store %struct.sshmac* %0, %struct.sshmac** %2, align 8
  %3 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %4 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SSH_UMAC, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %10 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %15 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @umac_delete(i32* %16)
  br label %18

18:                                               ; preds = %13, %8
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %21 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSH_UMAC128, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %27 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %32 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @umac128_delete(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %47

36:                                               ; preds = %19
  %37 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %38 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %43 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ssh_hmac_free(i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %50 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.sshmac*, %struct.sshmac** %2, align 8
  %52 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  ret void
}

declare dso_local i32 @umac_delete(i32*) #1

declare dso_local i32 @umac128_delete(i32*) #1

declare dso_local i32 @ssh_hmac_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
