; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init.c__gsskrb5_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_init.c__gsskrb5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context_mutex = common dso_local global i32 0, align 4
@created_key = common dso_local global i32 0, align 4
@context_key = common dso_local global i32 0, align 4
@destroy_context = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gsskrb5_init(i32** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @HEIMDAL_MUTEX_lock(i32* @context_mutex)
  %6 = load i32, i32* @created_key, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @destroy_context, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @HEIMDAL_key_create(i32* @context_key, i32 %9, i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = call i32 @HEIMDAL_MUTEX_unlock(i32* @context_mutex)
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %48

17:                                               ; preds = %8
  store i32 1, i32* @created_key, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = call i32 @HEIMDAL_MUTEX_unlock(i32* @context_mutex)
  %20 = load i32, i32* @context_key, align 4
  %21 = call i32* @HEIMDAL_getspecific(i32 %20)
  %22 = load i32**, i32*** %3, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32**, i32*** %3, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = load i32**, i32*** %3, align 8
  %28 = call i64 @krb5_init_context(i32** %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* @context_key, align 4
  %33 = load i32**, i32*** %3, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @HEIMDAL_setspecific(i32 %32, i32* %34, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32**, i32*** %3, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @krb5_free_context(i32* %41)
  %43 = load i32**, i32*** %3, align 8
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %39, %31
  br label %45

45:                                               ; preds = %44, %26
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_key_create(i32*, i32, i64) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32* @HEIMDAL_getspecific(i32) #1

declare dso_local i64 @krb5_init_context(i32**) #1

declare dso_local i32 @HEIMDAL_setspecific(i32, i32*, i64) #1

declare dso_local i32 @krb5_free_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
