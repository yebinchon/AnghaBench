; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpdump.c_drsmp_get_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_smpdump.c_drsmp_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.drsmp = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32 }

@IB_SMI_DIRECT_CLASS = common dso_local global i32 0, align 4
@drmad_tid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drsmp_get_init(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drsmp*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @umad_get_mad(i8* %10)
  %12 = inttoptr i64 %11 to %struct.drsmp*
  store %struct.drsmp* %12, %struct.drsmp** %9, align 8
  %13 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %14 = call i32 @memset(%struct.drsmp* %13, i32 0, i32 64)
  %15 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %16 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @IB_SMI_DIRECT_CLASS, align 4
  %18 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %19 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %21 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %23 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = call i64 @htons(i64 %25)
  %27 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %28 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %27, i32 0, i32 9
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %32 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @drmad_tid, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @drmad_tid, align 4
  %35 = call i32 @htonll(i32 %33)
  %36 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %37 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %39 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %38, i32 0, i32 3
  store i32 65535, i32* %39, align 4
  %40 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %41 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %40, i32 0, i32 4
  store i32 65535, i32* %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @umad_set_addr(i8* %42, i32 65535, i32 0, i32 0, i32 0)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %4
  %47 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %48 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @memcpy(i32 %49, i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %46, %4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.drsmp*, %struct.drsmp** %9, align 8
  %63 = getelementptr inbounds %struct.drsmp, %struct.drsmp* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  ret void
}

declare dso_local i64 @umad_get_mad(i8*) #1

declare dso_local i32 @memset(%struct.drsmp*, i32, i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htonll(i32) #1

declare dso_local i32 @umad_set_addr(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
