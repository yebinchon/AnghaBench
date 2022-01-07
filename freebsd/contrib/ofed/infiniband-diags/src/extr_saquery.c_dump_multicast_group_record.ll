; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_multicast_group_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_saquery.c_dump_multicast_group_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_params = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [212 x i8] c"MCMemberRecord group dump:\0A\09\09MGID....................%s\0A\09\09Mlid....................0x%X\0A\09\09Mtu.....................0x%X\0A\09\09pkey....................0x%X\0A\09\09Rate....................0x%X\0A\09\09SL......................0x%X\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.query_params*)* @dump_multicast_group_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_multicast_group_record(i8* %0, %struct.query_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.query_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.query_params* %1, %struct.query_params** %4, align 8
  %9 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ib_member_get_sl_flow_hop(i32 %17, i32* %8, i32* null, i32* null)
  %19 = load i32, i32* @AF_INET6, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = trunc i64 %10 to i32
  %25 = call i8* @inet_ntop(i32 %19, i32 %23, i8* %12, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_ntoh16(i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_ntoh16(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %29, i32 %32, i32 %36, i32 %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ib_member_get_sl_flow_hop(i32, i32*, i32*, i32*) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i8* @inet_ntop(i32, i32, i8*, i32) #2

declare dso_local i32 @cl_ntoh16(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
