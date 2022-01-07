; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c__yp_unbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/yp/extr_yplib.c__yp_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_binding = type { i32, i64, i32, i32* }
%struct.sockaddr_in = type { i64, i64 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dom_binding*)* @_yp_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_yp_unbind(%struct.dom_binding* %0) #0 {
  %2 = alloca %struct.dom_binding*, align 8
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dom_binding* %0, %struct.dom_binding** %2, align 8
  store i32 16, i32* %4, align 4
  %7 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %8 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %13 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %16 = call i32 @_getsockname(i32 %14, %struct.sockaddr* %15, i32* %4)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AF_INET, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %27 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %23, %18, %11
  %31 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %32 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %35 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @_dup(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %39 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @clnt_destroy(i32* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @_dup2(i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @_close(i32 %45)
  br label %52

47:                                               ; preds = %23
  %48 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %49 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @clnt_destroy(i32* %50)
  br label %52

52:                                               ; preds = %47, %30
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %55 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %57 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  %58 = load %struct.dom_binding*, %struct.dom_binding** %2, align 8
  %59 = getelementptr inbounds %struct.dom_binding, %struct.dom_binding* %58, i32 0, i32 2
  store i32 -1, i32* %59, align 8
  ret void
}

declare dso_local i32 @_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @_dup(i32) #1

declare dso_local i32 @clnt_destroy(i32*) #1

declare dso_local i32 @_dup2(i32, i32) #1

declare dso_local i32 @_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
