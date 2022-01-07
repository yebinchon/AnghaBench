; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_choose_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.sshmac = type { i8*, i64, i32* }

@SSH_ERR_NO_MAC_ALG_MATCH = common dso_local global i32 0, align 4
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*, %struct.sshmac*, i8*, i8*)* @choose_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_mac(%struct.ssh* %0, %struct.sshmac* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.sshmac*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %6, align 8
  store %struct.sshmac* %1, %struct.sshmac** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i8* @match_list(i8* %11, i8* %12, i32* null)
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SSH_ERR_NO_MAC_ALG_MATCH, align 4
  store i32 %17, i32* %5, align 4
  br label %35

18:                                               ; preds = %4
  %19 = load %struct.sshmac*, %struct.sshmac** %7, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @mac_setup(%struct.sshmac* %19, i8* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %18
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.sshmac*, %struct.sshmac** %7, align 8
  %30 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.sshmac*, %struct.sshmac** %7, align 8
  %32 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.sshmac*, %struct.sshmac** %7, align 8
  %34 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %23, %16
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i64 @mac_setup(%struct.sshmac*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
