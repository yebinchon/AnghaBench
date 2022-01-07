; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mechglue_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/mech/extr_context.c__gss_mechglue_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_thread_ctx = type { i32 }

@context_mutex = common dso_local global i32 0, align 4
@created_key = common dso_local global i32 0, align 4
@context_key = common dso_local global i32 0, align 4
@destroy_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mg_thread_ctx* ()* @_gss_mechglue_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mg_thread_ctx* @_gss_mechglue_thread() #0 {
  %1 = alloca %struct.mg_thread_ctx*, align 8
  %2 = alloca %struct.mg_thread_ctx*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @HEIMDAL_MUTEX_lock(i32* @context_mutex)
  %5 = load i32, i32* @created_key, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @destroy_context, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @HEIMDAL_key_create(i32* @context_key, i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @HEIMDAL_MUTEX_unlock(i32* @context_mutex)
  store %struct.mg_thread_ctx* null, %struct.mg_thread_ctx** %1, align 8
  br label %40

15:                                               ; preds = %7
  store i32 1, i32* @created_key, align 4
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i32 @HEIMDAL_MUTEX_unlock(i32* @context_mutex)
  %18 = load i32, i32* @context_key, align 4
  %19 = call %struct.mg_thread_ctx* @HEIMDAL_getspecific(i32 %18)
  store %struct.mg_thread_ctx* %19, %struct.mg_thread_ctx** %2, align 8
  %20 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %2, align 8
  %21 = icmp eq %struct.mg_thread_ctx* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = call %struct.mg_thread_ctx* @calloc(i32 1, i32 4)
  store %struct.mg_thread_ctx* %23, %struct.mg_thread_ctx** %2, align 8
  %24 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %2, align 8
  %25 = icmp eq %struct.mg_thread_ctx* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.mg_thread_ctx* null, %struct.mg_thread_ctx** %1, align 8
  br label %40

27:                                               ; preds = %22
  %28 = load i32, i32* @context_key, align 4
  %29 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @HEIMDAL_setspecific(i32 %28, %struct.mg_thread_ctx* %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %2, align 8
  %36 = call i32 @free(%struct.mg_thread_ctx* %35)
  store %struct.mg_thread_ctx* null, %struct.mg_thread_ctx** %1, align 8
  br label %40

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %2, align 8
  store %struct.mg_thread_ctx* %39, %struct.mg_thread_ctx** %1, align 8
  br label %40

40:                                               ; preds = %38, %34, %26, %13
  %41 = load %struct.mg_thread_ctx*, %struct.mg_thread_ctx** %1, align 8
  ret %struct.mg_thread_ctx* %41
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_key_create(i32*, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local %struct.mg_thread_ctx* @HEIMDAL_getspecific(i32) #1

declare dso_local %struct.mg_thread_ctx* @calloc(i32, i32) #1

declare dso_local i32 @HEIMDAL_setspecific(i32, %struct.mg_thread_ctx*, i32) #1

declare dso_local i32 @free(%struct.mg_thread_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
