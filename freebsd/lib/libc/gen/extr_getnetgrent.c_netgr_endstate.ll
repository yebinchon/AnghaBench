; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c_netgr_endstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getnetgrent.c_netgr_endstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linelist = type { %struct.linelist**, %struct.linelist*, %struct.linelist*, %struct.linelist*, %struct.linelist* }
%struct.netgrp = type { %struct.netgrp**, %struct.netgrp*, %struct.netgrp*, %struct.netgrp*, %struct.netgrp* }
%struct.netgr_state = type { i32*, %struct.netgrp*, %struct.netgrp*, %struct.netgrp* }

@NG_HOST = common dso_local global i64 0, align 8
@NG_USER = common dso_local global i64 0, align 8
@NG_DOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @netgr_endstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netgr_endstate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.linelist*, align 8
  %4 = alloca %struct.linelist*, align 8
  %5 = alloca %struct.netgrp*, align 8
  %6 = alloca %struct.netgrp*, align 8
  %7 = alloca %struct.netgr_state*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.netgr_state*
  store %struct.netgr_state* %9, %struct.netgr_state** %7, align 8
  %10 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %11 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %10, i32 0, i32 3
  %12 = load %struct.netgrp*, %struct.netgrp** %11, align 8
  %13 = bitcast %struct.netgrp* %12 to %struct.linelist*
  store %struct.linelist* %13, %struct.linelist** %3, align 8
  br label %14

14:                                               ; preds = %17, %1
  %15 = load %struct.linelist*, %struct.linelist** %3, align 8
  %16 = icmp ne %struct.linelist* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.linelist*, %struct.linelist** %3, align 8
  store %struct.linelist* %18, %struct.linelist** %4, align 8
  %19 = load %struct.linelist*, %struct.linelist** %3, align 8
  %20 = getelementptr inbounds %struct.linelist, %struct.linelist* %19, i32 0, i32 4
  %21 = load %struct.linelist*, %struct.linelist** %20, align 8
  store %struct.linelist* %21, %struct.linelist** %3, align 8
  %22 = load %struct.linelist*, %struct.linelist** %4, align 8
  %23 = getelementptr inbounds %struct.linelist, %struct.linelist* %22, i32 0, i32 3
  %24 = load %struct.linelist*, %struct.linelist** %23, align 8
  %25 = bitcast %struct.linelist* %24 to %struct.netgrp*
  %26 = call i32 @free(%struct.netgrp* %25)
  %27 = load %struct.linelist*, %struct.linelist** %4, align 8
  %28 = getelementptr inbounds %struct.linelist, %struct.linelist* %27, i32 0, i32 2
  %29 = load %struct.linelist*, %struct.linelist** %28, align 8
  %30 = bitcast %struct.linelist* %29 to %struct.netgrp*
  %31 = call i32 @free(%struct.netgrp* %30)
  %32 = load %struct.linelist*, %struct.linelist** %4, align 8
  %33 = bitcast %struct.linelist* %32 to %struct.netgrp*
  %34 = call i32 @free(%struct.netgrp* %33)
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %37 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %36, i32 0, i32 3
  store %struct.netgrp* null, %struct.netgrp** %37, align 8
  %38 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %39 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %38, i32 0, i32 2
  %40 = load %struct.netgrp*, %struct.netgrp** %39, align 8
  %41 = icmp ne %struct.netgrp* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %44 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %43, i32 0, i32 2
  %45 = load %struct.netgrp*, %struct.netgrp** %44, align 8
  %46 = call i32 @free(%struct.netgrp* %45)
  %47 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %48 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %47, i32 0, i32 2
  store %struct.netgrp* null, %struct.netgrp** %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %51 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %50, i32 0, i32 1
  %52 = load %struct.netgrp*, %struct.netgrp** %51, align 8
  store %struct.netgrp* %52, %struct.netgrp** %5, align 8
  br label %53

53:                                               ; preds = %56, %49
  %54 = load %struct.netgrp*, %struct.netgrp** %5, align 8
  %55 = icmp ne %struct.netgrp* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load %struct.netgrp*, %struct.netgrp** %5, align 8
  store %struct.netgrp* %57, %struct.netgrp** %6, align 8
  %58 = load %struct.netgrp*, %struct.netgrp** %5, align 8
  %59 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %58, i32 0, i32 1
  %60 = load %struct.netgrp*, %struct.netgrp** %59, align 8
  store %struct.netgrp* %60, %struct.netgrp** %5, align 8
  %61 = load %struct.netgrp*, %struct.netgrp** %6, align 8
  %62 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %61, i32 0, i32 0
  %63 = load %struct.netgrp**, %struct.netgrp*** %62, align 8
  %64 = load i64, i64* @NG_HOST, align 8
  %65 = getelementptr inbounds %struct.netgrp*, %struct.netgrp** %63, i64 %64
  %66 = load %struct.netgrp*, %struct.netgrp** %65, align 8
  %67 = call i32 @free(%struct.netgrp* %66)
  %68 = load %struct.netgrp*, %struct.netgrp** %6, align 8
  %69 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %68, i32 0, i32 0
  %70 = load %struct.netgrp**, %struct.netgrp*** %69, align 8
  %71 = load i64, i64* @NG_USER, align 8
  %72 = getelementptr inbounds %struct.netgrp*, %struct.netgrp** %70, i64 %71
  %73 = load %struct.netgrp*, %struct.netgrp** %72, align 8
  %74 = call i32 @free(%struct.netgrp* %73)
  %75 = load %struct.netgrp*, %struct.netgrp** %6, align 8
  %76 = getelementptr inbounds %struct.netgrp, %struct.netgrp* %75, i32 0, i32 0
  %77 = load %struct.netgrp**, %struct.netgrp*** %76, align 8
  %78 = load i64, i64* @NG_DOM, align 8
  %79 = getelementptr inbounds %struct.netgrp*, %struct.netgrp** %77, i64 %78
  %80 = load %struct.netgrp*, %struct.netgrp** %79, align 8
  %81 = call i32 @free(%struct.netgrp* %80)
  %82 = load %struct.netgrp*, %struct.netgrp** %6, align 8
  %83 = call i32 @free(%struct.netgrp* %82)
  br label %53

84:                                               ; preds = %53
  %85 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %86 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %85, i32 0, i32 1
  store %struct.netgrp* null, %struct.netgrp** %86, align 8
  %87 = load %struct.netgr_state*, %struct.netgr_state** %7, align 8
  %88 = getelementptr inbounds %struct.netgr_state, %struct.netgr_state* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  ret void
}

declare dso_local i32 @free(%struct.netgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
