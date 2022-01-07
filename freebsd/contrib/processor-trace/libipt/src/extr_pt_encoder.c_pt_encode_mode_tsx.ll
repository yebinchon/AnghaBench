; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encode_mode_tsx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_encode_mode_tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_encoder = type { i32 }
%struct.pt_packet = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@ppt_mode = common dso_local global i32 0, align 4
@pt_mol_tsx = common dso_local global i32 0, align 4
@pt_mob_tsx_intx = common dso_local global i32 0, align 4
@pt_mob_tsx_abrt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_encode_mode_tsx(%struct.pt_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_packet, align 4
  store %struct.pt_encoder* %0, %struct.pt_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ppt_mode, align 4
  %7 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @pt_mol_tsx, align 4
  %9 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @pt_mob_tsx_intx, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @pt_mob_tsx_abrt, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %45

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.pt_packet, %struct.pt_packet* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.pt_encoder*, %struct.pt_encoder** %3, align 8
  %47 = call i32 @pt_enc_next(%struct.pt_encoder* %46, %struct.pt_packet* %5)
  ret i32 %47
}

declare dso_local i32 @pt_enc_next(%struct.pt_encoder*, %struct.pt_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
