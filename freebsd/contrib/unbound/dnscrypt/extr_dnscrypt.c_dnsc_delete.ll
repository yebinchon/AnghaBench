; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DNSCrypt: Freeing environment.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnsc_delete(%struct.dnsc_env* %0) #0 {
  %2 = alloca %struct.dnsc_env*, align 8
  store %struct.dnsc_env* %0, %struct.dnsc_env** %2, align 8
  %3 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %4 = icmp ne %struct.dnsc_env* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %41

6:                                                ; preds = %1
  %7 = load i32, i32* @VERB_OPS, align 4
  %8 = call i32 @verbose(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %10 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sodium_free(i32 %11)
  %13 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %14 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sodium_free(i32 %15)
  %17 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %18 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sodium_free(i32 %19)
  %21 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %22 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sodium_free(i32 %23)
  %25 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %26 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %25, i32 0, i32 3
  %27 = call i32 @lock_basic_destroy(i32* %26)
  %28 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %29 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %28, i32 0, i32 2
  %30 = call i32 @lock_basic_destroy(i32* %29)
  %31 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %32 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @slabhash_delete(i32 %33)
  %35 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %36 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @slabhash_delete(i32 %37)
  %39 = load %struct.dnsc_env*, %struct.dnsc_env** %2, align 8
  %40 = call i32 @free(%struct.dnsc_env* %39)
  br label %41

41:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @sodium_free(i32) #1

declare dso_local i32 @lock_basic_destroy(i32*) #1

declare dso_local i32 @slabhash_delete(i32) #1

declare dso_local i32 @free(%struct.dnsc_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
