; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c__seterr_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_prot.c__seterr_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_msg = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rpc_err = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_seterr_reply(%struct.rpc_msg* %0, %struct.rpc_err* %1) #0 {
  %3 = alloca %struct.rpc_msg*, align 8
  %4 = alloca %struct.rpc_err*, align 8
  store %struct.rpc_msg* %0, %struct.rpc_msg** %3, align 8
  store %struct.rpc_err* %1, %struct.rpc_err** %4, align 8
  %5 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %6 = icmp ne %struct.rpc_msg* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %10 = icmp ne %struct.rpc_err* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %41 [
    i32 147, label %17
    i32 146, label %34
  ]

17:                                               ; preds = %2
  %18 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %25, i32 0, i32 0
  store i32 133, i32* %26, align 4
  br label %98

27:                                               ; preds = %17
  %28 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %29 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %33 = call i32 @accepted(i32 %31, %struct.rpc_err* %32)
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %36 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %40 = call i32 @rejected(i32 %38, %struct.rpc_err* %39)
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %43 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %42, i32 0, i32 0
  store i32 139, i32* %43, align 4
  %44 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %45 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %49 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %34, %27
  %52 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %53 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %97 [
    i32 128, label %55
    i32 145, label %72
    i32 134, label %79
    i32 139, label %96
    i32 133, label %96
    i32 136, label %96
    i32 138, label %96
    i32 129, label %96
    i32 130, label %96
    i32 132, label %96
    i32 144, label %96
    i32 137, label %96
    i32 135, label %96
    i32 131, label %96
    i32 141, label %96
    i32 140, label %96
    i32 143, label %96
    i32 142, label %96
  ]

55:                                               ; preds = %51
  %56 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %65 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %70 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  br label %98

72:                                               ; preds = %51
  %73 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %74 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %78 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %98

79:                                               ; preds = %51
  %80 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %81 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %86 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.rpc_msg*, %struct.rpc_msg** %3, align 8
  %89 = getelementptr inbounds %struct.rpc_msg, %struct.rpc_msg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rpc_err*, %struct.rpc_err** %4, align 8
  %94 = getelementptr inbounds %struct.rpc_err, %struct.rpc_err* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %98

96:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51
  br label %97

97:                                               ; preds = %51, %96
  br label %98

98:                                               ; preds = %24, %97, %79, %72, %55
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @accepted(i32, %struct.rpc_err*) #1

declare dso_local i32 @rejected(i32, %struct.rpc_err*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
