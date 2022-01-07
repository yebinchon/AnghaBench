; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_encoder.c_pt_enc_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_config = type { i32 }
%struct.pt_encoder = type { %struct.pt_config }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_config* @pt_enc_get_config(%struct.pt_encoder* %0) #0 {
  %2 = alloca %struct.pt_config*, align 8
  %3 = alloca %struct.pt_encoder*, align 8
  store %struct.pt_encoder* %0, %struct.pt_encoder** %3, align 8
  %4 = load %struct.pt_encoder*, %struct.pt_encoder** %3, align 8
  %5 = icmp ne %struct.pt_encoder* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.pt_config* null, %struct.pt_config** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.pt_encoder*, %struct.pt_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.pt_encoder, %struct.pt_encoder* %8, i32 0, i32 0
  store %struct.pt_config* %9, %struct.pt_config** %2, align 8
  br label %10

10:                                               ; preds = %7, %6
  %11 = load %struct.pt_config*, %struct.pt_config** %2, align 8
  ret %struct.pt_config* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
