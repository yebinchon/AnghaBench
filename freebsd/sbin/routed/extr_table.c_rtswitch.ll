; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_spare = type { i64 }
%struct.rt_entry = type { i32, %struct.rt_spare* }

@RS_MHOME = common dso_local global i32 0, align 4
@RS_STATIC = common dso_local global i32 0, align 4
@RS_RDISC = common dso_local global i32 0, align 4
@RS_NET_SYN = common dso_local global i32 0, align 4
@RS_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Use #%d\00", align 1
@HOPCNT_INFINITY = common dso_local global i64 0, align 8
@rts_empty = common dso_local global %struct.rt_spare zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtswitch(%struct.rt_entry* %0, %struct.rt_spare* %1) #0 {
  %3 = alloca %struct.rt_entry*, align 8
  %4 = alloca %struct.rt_spare*, align 8
  %5 = alloca %struct.rt_spare, align 8
  %6 = alloca [10 x i8], align 1
  store %struct.rt_entry* %0, %struct.rt_entry** %3, align 8
  store %struct.rt_spare* %1, %struct.rt_spare** %4, align 8
  %7 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %8 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RS_MHOME, align 4
  %11 = load i32, i32* @RS_STATIC, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RS_RDISC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RS_NET_SYN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RS_IF, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %9, %18
  %20 = icmp ne i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %24 = icmp eq %struct.rt_spare* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %27 = call %struct.rt_spare* @rts_better(%struct.rt_entry* %26)
  store %struct.rt_spare* %27, %struct.rt_spare** %4, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %30 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %31 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %32 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %31, i32 0, i32 1
  %33 = load %struct.rt_spare*, %struct.rt_spare** %32, align 8
  %34 = call i32 @BETTER_LINK(%struct.rt_entry* %29, %struct.rt_spare* %30, %struct.rt_spare* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %78

37:                                               ; preds = %28
  %38 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %39 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %38, i32 0, i32 1
  %40 = load %struct.rt_spare*, %struct.rt_spare** %39, align 8
  %41 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %40, i64 0
  %42 = bitcast %struct.rt_spare* %5 to i8*
  %43 = bitcast %struct.rt_spare* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %45 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %46 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %47 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %46, i32 0, i32 1
  %48 = load %struct.rt_spare*, %struct.rt_spare** %47, align 8
  %49 = ptrtoint %struct.rt_spare* %45 to i64
  %50 = ptrtoint %struct.rt_spare* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %56 = load %struct.rt_entry*, %struct.rt_entry** %3, align 8
  %57 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RS_NET_SYN, align 4
  %60 = load i32, i32* @RS_RDISC, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = and i32 %58, %62
  %64 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %66 = call i32 @rtchange(%struct.rt_entry* %55, i32 %63, %struct.rt_spare* %64, i8* %65)
  %67 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %5, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @HOPCNT_INFINITY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %37
  %72 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %73 = bitcast %struct.rt_spare* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 bitcast (%struct.rt_spare* @rts_empty to i8*), i64 8, i1 false)
  br label %78

74:                                               ; preds = %37
  %75 = load %struct.rt_spare*, %struct.rt_spare** %4, align 8
  %76 = bitcast %struct.rt_spare* %75 to i8*
  %77 = bitcast %struct.rt_spare* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 8, i1 false)
  br label %78

78:                                               ; preds = %21, %36, %74, %71
  ret void
}

declare dso_local %struct.rt_spare* @rts_better(%struct.rt_entry*) #1

declare dso_local i32 @BETTER_LINK(%struct.rt_entry*, %struct.rt_spare*, %struct.rt_spare*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rtchange(%struct.rt_entry*, i32, %struct.rt_spare*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
