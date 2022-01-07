; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_pmap_putcache.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_rpc.c_rpc_pmap_putcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap_list = type { i32, i8*, i8*, %struct.in_addr }
%struct.in_addr = type { i32 }

@rpc_pmap_num = common dso_local global i64 0, align 8
@PMAP_NUM = common dso_local global i64 0, align 8
@rpc_pmap_list = common dso_local global %struct.pmap_list* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_pmap_putcache(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmap_list*, align 8
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @rpc_pmap_num, align 8
  %12 = load i64, i64* @PMAP_NUM, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i64, i64* @PMAP_NUM, align 8
  %16 = sub i64 %15, 1
  store i64 %16, i64* @rpc_pmap_num, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.pmap_list*, %struct.pmap_list** @rpc_pmap_list, align 8
  %19 = load i64, i64* @rpc_pmap_num, align 8
  %20 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %18, i64 %19
  store %struct.pmap_list* %20, %struct.pmap_list** %9, align 8
  %21 = load i64, i64* @rpc_pmap_num, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* @rpc_pmap_num, align 8
  %23 = load %struct.pmap_list*, %struct.pmap_list** %9, align 8
  %24 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %23, i32 0, i32 3
  %25 = bitcast %struct.in_addr* %24 to i8*
  %26 = bitcast %struct.in_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.pmap_list*, %struct.pmap_list** %9, align 8
  %29 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.pmap_list*, %struct.pmap_list** %9, align 8
  %32 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.pmap_list*, %struct.pmap_list** %9, align 8
  %35 = getelementptr inbounds %struct.pmap_list, %struct.pmap_list* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
