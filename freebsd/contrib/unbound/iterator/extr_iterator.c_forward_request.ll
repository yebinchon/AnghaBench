; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_forward_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_forward_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iter_qstate = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32* }
%struct.delegpt = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@BIT_RD = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"forwarding request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*)* @forward_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forward_request(%struct.module_qstate* %0, %struct.iter_qstate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.iter_qstate*, align 8
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %5, align 8
  %9 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %10 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %14 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %18 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %28 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %33 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %26, %21, %2
  %38 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %39 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %46 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44, %37
  %50 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %51 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dname_is_root(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 @dname_remove_label(i32** %7, i64* %8)
  br label %58

58:                                               ; preds = %56, %49, %44
  %59 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %60 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %66 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.delegpt* @forwards_lookup(i32 %63, i32* %64, i32 %68)
  store %struct.delegpt* %69, %struct.delegpt** %6, align 8
  %70 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %71 = icmp ne %struct.delegpt* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %88

73:                                               ; preds = %58
  %74 = load i32, i32* @BIT_RD, align 4
  %75 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %76 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %80 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %81 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.TYPE_6__* @delegpt_copy(%struct.delegpt* %79, i32 %82)
  %84 = load %struct.iter_qstate*, %struct.iter_qstate** %5, align 8
  %85 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %84, i32 0, i32 0
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %85, align 8
  %86 = load i32, i32* @VERB_ALGO, align 4
  %87 = call i32 @verbose(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %73, %72
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.delegpt* @forwards_lookup(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @delegpt_copy(%struct.delegpt*, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
