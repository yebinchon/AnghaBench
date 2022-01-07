; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_set_call_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_set_call_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.call = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@CALLST_NULL = common dso_local global i32 0, align 4
@UNIPROTO_UNI40U = common dso_local global i64 0, align 8
@CALLST_U1 = common dso_local global i32 0, align 4
@CALLST_U12 = common dso_local global i32 0, align 4
@UNIPROTO_UNI40N = common dso_local global i64 0, align 8
@CALLST_N1 = common dso_local global i32 0, align 4
@CALLST_N12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"setting wrong callstate for proto %u: %u\00", align 1
@UNI_FAC_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"call %d/%d %s -> %s\00", align 1
@callstates = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, i32)* @set_call_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_call_state(%struct.call* %0, i32 %1) #0 {
  %3 = alloca %struct.call*, align 8
  %4 = alloca i32, align 4
  store %struct.call* %0, %struct.call** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CALLST_NULL, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = load %struct.call*, %struct.call** %3, align 8
  %10 = getelementptr inbounds %struct.call, %struct.call* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UNIPROTO_UNI40U, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CALLST_U1, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CALLST_U12, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %20, %16, %8
  %25 = load %struct.call*, %struct.call** %3, align 8
  %26 = getelementptr inbounds %struct.call, %struct.call* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UNIPROTO_UNI40N, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CALLST_N1, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CALLST_N12, align 4
  %39 = icmp ule i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i1 [ false, %24 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %20, %2
  %45 = phi i1 [ true, %20 ], [ true, %2 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.call*, %struct.call** %3, align 8
  %48 = getelementptr inbounds %struct.call, %struct.call* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @ASSERT(i32 %46, i8* %54)
  %56 = load %struct.call*, %struct.call** %3, align 8
  %57 = getelementptr inbounds %struct.call, %struct.call* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %44
  %62 = load %struct.call*, %struct.call** %3, align 8
  %63 = getelementptr inbounds %struct.call, %struct.call* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* @UNI_FAC_CALL, align 4
  %66 = load %struct.call*, %struct.call** %3, align 8
  %67 = getelementptr inbounds %struct.call, %struct.call* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.call*, %struct.call** %3, align 8
  %70 = getelementptr inbounds %struct.call, %struct.call* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @callstates, align 8
  %73 = load %struct.call*, %struct.call** %3, align 8
  %74 = getelementptr inbounds %struct.call, %struct.call* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @callstates, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VERBOSE(%struct.TYPE_4__* %64, i32 %65, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %79, i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.call*, %struct.call** %3, align 8
  %89 = getelementptr inbounds %struct.call, %struct.call* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %61, %44
  ret void
}

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @VERBOSE(%struct.TYPE_4__*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
