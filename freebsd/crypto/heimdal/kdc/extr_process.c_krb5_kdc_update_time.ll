; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_update_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_process.c_krb5_kdc_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@_kdc_now = common dso_local global %struct.timeval zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @krb5_kdc_update_time(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %3 = load %struct.timeval*, %struct.timeval** %2, align 8
  %4 = icmp eq %struct.timeval* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @gettimeofday(%struct.timeval* @_kdc_now, i32* null)
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.timeval*, %struct.timeval** %2, align 8
  %9 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timeval* @_kdc_now to i8*), i8* align 4 %9, i64 4, i1 false)
  br label %10

10:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
