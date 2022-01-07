; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_prime_root_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_prime_root_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32 }
%struct.ub_ctx = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@verb = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"resolve DNSKEY: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_result* (%struct.ub_ctx*)* @prime_root_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_result* @prime_root_key(%struct.ub_ctx* %0) #0 {
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca %struct.ub_result*, align 8
  %4 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %2, align 8
  store %struct.ub_result* null, %struct.ub_result** %3, align 8
  %5 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %6 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %7 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %8 = call i32 @ub_resolve(%struct.ub_ctx* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, %struct.ub_result** %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i64, i64* @verb, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @ub_strerror(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %20 = call i32 @ub_ctx_delete(%struct.ub_ctx* %19)
  %21 = call i32 @exit(i32 0) #3
  unreachable

22:                                               ; preds = %1
  %23 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  %24 = icmp ne %struct.ub_result* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @verb, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %32 = call i32 @ub_ctx_delete(%struct.ub_ctx* %31)
  %33 = call i32 @exit(i32 0) #3
  unreachable

34:                                               ; preds = %22
  %35 = load %struct.ub_result*, %struct.ub_result** %3, align 8
  ret %struct.ub_result* %35
}

declare dso_local i32 @ub_resolve(%struct.ub_ctx*, i8*, i32, i32, %struct.ub_result**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ub_strerror(i32) #1

declare dso_local i32 @ub_ctx_delete(%struct.ub_ctx*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
