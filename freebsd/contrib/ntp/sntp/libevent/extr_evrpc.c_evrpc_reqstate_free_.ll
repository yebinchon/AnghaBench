; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_reqstate_free_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evrpc.c_evrpc_reqstate_free_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_req_generic = type { i32*, i32*, i32*, i32*, %struct.evrpc* }
%struct.evrpc = type { i32 (i32*)*, i32 (i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evrpc_reqstate_free_(%struct.evrpc_req_generic* %0) #0 {
  %2 = alloca %struct.evrpc_req_generic*, align 8
  %3 = alloca %struct.evrpc*, align 8
  store %struct.evrpc_req_generic* %0, %struct.evrpc_req_generic** %2, align 8
  %4 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %5 = icmp ne %struct.evrpc_req_generic* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @EVUTIL_ASSERT(i32 %6)
  %8 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %9 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %8, i32 0, i32 4
  %10 = load %struct.evrpc*, %struct.evrpc** %9, align 8
  store %struct.evrpc* %10, %struct.evrpc** %3, align 8
  %11 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %12 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %17 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @evrpc_hook_context_free_(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %22 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.evrpc*, %struct.evrpc** %3, align 8
  %27 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %26, i32 0, i32 1
  %28 = load i32 (i32*)*, i32 (i32*)** %27, align 8
  %29 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %30 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 %28(i32* %31)
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %35 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.evrpc*, %struct.evrpc** %3, align 8
  %40 = getelementptr inbounds %struct.evrpc, %struct.evrpc* %39, i32 0, i32 0
  %41 = load i32 (i32*)*, i32 (i32*)** %40, align 8
  %42 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %43 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 %41(i32* %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %48 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %53 = getelementptr inbounds %struct.evrpc_req_generic, %struct.evrpc_req_generic* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @evbuffer_free(i32* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.evrpc_req_generic*, %struct.evrpc_req_generic** %2, align 8
  %58 = call i32 @mm_free(%struct.evrpc_req_generic* %57)
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evrpc_hook_context_free_(i32*) #1

declare dso_local i32 @evbuffer_free(i32*) #1

declare dso_local i32 @mm_free(%struct.evrpc_req_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
