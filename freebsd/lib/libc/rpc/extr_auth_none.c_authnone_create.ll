; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_none.c_authnone_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_none.c_authnone_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authnone_private = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@authnone_private = common dso_local global %struct.authnone_private* null, align 8
@authnone_lock = common dso_local global i32 0, align 4
@_null_auth = common dso_local global i32 0, align 4
@MAX_MARSHAL_SIZE = common dso_local global i64 0, align 8
@XDR_ENCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @authnone_create() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.authnone_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load %struct.authnone_private*, %struct.authnone_private** @authnone_private, align 8
  store %struct.authnone_private* %5, %struct.authnone_private** %2, align 8
  %6 = call i32 @mutex_lock(i32* @authnone_lock)
  %7 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %8 = icmp eq %struct.authnone_private* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call %struct.authnone_private* @calloc(i32 1, i32 20)
  store %struct.authnone_private* %10, %struct.authnone_private** %2, align 8
  %11 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %12 = icmp eq %struct.authnone_private* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @mutex_unlock(i32* @authnone_lock)
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %1, align 8
  br label %62

15:                                               ; preds = %9
  %16 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  store %struct.authnone_private* %16, %struct.authnone_private** @authnone_private, align 8
  br label %17

17:                                               ; preds = %15, %0
  %18 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %19 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @_null_auth, align 4
  %24 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %25 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %28 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %23, i32* %29, align 4
  %30 = call i32 (...) @authnone_ops()
  %31 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %32 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  store i32* %3, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %36 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @MAX_MARSHAL_SIZE, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @XDR_ENCODE, align 4
  %41 = call i32 @xdrmem_create(i32* %34, i32 %37, i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %44 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @xdr_opaque_auth(i32* %42, i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %49 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @xdr_opaque_auth(i32* %47, i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @XDR_GETPOS(i32* %52)
  %54 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %55 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @XDR_DESTROY(i32* %56)
  br label %58

58:                                               ; preds = %22, %17
  %59 = call i32 @mutex_unlock(i32* @authnone_lock)
  %60 = load %struct.authnone_private*, %struct.authnone_private** %2, align 8
  %61 = getelementptr inbounds %struct.authnone_private, %struct.authnone_private* %60, i32 0, i32 0
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %1, align 8
  br label %62

62:                                               ; preds = %58, %13
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %63
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.authnone_private* @calloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @authnone_ops(...) #1

declare dso_local i32 @xdrmem_create(i32*, i32, i32, i32) #1

declare dso_local i32 @xdr_opaque_auth(i32*, i32*) #1

declare dso_local i32 @XDR_GETPOS(i32*) #1

declare dso_local i32 @XDR_DESTROY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
