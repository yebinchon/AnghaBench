; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_postpone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_insn_decoder.c_pt_insn_postpone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_decoder = type { i32, %struct.pt_insn_ext, %struct.pt_insn }
%struct.pt_insn_ext = type { i32 }
%struct.pt_insn = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pts_event_pending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_decoder*, %struct.pt_insn*, %struct.pt_insn_ext*)* @pt_insn_postpone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_insn_postpone(%struct.pt_insn_decoder* %0, %struct.pt_insn* %1, %struct.pt_insn_ext* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_insn_decoder*, align 8
  %6 = alloca %struct.pt_insn*, align 8
  %7 = alloca %struct.pt_insn_ext*, align 8
  store %struct.pt_insn_decoder* %0, %struct.pt_insn_decoder** %5, align 8
  store %struct.pt_insn* %1, %struct.pt_insn** %6, align 8
  store %struct.pt_insn_ext* %2, %struct.pt_insn_ext** %7, align 8
  %8 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %9 = icmp ne %struct.pt_insn_decoder* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %12 = icmp ne %struct.pt_insn* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %15 = icmp ne %struct.pt_insn_ext* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %10, %3
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %13
  %20 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %21 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %26 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %28 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %27, i32 0, i32 2
  %29 = load %struct.pt_insn*, %struct.pt_insn** %6, align 8
  %30 = bitcast %struct.pt_insn* %28 to i8*
  %31 = bitcast %struct.pt_insn* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %33 = getelementptr inbounds %struct.pt_insn_decoder, %struct.pt_insn_decoder* %32, i32 0, i32 1
  %34 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %7, align 8
  %35 = bitcast %struct.pt_insn_ext* %33 to i8*
  %36 = bitcast %struct.pt_insn_ext* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  br label %37

37:                                               ; preds = %24, %19
  %38 = load %struct.pt_insn_decoder*, %struct.pt_insn_decoder** %5, align 8
  %39 = load i32, i32* @pts_event_pending, align 4
  %40 = call i32 @pt_insn_status(%struct.pt_insn_decoder* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pt_insn_status(%struct.pt_insn_decoder*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
