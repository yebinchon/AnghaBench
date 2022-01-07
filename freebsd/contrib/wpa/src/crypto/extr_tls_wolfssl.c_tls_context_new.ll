; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_context_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_tls_wolfssl.c_tls_context_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_context = type { i32, i32, i32 }
%struct.tls_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tls_context* (%struct.tls_config*)* @tls_context_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tls_context* @tls_context_new(%struct.tls_config* %0) #0 {
  %2 = alloca %struct.tls_context*, align 8
  %3 = alloca %struct.tls_config*, align 8
  %4 = alloca %struct.tls_context*, align 8
  store %struct.tls_config* %0, %struct.tls_config** %3, align 8
  %5 = call %struct.tls_context* @os_zalloc(i32 12)
  store %struct.tls_context* %5, %struct.tls_context** %4, align 8
  %6 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %7 = icmp ne %struct.tls_context* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.tls_context* null, %struct.tls_context** %2, align 8
  br label %30

9:                                                ; preds = %1
  %10 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %11 = icmp ne %struct.tls_config* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %14 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %17 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %19 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %22 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tls_config*, %struct.tls_config** %3, align 8
  %24 = getelementptr inbounds %struct.tls_config, %struct.tls_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  %27 = getelementptr inbounds %struct.tls_context, %struct.tls_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %12, %9
  %29 = load %struct.tls_context*, %struct.tls_context** %4, align 8
  store %struct.tls_context* %29, %struct.tls_context** %2, align 8
  br label %30

30:                                               ; preds = %28, %8
  %31 = load %struct.tls_context*, %struct.tls_context** %2, align 8
  ret %struct.tls_context* %31
}

declare dso_local %struct.tls_context* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
