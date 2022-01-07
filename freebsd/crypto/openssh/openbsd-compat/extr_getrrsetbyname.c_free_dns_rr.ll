; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_free_dns_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_getrrsetbyname.c_free_dns_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_rr = type { %struct.dns_rr*, %struct.dns_rr*, %struct.dns_rr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dns_rr*)* @free_dns_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dns_rr(%struct.dns_rr* %0) #0 {
  %2 = alloca %struct.dns_rr*, align 8
  store %struct.dns_rr* %0, %struct.dns_rr** %2, align 8
  %3 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %4 = icmp eq %struct.dns_rr* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %32

6:                                                ; preds = %1
  %7 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %8 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %7, i32 0, i32 2
  %9 = load %struct.dns_rr*, %struct.dns_rr** %8, align 8
  %10 = icmp ne %struct.dns_rr* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %13 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %12, i32 0, i32 2
  %14 = load %struct.dns_rr*, %struct.dns_rr** %13, align 8
  %15 = call i32 @free(%struct.dns_rr* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %18 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %17, i32 0, i32 1
  %19 = load %struct.dns_rr*, %struct.dns_rr** %18, align 8
  %20 = icmp ne %struct.dns_rr* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %23 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %22, i32 0, i32 1
  %24 = load %struct.dns_rr*, %struct.dns_rr** %23, align 8
  %25 = call i32 @free(%struct.dns_rr* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %28 = getelementptr inbounds %struct.dns_rr, %struct.dns_rr* %27, i32 0, i32 0
  %29 = load %struct.dns_rr*, %struct.dns_rr** %28, align 8
  call void @free_dns_rr(%struct.dns_rr* %29)
  %30 = load %struct.dns_rr*, %struct.dns_rr** %2, align 8
  %31 = call i32 @free(%struct.dns_rr* %30)
  br label %32

32:                                               ; preds = %26, %5
  ret void
}

declare dso_local i32 @free(%struct.dns_rr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
