; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_select_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_select_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outside_network = type { i32, i32 }
%struct.pending = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pending* }

@MAX_ID_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to generate unique ID, drop msg\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"inserted new pending reply id=%4.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.outside_network*, %struct.pending*, i32*)* @select_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_id(%struct.outside_network* %0, %struct.pending* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.outside_network*, align 8
  %6 = alloca %struct.pending*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.outside_network* %0, %struct.outside_network** %5, align 8
  store %struct.pending* %1, %struct.pending** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %10 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ub_random(i32 %11)
  %13 = trunc i64 %12 to i32
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 65535
  %16 = load %struct.pending*, %struct.pending** %6, align 8
  %17 = getelementptr inbounds %struct.pending, %struct.pending* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @sldns_buffer_begin(i32* %18)
  %20 = load %struct.pending*, %struct.pending** %6, align 8
  %21 = getelementptr inbounds %struct.pending, %struct.pending* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @LDNS_ID_SET(i32 %19, i32 %22)
  %24 = load %struct.pending*, %struct.pending** %6, align 8
  %25 = load %struct.pending*, %struct.pending** %6, align 8
  %26 = getelementptr inbounds %struct.pending, %struct.pending* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.pending* %24, %struct.pending** %27, align 8
  br label %28

28:                                               ; preds = %62, %3
  %29 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %30 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pending*, %struct.pending** %6, align 8
  %33 = getelementptr inbounds %struct.pending, %struct.pending* %32, i32 0, i32 1
  %34 = call i32 @rbtree_insert(i32 %31, %struct.TYPE_2__* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = load %struct.outside_network*, %struct.outside_network** %5, align 8
  %39 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ub_random(i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 65535
  %45 = load %struct.pending*, %struct.pending** %6, align 8
  %46 = getelementptr inbounds %struct.pending, %struct.pending* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @sldns_buffer_begin(i32* %47)
  %49 = load %struct.pending*, %struct.pending** %6, align 8
  %50 = getelementptr inbounds %struct.pending, %struct.pending* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @LDNS_ID_SET(i32 %48, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @MAX_ID_RETRY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load %struct.pending*, %struct.pending** %6, align 8
  %60 = getelementptr inbounds %struct.pending, %struct.pending* %59, i32 0, i32 0
  store i32 99999, i32* %60, align 8
  %61 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %37
  br label %28

63:                                               ; preds = %28
  %64 = load i32, i32* @VERB_ALGO, align 4
  %65 = load %struct.pending*, %struct.pending** %6, align 8
  %66 = getelementptr inbounds %struct.pending, %struct.pending* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @verbose(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @ub_random(i32) #1

declare dso_local i32 @LDNS_ID_SET(i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @rbtree_insert(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
