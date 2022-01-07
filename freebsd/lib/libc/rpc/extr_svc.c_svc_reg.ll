; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_svc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_callout = type { void (%struct.svc_req.0*, %struct.TYPE_5__*)*, i8*, %struct.svc_callout*, i32, i32 }
%struct.svc_req.0 = type opaque
%struct.TYPE_5__ = type { i8*, i32, i32 }
%struct.svc_req = type opaque
%struct.netconfig = type { i8* }

@FALSE = common dso_local global i32 0, align 4
@svc_lock = common dso_local global i32 0, align 4
@svc_head = common dso_local global %struct.svc_callout* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_reg(%struct.TYPE_5__* %0, i32 %1, i32 %2, void (%struct.svc_req*, %struct.TYPE_5__*)* %3, %struct.netconfig* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.svc_req*, %struct.TYPE_5__*)*, align 8
  %11 = alloca %struct.netconfig*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.svc_callout*, align 8
  %14 = alloca %struct.svc_callout*, align 8
  %15 = alloca %struct.netconfig*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store void (%struct.svc_req*, %struct.TYPE_5__*)* %3, void (%struct.svc_req*, %struct.TYPE_5__*)** %10, align 8
  store %struct.netconfig* %4, %struct.netconfig** %11, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strdup(i8* %25)
  store i8* %26, i8** %16, align 8
  store i32 1, i32* %17, align 4
  br label %55

27:                                               ; preds = %5
  %28 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %29 = icmp ne %struct.netconfig* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %32 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %37 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** %16, align 8
  store i32 1, i32* %17, align 4
  br label %54

40:                                               ; preds = %30, %27
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.netconfig* @__rpcgettp(i32 %43)
  store %struct.netconfig* %44, %struct.netconfig** %15, align 8
  %45 = icmp ne %struct.netconfig* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %48 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %16, align 8
  store i32 1, i32* %17, align 4
  %51 = load %struct.netconfig*, %struct.netconfig** %15, align 8
  %52 = call i32 @freenetconfigent(%struct.netconfig* %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i8*, i8** %16, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %17, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %6, align 4
  br label %140

63:                                               ; preds = %58, %55
  %64 = call i32 @rwlock_wrlock(i32* @svc_lock)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i8*, i8** %16, align 8
  %68 = call %struct.svc_callout* @svc_find(i32 %65, i32 %66, %struct.svc_callout** %13, i8* %67)
  store %struct.svc_callout* %68, %struct.svc_callout** %14, align 8
  %69 = icmp ne %struct.svc_callout* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %74 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %73, i32 0, i32 0
  %75 = load void (%struct.svc_req.0*, %struct.TYPE_5__*)*, void (%struct.svc_req.0*, %struct.TYPE_5__*)** %74, align 8
  %76 = load void (%struct.svc_req*, %struct.TYPE_5__*)*, void (%struct.svc_req*, %struct.TYPE_5__*)** %10, align 8
  %77 = bitcast void (%struct.svc_req*, %struct.TYPE_5__*)* %76 to void (%struct.svc_req.0*, %struct.TYPE_5__*)*
  %78 = icmp eq void (%struct.svc_req.0*, %struct.TYPE_5__*)* %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %126

80:                                               ; preds = %70
  %81 = call i32 @rwlock_unlock(i32* @svc_lock)
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %6, align 4
  br label %140

83:                                               ; preds = %63
  %84 = call %struct.svc_callout* @mem_alloc(i32 32)
  store %struct.svc_callout* %84, %struct.svc_callout** %14, align 8
  %85 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %86 = icmp eq %struct.svc_callout* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i8*, i8** %16, align 8
  %89 = call i32 @free(i8* %88)
  %90 = call i32 @rwlock_unlock(i32* @svc_lock)
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %6, align 4
  br label %140

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %95 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %98 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load void (%struct.svc_req*, %struct.TYPE_5__*)*, void (%struct.svc_req*, %struct.TYPE_5__*)** %10, align 8
  %100 = bitcast void (%struct.svc_req*, %struct.TYPE_5__*)* %99 to void (%struct.svc_req.0*, %struct.TYPE_5__*)*
  %101 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %102 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %101, i32 0, i32 0
  store void (%struct.svc_req.0*, %struct.TYPE_5__*)* %100, void (%struct.svc_req.0*, %struct.TYPE_5__*)** %102, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %105 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.svc_callout*, %struct.svc_callout** @svc_head, align 8
  %107 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  %108 = getelementptr inbounds %struct.svc_callout, %struct.svc_callout* %107, i32 0, i32 2
  store %struct.svc_callout* %106, %struct.svc_callout** %108, align 8
  %109 = load %struct.svc_callout*, %struct.svc_callout** %14, align 8
  store %struct.svc_callout* %109, %struct.svc_callout** @svc_head, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %92
  %115 = load i32, i32* %17, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i8*, i8** %16, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i8*, i8** %16, align 8
  %122 = call i8* @strdup(i8* %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %120, %117, %114, %92
  br label %126

126:                                              ; preds = %125, %79
  %127 = call i32 @rwlock_unlock(i32* @svc_lock)
  %128 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %129 = icmp ne %struct.netconfig* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = call i32 @rpcb_set(i32 %131, i32 %132, %struct.netconfig* %133, i32* %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %6, align 4
  br label %140

138:                                              ; preds = %126
  %139 = load i32, i32* @TRUE, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %130, %87, %80, %61
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.netconfig* @__rpcgettp(i32) #1

declare dso_local i32 @freenetconfigent(%struct.netconfig*) #1

declare dso_local i32 @rwlock_wrlock(i32*) #1

declare dso_local %struct.svc_callout* @svc_find(i32, i32, %struct.svc_callout**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

declare dso_local %struct.svc_callout* @mem_alloc(i32) #1

declare dso_local i32 @rpcb_set(i32, i32, %struct.netconfig*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
