; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_noa_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_build.c_p2p_buf_add_noa_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_noa_desc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, %struct.p2p_noa_desc*)* @p2p_buf_add_noa_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_buf_add_noa_desc(%struct.wpabuf* %0, %struct.p2p_noa_desc* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_noa_desc*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.p2p_noa_desc* %1, %struct.p2p_noa_desc** %4, align 8
  %5 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %4, align 8
  %6 = icmp eq %struct.p2p_noa_desc* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %29

8:                                                ; preds = %2
  %9 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %10 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %4, align 8
  %11 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wpabuf_put_u8(%struct.wpabuf* %9, i32 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %15 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %4, align 8
  %16 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wpabuf_put_le32(%struct.wpabuf* %14, i32 %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %20 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %4, align 8
  %21 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wpabuf_put_le32(%struct.wpabuf* %19, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %25 = load %struct.p2p_noa_desc*, %struct.p2p_noa_desc** %4, align 8
  %26 = getelementptr inbounds %struct.p2p_noa_desc, %struct.p2p_noa_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wpabuf_put_le32(%struct.wpabuf* %24, i32 %27)
  br label %29

29:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le32(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
