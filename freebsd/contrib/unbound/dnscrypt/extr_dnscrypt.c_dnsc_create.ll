; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnsc_env = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"dnsc_create: could not initialize libsodium.\00", align 1
@sodium_misuse_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dnsc_env* @dnsc_create() #0 {
  %1 = alloca %struct.dnsc_env*, align 8
  %2 = call i32 (...) @sodium_init()
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @fatal_exit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i64 @calloc(i32 1, i32 20)
  %8 = inttoptr i64 %7 to %struct.dnsc_env*
  store %struct.dnsc_env* %8, %struct.dnsc_env** %1, align 8
  %9 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %10 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %9, i32 0, i32 4
  %11 = call i32 @lock_basic_init(i32* %10)
  %12 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %13 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %12, i32 0, i32 4
  %14 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %15 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %14, i32 0, i32 3
  %16 = call i32 @lock_protect(i32* %13, i32* %15, i32 4)
  %17 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %18 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %17, i32 0, i32 1
  %19 = call i32 @lock_basic_init(i32* %18)
  %20 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %21 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %20, i32 0, i32 1
  %22 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %23 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %22, i32 0, i32 2
  %24 = call i32 @lock_protect(i32* %21, i32* %23, i32 4)
  %25 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %26 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %25, i32 0, i32 1
  %27 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  %28 = getelementptr inbounds %struct.dnsc_env, %struct.dnsc_env* %27, i32 0, i32 0
  %29 = call i32 @lock_protect(i32* %26, i32* %28, i32 4)
  %30 = load %struct.dnsc_env*, %struct.dnsc_env** %1, align 8
  ret %struct.dnsc_env* %30
}

declare dso_local i32 @sodium_init(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
