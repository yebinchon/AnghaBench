; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_uds.c_uds_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uds_ctx = type { i64, i32 }

@UDS_CTX_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uds_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uds_descriptor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uds_ctx*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.uds_ctx*
  store %struct.uds_ctx* %5, %struct.uds_ctx** %3, align 8
  %6 = load %struct.uds_ctx*, %struct.uds_ctx** %3, align 8
  %7 = icmp ne %struct.uds_ctx* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load %struct.uds_ctx*, %struct.uds_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UDS_CTX_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.uds_ctx*, %struct.uds_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.uds_ctx, %struct.uds_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  ret i32 %19
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
