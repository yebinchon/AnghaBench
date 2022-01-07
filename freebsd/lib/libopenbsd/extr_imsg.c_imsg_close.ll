; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_imsg.c_imsg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsgbuf = type { i32 }
%struct.ibuf = type { i32, i64, i64 }
%struct.imsg_hdr = type { i64, i32 }

@IMSGF_HASFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imsg_close(%struct.imsgbuf* %0, %struct.ibuf* %1) #0 {
  %3 = alloca %struct.imsgbuf*, align 8
  %4 = alloca %struct.ibuf*, align 8
  %5 = alloca %struct.imsg_hdr*, align 8
  store %struct.imsgbuf* %0, %struct.imsgbuf** %3, align 8
  store %struct.ibuf* %1, %struct.ibuf** %4, align 8
  %6 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %7 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.imsg_hdr*
  store %struct.imsg_hdr* %9, %struct.imsg_hdr** %5, align 8
  %10 = load i32, i32* @IMSGF_HASFD, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.imsg_hdr*, %struct.imsg_hdr** %5, align 8
  %13 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %17 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @IMSGF_HASFD, align 4
  %22 = load %struct.imsg_hdr*, %struct.imsg_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %28 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.imsg_hdr*, %struct.imsg_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.imsg_hdr, %struct.imsg_hdr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.imsgbuf*, %struct.imsgbuf** %3, align 8
  %33 = getelementptr inbounds %struct.imsgbuf, %struct.imsgbuf* %32, i32 0, i32 0
  %34 = load %struct.ibuf*, %struct.ibuf** %4, align 8
  %35 = call i32 @ibuf_close(i32* %33, %struct.ibuf* %34)
  ret void
}

declare dso_local i32 @ibuf_close(i32*, %struct.ibuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
