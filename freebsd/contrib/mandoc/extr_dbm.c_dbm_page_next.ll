; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_page_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_res = type { i32, i32 }

@__const.dbm_page_next.res = private unnamed_addr constant %struct.dbm_res { i32 -1, i32 0 }, align 4
@iteration = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dbm_page_next() #0 {
  %1 = alloca %struct.dbm_res, align 4
  %2 = alloca %struct.dbm_res, align 4
  %3 = bitcast %struct.dbm_res* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.dbm_res* @__const.dbm_page_next.res to i8*), i64 8, i1 false)
  %4 = load i32, i32* @iteration, align 4
  switch i32 %4, label %14 [
    i32 128, label %5
    i32 130, label %8
    i32 129, label %11
  ]

5:                                                ; preds = %0
  %6 = bitcast %struct.dbm_res* %1 to i8*
  %7 = bitcast %struct.dbm_res* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 8, i1 false)
  br label %18

8:                                                ; preds = %0
  %9 = call i64 @page_byarch(i32* null)
  %10 = bitcast %struct.dbm_res* %1 to i64*
  store i64 %9, i64* %10, align 4
  br label %18

11:                                               ; preds = %0
  %12 = call i64 @page_bymacro(i32 0, i32* null)
  %13 = bitcast %struct.dbm_res* %1 to i64*
  store i64 %12, i64* %13, align 4
  br label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @iteration, align 4
  %16 = call i64 @page_bytitle(i32 %15, i32* null)
  %17 = bitcast %struct.dbm_res* %1 to i64*
  store i64 %16, i64* %17, align 4
  br label %18

18:                                               ; preds = %14, %11, %8, %5
  %19 = bitcast %struct.dbm_res* %1 to i64*
  %20 = load i64, i64* %19, align 4
  ret i64 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @page_byarch(i32*) #2

declare dso_local i64 @page_bymacro(i32, i32*) #2

declare dso_local i64 @page_bytitle(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
