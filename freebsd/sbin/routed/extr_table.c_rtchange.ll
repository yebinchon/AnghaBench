; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.rt_entry = type { i64, i64, i32, %struct.rt_spare*, i8* }
%struct.rt_spare = type { i64, i64, i64, i32 }

@HOPCNT_INFINITY = common dso_local global i64 0, align 8
@now = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@need_kern = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EXPIRE_TIME = common dso_local global i64 0, align 8
@update_seqno = common dso_local global i8* null, align 8
@RS_SUBNET = common dso_local global i32 0, align 4
@TRACEACTIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Chg   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtchange(%struct.rt_entry* %0, i32 %1, %struct.rt_spare* %2, i8* %3) #0 {
  %5 = alloca %struct.rt_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt_spare*, align 8
  %8 = alloca i8*, align 8
  store %struct.rt_entry* %0, %struct.rt_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rt_spare* %2, %struct.rt_spare** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %10 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %13 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %4
  %17 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %18 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HOPCNT_INFINITY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 8
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @need_kern, i32 0, i32 0), align 8
  %24 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %25 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 8
  %28 = load i64, i64* @EXPIRE_TIME, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 8
  %33 = load i64, i64* @EXPIRE_TIME, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %36 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %22
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i8*, i8** @update_seqno, align 8
  %40 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %41 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = call i32 (...) @set_need_flash()
  br label %43

43:                                               ; preds = %38, %4
  %44 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %45 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %48 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @need_kern, i32 0, i32 0), align 8
  %53 = load i8*, i8** @update_seqno, align 8
  %54 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %55 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = call i32 (...) @set_need_flash()
  br label %57

57:                                               ; preds = %51, %43
  %58 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %59 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RS_SUBNET, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %67 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @AGE_RT(i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %57
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @now, i32 0, i32 0), align 8
  %73 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %74 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i64, i64* @TRACEACTIONS, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %84
  %88 = phi i8* [ %85, %84 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %86 ]
  %89 = call i32 @trace_change(%struct.rt_entry* %79, i32 %80, %struct.rt_spare* %81, i8* %88)
  br label %90

90:                                               ; preds = %87, %75
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %93 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.rt_entry*, %struct.rt_entry** %5, align 8
  %95 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %94, i32 0, i32 3
  %96 = load %struct.rt_spare*, %struct.rt_spare** %95, align 8
  %97 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %96, i64 0
  %98 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %99 = bitcast %struct.rt_spare* %97 to i8*
  %100 = bitcast %struct.rt_spare* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 32, i1 false)
  ret void
}

declare dso_local i32 @set_need_flash(...) #1

declare dso_local i32 @AGE_RT(i32, i32) #1

declare dso_local i32 @trace_change(%struct.rt_entry*, i32, %struct.rt_spare*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
