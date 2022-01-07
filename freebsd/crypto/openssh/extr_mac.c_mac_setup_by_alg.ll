; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_setup_by_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_mac.c_mac_setup_by_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshmac = type { i64, i32, i32, i32, i32*, i32* }
%struct.macalg = type { i64, i32, i32, i32, i32, i32 }

@SSH_DIGEST = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sshmac*, %struct.macalg*)* @mac_setup_by_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_setup_by_alg(%struct.sshmac* %0, %struct.macalg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sshmac*, align 8
  %5 = alloca %struct.macalg*, align 8
  store %struct.sshmac* %0, %struct.sshmac** %4, align 8
  store %struct.macalg* %1, %struct.macalg** %5, align 8
  %6 = load %struct.macalg*, %struct.macalg** %5, align 8
  %7 = getelementptr inbounds %struct.macalg, %struct.macalg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %10 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %12 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSH_DIGEST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.macalg*, %struct.macalg** %5, align 8
  %18 = getelementptr inbounds %struct.macalg, %struct.macalg* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @ssh_hmac_start(i32 %19)
  %21 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %22 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %21, i32 0, i32 5
  store i32* %20, i32** %22, align 8
  %23 = icmp eq i32* %20, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %16
  %27 = load %struct.macalg*, %struct.macalg** %5, align 8
  %28 = getelementptr inbounds %struct.macalg, %struct.macalg* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ssh_hmac_bytes(i32 %29)
  %31 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %32 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %34 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 8
  br label %50

35:                                               ; preds = %2
  %36 = load %struct.macalg*, %struct.macalg** %5, align 8
  %37 = getelementptr inbounds %struct.macalg, %struct.macalg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 8
  %40 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %41 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.macalg*, %struct.macalg** %5, align 8
  %43 = getelementptr inbounds %struct.macalg, %struct.macalg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 8
  %46 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %47 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %49 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %48, i32 0, i32 4
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %35, %26
  %51 = load %struct.macalg*, %struct.macalg** %5, align 8
  %52 = getelementptr inbounds %struct.macalg, %struct.macalg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.macalg*, %struct.macalg** %5, align 8
  %57 = getelementptr inbounds %struct.macalg, %struct.macalg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 8
  %60 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %61 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.macalg*, %struct.macalg** %5, align 8
  %64 = getelementptr inbounds %struct.macalg, %struct.macalg* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sshmac*, %struct.sshmac** %4, align 8
  %67 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @ssh_hmac_start(i32) #1

declare dso_local i32 @ssh_hmac_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
