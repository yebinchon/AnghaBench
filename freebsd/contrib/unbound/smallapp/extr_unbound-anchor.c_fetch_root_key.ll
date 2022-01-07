; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_fetch_root_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_fetch_root_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32 }
%struct.ub_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_result* (i8*, i8*, i8*, i8*, i32, i32)* @fetch_root_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_result* @fetch_root_key(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ub_ctx*, align 8
  %14 = alloca %struct.ub_result*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.ub_ctx* @create_unbound_context(i8* %15, i8* %16, i8* %17, i32 %18, i32 %19)
  store %struct.ub_ctx* %20, %struct.ub_ctx** %13, align 8
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %13, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @add_5011_probe_root(%struct.ub_ctx* %21, i8* %22)
  %24 = load %struct.ub_ctx*, %struct.ub_ctx** %13, align 8
  %25 = call %struct.ub_result* @prime_root_key(%struct.ub_ctx* %24)
  store %struct.ub_result* %25, %struct.ub_result** %14, align 8
  %26 = load %struct.ub_ctx*, %struct.ub_ctx** %13, align 8
  %27 = call i32 @ub_ctx_delete(%struct.ub_ctx* %26)
  %28 = load %struct.ub_result*, %struct.ub_result** %14, align 8
  ret %struct.ub_result* %28
}

declare dso_local %struct.ub_ctx* @create_unbound_context(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @add_5011_probe_root(%struct.ub_ctx*, i8*) #1

declare dso_local %struct.ub_result* @prime_root_key(%struct.ub_ctx*) #1

declare dso_local i32 @ub_ctx_delete(%struct.ub_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
